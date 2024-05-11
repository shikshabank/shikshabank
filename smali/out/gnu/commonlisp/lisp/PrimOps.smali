.class public Lgnu/commonlisp/lisp/PrimOps;
.super Lgnu/expr/ModuleBody;
.source "PrimOps.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrimOps.scm\nScheme\n*S Scheme\n*F\n+ 1 PrimOps.scm\n/u2/home/jis/ai2-kawa/gnu/commonlisp/lisp/PrimOps.scm\n*L\n5#1,155:5\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/commonlisp/lisp/PrimOps;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

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

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final apply:Lgnu/expr/ModuleMethod;

.field public static final aref:Lgnu/expr/ModuleMethod;

.field public static final arrayp:Lgnu/expr/ModuleMethod;

.field public static final aset:Lgnu/expr/ModuleMethod;

.field public static final boundp:Lgnu/expr/ModuleMethod;

.field public static final car:Lgnu/expr/ModuleMethod;

.field public static final cdr:Lgnu/expr/ModuleMethod;

.field public static final char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final fillarray:Lgnu/expr/ModuleMethod;

.field public static final fset:Lgnu/expr/ModuleMethod;

.field public static final functionp:Lgnu/expr/ModuleMethod;

.field public static final get:Lgnu/expr/ModuleMethod;

.field public static final length:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnget:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnmember:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnput:Lgnu/expr/ModuleMethod;

.field public static final plist$Mnremprop:Lgnu/expr/ModuleMethod;

.field public static final put:Lgnu/expr/ModuleMethod;

.field public static final set:Lgnu/expr/ModuleMethod;

.field public static final setcar:Lgnu/expr/ModuleMethod;

.field public static final setcdr:Lgnu/expr/ModuleMethod;

.field public static final setplist:Lgnu/expr/ModuleMethod;

.field public static final stringp:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnplist:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnvalue:Lgnu/expr/ModuleMethod;

.field public static final symbolp:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 34

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "functionp"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "char-to-string"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "substring"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "make-string"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "stringp"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/commonlisp/lisp/PrimOps;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "fillarray"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "aset"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/commonlisp/lisp/PrimOps;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "aref"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/commonlisp/lisp/PrimOps;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "arrayp"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/commonlisp/lisp/PrimOps;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "length"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/commonlisp/lisp/PrimOps;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "apply"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/commonlisp/lisp/PrimOps;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "fset"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/commonlisp/lisp/PrimOps;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "symbol-function"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/commonlisp/lisp/PrimOps;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "set"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/commonlisp/lisp/PrimOps;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "symbol-value"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/commonlisp/lisp/PrimOps;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "put"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "get"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "plist-member"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/commonlisp/lisp/PrimOps;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "plist-remprop"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/commonlisp/lisp/PrimOps;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v4

    const-string v4, "plist-put"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/commonlisp/lisp/PrimOps;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v5

    const-string v5, "plist-get"

    invoke-direct {v15, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/commonlisp/lisp/PrimOps;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    const-string v6, "setplist"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/commonlisp/lisp/PrimOps;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v23, v7

    const-string v7, "symbol-plist"

    invoke-direct {v15, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/commonlisp/lisp/PrimOps;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v8

    const-string v8, "symbol-name"

    invoke-direct {v15, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/commonlisp/lisp/PrimOps;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v25, v9

    const-string v9, "symbolp"

    invoke-direct {v15, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/commonlisp/lisp/PrimOps;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v10

    const-string v10, "boundp"

    invoke-direct {v15, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/commonlisp/lisp/PrimOps;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v27, v11

    const-string v11, "setcdr"

    invoke-direct {v15, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/commonlisp/lisp/PrimOps;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v28, v12

    const-string v12, "setcar"

    invoke-direct {v15, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/commonlisp/lisp/PrimOps;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v29, v13

    const-string v13, "cdr"

    invoke-direct {v15, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/commonlisp/lisp/PrimOps;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v30, v14

    const-string v14, "car"

    invoke-direct {v15, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/commonlisp/lisp/PrimOps;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x0

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    sput-object v15, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v31, v0

    const-string v0, "t"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/commonlisp/lisp/PrimOps;

    invoke-direct {v0}, Lgnu/commonlisp/lisp/PrimOps;-><init>()V

    sput-object v0, Lgnu/commonlisp/lisp/PrimOps;->$instance:Lgnu/commonlisp/lisp/PrimOps;

    new-instance v15, Lgnu/expr/ModuleMethod;

    move-object/from16 v32, v1

    const/4 v1, 0x1

    move-object/from16 v33, v2

    const/16 v2, 0x1001

    invoke-direct {v15, v0, v1, v14, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v15, Lgnu/commonlisp/lisp/PrimOps;->car:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v14, 0x2

    invoke-direct {v1, v0, v14, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->cdr:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v13, 0x3

    const/16 v14, 0x2002

    invoke-direct {v1, v0, v13, v12, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->setcar:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v12, 0x4

    invoke-direct {v1, v0, v12, v11, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->setcdr:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v11, 0x5

    invoke-direct {v1, v0, v11, v10, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->boundp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v10, 0x6

    invoke-direct {v1, v0, v10, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbolp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x7

    invoke-direct {v1, v0, v9, v8, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v8, 0x8

    invoke-direct {v1, v0, v8, v7, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnplist:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v7, 0x9

    invoke-direct {v1, v0, v7, v6, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->setplist:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v6, 0xa

    const/16 v7, 0x3002

    invoke-direct {v1, v0, v6, v5, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnget:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xc

    const/16 v6, 0x3003

    invoke-direct {v1, v0, v5, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnput:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xd

    invoke-direct {v1, v0, v4, v3, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnremprop:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xe

    move-object/from16 v4, v33

    invoke-direct {v1, v0, v3, v4, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->plist$Mnmember:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xf

    move-object/from16 v4, v32

    invoke-direct {v1, v0, v3, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->get:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x11

    move-object/from16 v4, v31

    invoke-direct {v1, v0, v3, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->put:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x12

    move-object/from16 v4, v30

    invoke-direct {v1, v0, v3, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnvalue:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x13

    move-object/from16 v13, v29

    invoke-direct {v1, v0, v3, v13, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->set:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x14

    move-object/from16 v12, v28

    invoke-direct {v1, v0, v3, v12, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->symbol$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x15

    move-object/from16 v11, v27

    invoke-direct {v1, v0, v3, v11, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->fset:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x16

    const/16 v4, -0xfff

    move-object/from16 v10, v26

    invoke-direct {v1, v0, v3, v10, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x17

    move-object/from16 v9, v25

    invoke-direct {v1, v0, v3, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->length:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x18

    move-object/from16 v8, v24

    invoke-direct {v1, v0, v3, v8, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->arrayp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x19

    move-object/from16 v4, v23

    invoke-direct {v1, v0, v3, v4, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->aref:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1a

    move-object/from16 v4, v22

    invoke-direct {v1, v0, v3, v4, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->aset:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1b

    move-object/from16 v5, v21

    invoke-direct {v1, v0, v3, v5, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->fillarray:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1c

    move-object/from16 v4, v20

    invoke-direct {v1, v0, v3, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->stringp:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1d

    move-object/from16 v4, v19

    invoke-direct {v1, v0, v3, v4, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x1e

    move-object/from16 v4, v18

    invoke-direct {v1, v0, v3, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->substring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x20

    move-object/from16 v4, v17

    invoke-direct {v1, v0, v3, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->char$Mnto$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x21

    move-object/from16 v4, v16

    invoke-direct {v1, v0, v3, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/commonlisp/lisp/PrimOps;->functionp:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "func"    # Ljava/lang/Object;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 110
    nop

    .line 111
    invoke-static {p0}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 112
    invoke-static {p0}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_11

    :cond_e
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Procedure;

    :goto_11
    const/4 v1, 0x0

    sget-object v2, Lgnu/commonlisp/lisp/PrimOps;->apply:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v1, v2}, Lgnu/kawa/functions/Apply;->getArguments([Ljava/lang/Object;ILgnu/mapping/Procedure;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;
    .registers 3
    .param p0, "array"    # Lgnu/lists/SimpleVector;
    .param p1, "k"    # I

    .line 123
    nop

    .line 126
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static arrayp(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 120
    nop

    .line 121
    instance-of v0, p0, Lgnu/lists/SimpleVector;

    return v0
.end method

.method public static aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "array"    # Lgnu/lists/SimpleVector;
    .param p1, "k"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 128
    nop

    .line 131
    invoke-virtual {p0, p1, p2}, Lgnu/lists/SimpleVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-object p2
.end method

.method public static boundp(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 19
    nop

    .line 20
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->isBound(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static car(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 5
    nop

    .line 6
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_7

    move-object v0, p0

    goto :goto_e

    :cond_7
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public static cdr(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 8
    nop

    .line 9
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p0, v0, :cond_7

    move-object v0, p0

    goto :goto_e

    :cond_7
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public static charToString(Ljava/lang/Object;)Lgnu/lists/FString;
    .registers 4
    .param p0, "ch"    # Ljava/lang/Object;

    .line 155
    nop

    .line 156
    new-instance v0, Lgnu/lists/FString;

    invoke-static {p0}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0
.end method

.method public static fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "array"    # Lgnu/lists/SimpleVector;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 134
    nop

    .line 135
    invoke-virtual {p0, p1}, Lgnu/lists/SimpleVector;->fill(Ljava/lang/Object;)V

    .line 136
    return-object p1
.end method

.method public static fset(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .line 105
    nop

    .line 106
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lgnu/commonlisp/lang/Symbols;->setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static functionp(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 158
    nop

    .line 159
    instance-of v0, p0, Lgnu/mapping/Procedure;

    return v0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "symbol"    # Lgnu/mapping/Symbol;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 62
    nop

    .line 63
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->getProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static length(Lgnu/lists/Sequence;)I
    .registers 2
    .param p0, "x"    # Lgnu/lists/Sequence;

    .line 117
    nop

    .line 118
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    return v0
.end method

.method public static makeString(ILjava/lang/Object;)Lgnu/lists/FString;
    .registers 4
    .param p0, "count"    # I
    .param p1, "ch"    # Ljava/lang/Object;

    .line 143
    nop

    .line 144
    new-instance v0, Lgnu/lists/FString;

    invoke-static {p1}, Lgnu/commonlisp/lang/CommonLisp;->asChar(Ljava/lang/Object;)C

    move-result v1

    invoke-direct {v0, p0, v1}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 47
    nop

    .line 48
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;

    .line 56
    nop

    .line 57
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-static {p0, p1, v0}, Lgnu/mapping/PropertyLocation;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_e

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    goto :goto_10

    :cond_e
    sget-object v0, Lgnu/commonlisp/lisp/PrimOps;->Lit0:Lgnu/mapping/SimpleSymbol;

    :goto_10
    return-object v0
.end method

.method public static plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 50
    nop

    .line 51
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "plist"    # Ljava/lang/Object;
    .param p1, "prop"    # Ljava/lang/Object;

    .line 53
    nop

    .line 54
    invoke-static {p0, p1}, Lgnu/mapping/PropertyLocation;->plistRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 65
    nop

    .line 66
    invoke-static {p0, p1, p2}, Lgnu/mapping/PropertyLocation;->putProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .line 80
    nop

    .line 81
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .registers 2
    .param p0, "p"    # Lgnu/lists/Pair;
    .param p1, "x"    # Ljava/lang/Object;

    .line 11
    nop

    .line 12
    invoke-static {p0, p1}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V
    .registers 2
    .param p0, "p"    # Lgnu/lists/Pair;
    .param p1, "x"    # Ljava/lang/Object;

    .line 14
    nop

    .line 15
    invoke-static {p0, p1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    return-void
.end method

.method public static setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "symbol"    # Ljava/lang/Object;
    .param p1, "plist"    # Ljava/lang/Object;

    .line 43
    nop

    .line 44
    invoke-static {p0, p1}, Lgnu/mapping/PropertyLocation;->setPropertyList(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    return-object p1
.end method

.method public static stringp(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 140
    nop

    .line 141
    instance-of v0, p0, Ljava/lang/CharSequence;

    return v0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;
    .registers 3

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, p1, v0}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p0

    return-object p0
.end method

.method public static substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;
    .registers 6
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "from"    # Ljava/lang/Object;
    .param p2, "to"    # Ljava/lang/Object;

    .line 146
    nop

    .line 147
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p2, v0, :cond_d

    .line 148
    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_d
    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 149
    sget-object v1, Lgnu/commonlisp/lisp/PrimOps;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v2, :cond_27

    .line 150
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_27
    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 151
    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3f

    .line 152
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 153
    :cond_3f
    new-instance v0, Lgnu/lists/FString;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 97
    nop

    .line 98
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 27
    nop

    .line 28
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getPrintName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "symbol"    # Ljava/lang/Object;

    .line 40
    nop

    .line 41
    invoke-static {p0}, Lgnu/mapping/PropertyLocation;->getPropertyList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "sym"    # Ljava/lang/Object;

    .line 73
    nop

    .line 74
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static symbolp(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 24
    nop

    .line 25
    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->isSymbol(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_7e

    .line 158
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->functionp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_15

    :cond_13
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_15
    return-object p1

    .line 155
    :sswitch_16
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->charToString(Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    .line 140
    :sswitch_1b
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->stringp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_26

    :cond_24
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_26
    return-object p1

    .line 120
    :sswitch_27
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->arrayp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_32

    :cond_30
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_32
    return-object p1

    .line 117
    :sswitch_33
    :try_start_33
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_35} :catch_3e

    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->length(Lgnu/lists/Sequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_3e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "length"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 97
    :sswitch_48
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolFunction(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 73
    :sswitch_4d
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :sswitch_52
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolPlist(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :sswitch_57
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolName(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :sswitch_5c
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->symbolp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_67

    :cond_65
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_67
    return-object p1

    .line 19
    :sswitch_68
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->boundp(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    sget-object p1, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    goto :goto_73

    :cond_71
    sget-object p1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_73
    return-object p1

    .line 8
    :sswitch_74
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->cdr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :sswitch_79
    invoke-static {p2}, Lgnu/commonlisp/lisp/PrimOps;->car(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_79
        0x2 -> :sswitch_74
        0x5 -> :sswitch_68
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_57
        0x8 -> :sswitch_52
        0x12 -> :sswitch_4d
        0x14 -> :sswitch_48
        0x17 -> :sswitch_33
        0x18 -> :sswitch_27
        0x1c -> :sswitch_1b
        0x20 -> :sswitch_16
        0x21 -> :sswitch_a
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "aref"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_b2

    .line 146
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_d
    :try_start_d
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_14

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_14
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "substring"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 143
    :sswitch_1d
    :try_start_1d
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_24} :catch_29

    invoke-static {p1, p3}, Lgnu/commonlisp/lisp/PrimOps;->makeString(ILjava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_29
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 134
    :sswitch_32
    :try_start_32
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_34
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_34} :catch_39

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->fillarray(Lgnu/lists/SimpleVector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_39
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "fillarray"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 123
    :sswitch_42
    :try_start_42
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_42 .. :try_end_44} :catch_58

    :try_start_44
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_4b} :catch_50

    invoke-static {p2, p1}, Lgnu/commonlisp/lisp/PrimOps;->aref(Lgnu/lists/SimpleVector;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 125
    :catch_50
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 124
    :catch_58
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 105
    :sswitch_5f
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->fset(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 80
    :sswitch_65
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 62
    :sswitch_6b
    :try_start_6b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_6d
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_6d} :catch_72

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_72
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "get"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 56
    :sswitch_7b
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistMember(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :sswitch_80
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistRemprop(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :sswitch_85
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :sswitch_8a
    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setplist(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14
    :sswitch_8f
    :try_start_8f
    check-cast p2, Lgnu/lists/Pair;
    :try_end_91
    .catch Ljava/lang/ClassCastException; {:try_start_8f .. :try_end_91} :catch_97

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setcdr(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_97
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "setcdr"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 11
    :sswitch_a0
    :try_start_a0
    check-cast p2, Lgnu/lists/Pair;
    :try_end_a2
    .catch Ljava/lang/ClassCastException; {:try_start_a0 .. :try_end_a2} :catch_a8

    invoke-static {p2, p3}, Lgnu/commonlisp/lisp/PrimOps;->setcar(Lgnu/lists/Pair;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_a8
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "setcar"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_b2
    .sparse-switch
        0x3 -> :sswitch_a0
        0x4 -> :sswitch_8f
        0x9 -> :sswitch_8a
        0xa -> :sswitch_85
        0xd -> :sswitch_80
        0xe -> :sswitch_7b
        0xf -> :sswitch_6b
        0x13 -> :sswitch_65
        0x15 -> :sswitch_5f
        0x19 -> :sswitch_42
        0x1b -> :sswitch_32
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_d
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "aset"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_5a

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_d
    :try_start_d
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_14

    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->substring(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_14
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "substring"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 128
    :sswitch_1d
    :try_start_1d
    check-cast p2, Lgnu/lists/SimpleVector;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1f} :catch_33

    :try_start_1f
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_26} :catch_2b

    invoke-static {p2, p1, p4}, Lgnu/commonlisp/lisp/PrimOps;->aset(Lgnu/lists/SimpleVector;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 129
    :catch_2b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 128
    :catch_33
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 65
    :sswitch_3a
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 62
    :sswitch_40
    :try_start_40
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_40 .. :try_end_42} :catch_47

    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->get(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_47
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "get"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 50
    :sswitch_50
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->plistPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 47
    :sswitch_55
    invoke-static {p2, p3, p4}, Lgnu/commonlisp/lisp/PrimOps;->plistGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_5a
    .sparse-switch
        0xa -> :sswitch_55
        0xc -> :sswitch_50
        0xf -> :sswitch_40
        0x11 -> :sswitch_3a
        0x1a -> :sswitch_1d
        0x1e -> :sswitch_d
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1e

    .line 110
    const/4 p1, 0x0

    aget-object v0, p2, p1

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    new-array v1, p1, [Ljava/lang/Object;

    :goto_e
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_17

    invoke-static {v0, v1}, Lgnu/commonlisp/lisp/PrimOps;->apply(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_17
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_e

    :cond_1e
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_70

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 158
    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 155
    :sswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 140
    :sswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 120
    :sswitch_21
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 117
    :sswitch_28
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_30

    const p1, -0xbffff

    return p1

    :cond_30
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 97
    :sswitch_37
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 73
    :sswitch_3e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 40
    :sswitch_45
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 27
    :sswitch_4c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 24
    :sswitch_53
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 19
    :sswitch_5a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 8
    :sswitch_61
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 5
    :sswitch_68
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_68
        0x2 -> :sswitch_61
        0x5 -> :sswitch_5a
        0x6 -> :sswitch_53
        0x7 -> :sswitch_4c
        0x8 -> :sswitch_45
        0x12 -> :sswitch_3e
        0x14 -> :sswitch_37
        0x17 -> :sswitch_28
        0x18 -> :sswitch_21
        0x1c -> :sswitch_1a
        0x20 -> :sswitch_13
        0x21 -> :sswitch_c
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_a2

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 146
    :sswitch_f
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1c

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1c
    return v1

    .line 143
    :sswitch_1d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 134
    :sswitch_26
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_2b

    return v1

    :cond_2b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 123
    :sswitch_34
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_39

    return v1

    :cond_39
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 105
    :sswitch_42
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 80
    :sswitch_4b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 62
    :sswitch_54
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_59

    return v1

    :cond_59
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 56
    :sswitch_62
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 53
    :sswitch_6b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 47
    :sswitch_74
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 43
    :sswitch_7d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 14
    :sswitch_86
    instance-of v0, p2, Lgnu/lists/Pair;

    if-nez v0, :cond_8b

    return v1

    :cond_8b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 11
    :sswitch_94
    instance-of v0, p2, Lgnu/lists/Pair;

    if-nez v0, :cond_99

    return v1

    :cond_99
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_a2
    .sparse-switch
        0x3 -> :sswitch_94
        0x4 -> :sswitch_86
        0x9 -> :sswitch_7d
        0xa -> :sswitch_74
        0xd -> :sswitch_6b
        0xe -> :sswitch_62
        0xf -> :sswitch_54
        0x13 -> :sswitch_4b
        0x15 -> :sswitch_42
        0x19 -> :sswitch_34
        0x1b -> :sswitch_26
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x3

    sparse-switch v0, :sswitch_data_60

    .line 47
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 146
    :sswitch_f
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1e
    return v1

    .line 128
    :sswitch_1f
    instance-of v0, p2, Lgnu/lists/SimpleVector;

    if-nez v0, :cond_24

    return v1

    :cond_24
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 65
    :sswitch_2f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 62
    :sswitch_3a
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3f

    return v1

    :cond_3f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 50
    :sswitch_4a
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 47
    :sswitch_55
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_60
    .sparse-switch
        0xa -> :sswitch_55
        0xc -> :sswitch_4a
        0xf -> :sswitch_3a
        0x11 -> :sswitch_2f
        0x1a -> :sswitch_1f
        0x1e -> :sswitch_f
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_f

    .line 110
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x5

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 5
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 8
    nop

    .line 11
    nop

    .line 14
    nop

    .line 19
    nop

    .line 24
    nop

    .line 27
    nop

    .line 40
    nop

    .line 43
    nop

    .line 47
    nop

    .line 50
    nop

    .line 53
    nop

    .line 56
    nop

    .line 62
    nop

    .line 65
    nop

    .line 73
    nop

    .line 80
    nop

    .line 97
    nop

    .line 105
    nop

    .line 110
    nop

    .line 117
    nop

    .line 120
    nop

    .line 123
    nop

    .line 128
    nop

    .line 134
    nop

    .line 140
    nop

    .line 143
    nop

    .line 146
    nop

    .line 155
    nop

    .line 158
    return-void
.end method

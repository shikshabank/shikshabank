.class public Lkawa/lib/misc;
.super Lgnu/expr/ModuleBody;
.source "misc.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nmisc.scm\nScheme\n*S Scheme\n*F\n+ 1 misc.scm\n/u2/home/jis/ai2-kawa/kawa/lib/misc.scm\n*L\n1#1,132:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/misc;

.field static final Lit0:Lgnu/math/IntNum;

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

.field static final Lit2:Lgnu/expr/Keyword;

.field static final Lit20:Lgnu/mapping/SimpleSymbol;

.field static final Lit21:Lgnu/mapping/SimpleSymbol;

.field static final Lit22:Lgnu/mapping/SimpleSymbol;

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final add$Mnprocedure$Mnproperties:Lgnu/expr/ModuleMethod;

.field public static final base$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final boolean$Qu:Lgnu/expr/ModuleMethod;

.field public static final dynamic$Mnwind:Lgnu/expr/ModuleMethod;

.field public static final environment$Mnbound$Qu:Lgnu/expr/ModuleMethod;

.field public static final error:Lgnu/expr/ModuleMethod;

.field public static final force:Lgnu/expr/ModuleMethod;

.field public static final gentemp:Lgnu/expr/ModuleMethod;

.field public static final interaction$Mnenvironment:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field public static final namespace$Mnprefix:Lgnu/expr/ModuleMethod;

.field public static final namespace$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final null$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public static final procedure$Mnproperty:Lgnu/expr/GenericProc;

.field static final procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

.field public static final procedure$Qu:Lgnu/expr/ModuleMethod;

.field public static final scheme$Mnimplementation$Mnversion:Lgnu/expr/ModuleMethod;

.field public static final scheme$Mnreport$Mnenvironment:Lgnu/expr/ModuleMethod;

.field public static final set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grsymbol:Lgnu/expr/ModuleMethod;

.field public static final symbol$Eq$Qu:Lgnu/expr/GenericProc;

.field public static final symbol$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnlocal$Mnname:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnnamespace:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnnamespace$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnprefix:Lgnu/expr/ModuleMethod;

.field public static final symbol$Qu:Lgnu/expr/ModuleMethod;

.field public static final values:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 30

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "add-procedure-properties"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "gentemp"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "base-uri"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/misc;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "error"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/misc;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "force"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/misc;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "dynamic-wind"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/misc;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "procedure-property"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/misc;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "set-procedure-property!"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/misc;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "scheme-implementation-version"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/misc;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "interaction-environment"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/misc;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "scheme-report-environment"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/misc;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "null-environment"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/misc;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "environment-bound?"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/misc;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "values"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/misc;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "procedure?"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/misc;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "string->symbol"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/misc;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "namespace-prefix"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/misc;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "namespace-uri"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/misc;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "symbol-prefix"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/misc;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v4

    const-string v4, "symbol-namespace-uri"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/misc;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v5

    const-string v5, "symbol-namespace"

    invoke-direct {v15, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/misc;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    const-string v6, "symbol-local-name"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/misc;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v23, v7

    const-string v7, "symbol->string"

    invoke-direct {v15, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/misc;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v8

    const-string v8, "symbol?"

    invoke-direct {v15, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/misc;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v25, v9

    const-string v9, "boolean?"

    invoke-direct {v15, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/misc;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v10

    const-string v10, "misc-error"

    invoke-direct {v15, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/misc;->Lit3:Lgnu/mapping/SimpleSymbol;

    const-string v10, "setter"

    invoke-static {v10}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v10

    sput-object v10, Lkawa/lib/misc;->Lit2:Lgnu/expr/Keyword;

    const/4 v10, 0x5

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    sput-object v15, Lkawa/lib/misc;->Lit1:Lgnu/math/IntNum;

    const/4 v15, 0x4

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v27

    sput-object v27, Lkawa/lib/misc;->Lit0:Lgnu/math/IntNum;

    new-instance v10, Lkawa/lib/misc;

    invoke-direct {v10}, Lkawa/lib/misc;-><init>()V

    sput-object v10, Lkawa/lib/misc;->$instance:Lkawa/lib/misc;

    new-instance v15, Lgnu/expr/ModuleMethod;

    move-object/from16 v28, v11

    const/4 v11, 0x3

    move-object/from16 v29, v12

    const/16 v12, 0x1001

    invoke-direct {v15, v10, v11, v9, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v15, Lkawa/lib/misc;->boolean$Qu:Lgnu/expr/ModuleMethod;

    new-instance v9, Lgnu/expr/ModuleMethod;

    const/4 v11, 0x4

    invoke-direct {v9, v10, v11, v8, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v9, Lkawa/lib/misc;->symbol$Qu:Lgnu/expr/ModuleMethod;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x5

    invoke-direct {v8, v10, v9, v7, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lkawa/lib/misc;->symbol$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/16 v11, 0x2002

    invoke-direct {v7, v10, v8, v9, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v8, "source-location"

    const-string v15, "/u2/home/jis/ai2-kawa/kawa/lib/misc.scm:25"

    invoke-virtual {v7, v8, v15}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v7, Lkawa/lib/misc;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v15, 0x7

    const/16 v11, -0xffe

    invoke-direct {v7, v10, v15, v9, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v9, "/u2/home/jis/ai2-kawa/kawa/lib/misc.scm:27"

    invoke-virtual {v7, v8, v9}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v7, Lkawa/lib/misc;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/16 v8, 0x8

    invoke-direct {v7, v10, v8, v6, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/misc;->symbol$Mnlocal$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/16 v7, 0x9

    invoke-direct {v6, v10, v7, v5, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/misc;->symbol$Mnnamespace:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/16 v6, 0xa

    invoke-direct {v5, v10, v6, v4, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/misc;->symbol$Mnnamespace$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v5, 0xb

    invoke-direct {v4, v10, v5, v3, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/misc;->symbol$Mnprefix:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xc

    invoke-direct {v3, v10, v4, v2, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/misc;->namespace$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xd

    invoke-direct {v2, v10, v3, v1, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/misc;->namespace$Mnprefix:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    invoke-direct {v1, v10, v2, v0, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/misc;->string$Mn$Grsymbol:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    invoke-direct {v0, v10, v1, v14, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->procedure$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    const/16 v2, -0x1000

    invoke-direct {v0, v10, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->values:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    move-object/from16 v2, v29

    const/16 v3, 0x2002

    invoke-direct {v0, v10, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->environment$Mnbound$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    const/16 v2, 0x1000

    move-object/from16 v11, v28

    invoke-direct {v0, v10, v1, v11, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->null$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    move-object/from16 v3, v26

    invoke-direct {v0, v10, v1, v3, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->scheme$Mnreport$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    const/4 v3, 0x0

    move-object/from16 v9, v25

    invoke-direct {v0, v10, v1, v9, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->interaction$Mnenvironment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    move-object/from16 v8, v24

    invoke-direct {v0, v10, v1, v8, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->scheme$Mnimplementation$Mnversion:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    const/16 v4, 0x3003

    move-object/from16 v7, v23

    invoke-direct {v0, v10, v1, v7, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x18

    const/16 v5, 0x3002

    move-object/from16 v6, v22

    invoke-direct {v0, v10, v1, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1a

    move-object/from16 v5, v21

    invoke-direct {v0, v10, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->dynamic$Mnwind:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1b

    move-object/from16 v4, v20

    invoke-direct {v0, v10, v1, v4, v12}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->force:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1c

    const/16 v4, -0xfff

    move-object/from16 v5, v19

    invoke-direct {v0, v10, v1, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->error:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1d

    move-object/from16 v5, v18

    invoke-direct {v0, v10, v1, v5, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->base$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1f

    move-object/from16 v2, v17

    invoke-direct {v0, v10, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->gentemp:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x20

    move-object/from16 v2, v16

    invoke-direct {v0, v10, v1, v2, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/misc;->add$Mnprocedure$Mnproperties:Lgnu/expr/ModuleMethod;

    invoke-virtual {v10}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs addProcedureProperties(Lgnu/expr/GenericProc;[Ljava/lang/Object;)V
    .registers 2
    .param p0, "proc"    # Lgnu/expr/GenericProc;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 129
    nop

    .line 132
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    return-void
.end method

.method public static baseUri()Ljava/lang/Object;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkawa/lib/misc;->baseUri(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static baseUri(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    if-nez p0, :cond_9

    .line 113
    invoke-static {}, Lgnu/text/Path;->currentPath()Lgnu/text/Path;

    move-result-object v1

    .local v0, "uri":Lgnu/text/Path;
    goto :goto_10

    .line 114
    .end local v0    # "uri":Lgnu/text/Path;
    :cond_9
    move-object v1, p0

    check-cast v1, Lgnu/kawa/xml/KNode;

    invoke-virtual {v1}, Lgnu/kawa/xml/KNode;->baseURI()Lgnu/text/Path;

    move-result-object v1

    .restart local v0    # "uri":Lgnu/text/Path;
    :goto_10
    move-object v0, v1

    .line 115
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v0, v1, :cond_18

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "uri":Lgnu/text/Path;
    :cond_18
    return-object v0
.end method

.method public static dynamicWind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "before"    # Ljava/lang/Object;
    .param p1, "thunk"    # Ljava/lang/Object;
    .param p2, "after"    # Ljava/lang/Object;

    .line 92
    nop

    .line 93
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :try_start_6
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_12

    .line 96
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-object v0

    :catchall_12
    move-exception v0

    .line 96
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    throw v0
.end method

.method public static error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 103
    .local v0, "args":Lgnu/lists/LList;
    new-instance v1, Lkawa/lib/misc$frame;

    invoke-direct {v1}, Lkawa/lib/misc$frame;-><init>()V

    iput-object p0, v1, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 104
    iget-object v2, v1, Lkawa/lib/misc$frame;->lambda$Fn4:Lgnu/expr/ModuleMethod;

    invoke-static {v2}, Lkawa/lib/ports;->callWithOutputString(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    .line 105
    nop

    .line 108
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .local v2, "result":Ljava/lang/Object;
    move-object v3, v0

    .local v3, "arg0":Ljava/lang/Object;
    const/4 v4, 0x0

    :goto_1a
    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v3, v5, :cond_2f

    .line 107
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "arg0":Ljava/lang/Object;
    invoke-static {v2}, Lgnu/lists/LList;->reverseInPlace(Ljava/lang/Object;)Lgnu/lists/LList;

    move-result-object v0

    .line 109
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v3, Lkawa/standard/throw_name;->throwName:Lkawa/standard/throw_name;

    sget-object v4, Lkawa/lib/misc;->Lit3:Lgnu/mapping/SimpleSymbol;

    iget-object v1, v1, Lkawa/lib/misc$frame;->msg:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v1, v0}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 108
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "arg0":Ljava/lang/Object;
    :cond_2f
    :try_start_2f
    move-object v5, v3

    check-cast v5, Lgnu/lists/Pair;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_32} :catch_4f

    .local v4, "arg0":Lgnu/lists/Pair;
    move-object v4, v5

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    .line 106
    nop

    .local v6, "arg":Ljava/lang/Object;
    new-instance v7, Lkawa/lib/misc$frame0;

    invoke-direct {v7}, Lkawa/lib/misc$frame0;-><init>()V

    iput-object v6, v7, Lkawa/lib/misc$frame0;->arg:Ljava/lang/Object;

    .line 107
    iget-object v7, v7, Lkawa/lib/misc$frame0;->lambda$Fn5:Lgnu/expr/ModuleMethod;

    invoke-static {v7}, Lkawa/lib/ports;->callWithOutputString(Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "arg":Ljava/lang/Object;
    invoke-static {v6, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    move-object v3, v5

    goto :goto_1a

    .line 109
    .end local v0    # "args":Lgnu/lists/LList;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "arg0":Ljava/lang/Object;
    .end local v4    # "arg0":Lgnu/lists/Pair;
    .end local p0    # "msg":Ljava/lang/Object;
    .end local p1    # "argsArray":[Ljava/lang/Object;
    :catch_4f
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v0, -0x2

    const-string v1, "arg0"

    invoke-direct {p1, p0, v1, v0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_5a

    :goto_59
    throw p1

    :goto_5a
    goto :goto_59
.end method

.method public static force(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 98
    nop

    .line 99
    invoke-static {p0}, Lkawa/lang/Promise;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static gentemp()Lgnu/mapping/Symbol;
    .registers 1

    .line 126
    nop

    .line 127
    invoke-static {}, Lgnu/expr/Symbols;->gentemp()Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static interactionEnvironment()Lgnu/mapping/Environment;
    .registers 1

    .line 76
    nop

    .line 77
    invoke-static {}, Lgnu/mapping/Environment;->user()Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static isBoolean(Ljava/lang/Object;)Z
    .registers 5
    .param p0, "x"    # Ljava/lang/Object;

    .line 15
    nop

    .line 16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_a

    move v0, v2

    const/4 v3, 0x1

    goto :goto_c

    :cond_a
    move v0, v2

    const/4 v3, 0x0

    .local v0, "x":Z
    :goto_c
    move v0, v3

    if-eqz v0, :cond_11

    move v1, v0

    goto :goto_17

    :cond_11
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v3, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .end local v0    # "x":Z
    :goto_17
    return v1
.end method

.method public static isEnvironmentBound(Lgnu/mapping/Environment;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "sym"    # Ljava/lang/Object;

    .line 59
    nop

    .line 61
    invoke-static {p1}, Lgnu/kawa/lispexpr/LispLanguage;->langSymbolToSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method public static isProcedure(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x"    # Ljava/lang/Object;

    .line 52
    nop

    .line 53
    instance-of v0, p0, Lgnu/mapping/Procedure;

    const/4 v1, 0x0

    .local v0, "x":Z
    if-eqz v0, :cond_7

    goto :goto_a

    :cond_7
    instance-of v1, p0, Lgnu/kawa/lispexpr/LangObjType;

    move v0, v1

    .end local v0    # "x":Z
    :goto_a
    return v0
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 18
    nop

    .line 19
    instance-of v0, p0, Lgnu/mapping/Symbol;

    return v0
.end method

.method static lambda1(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .registers 3
    .param p0, "s1"    # Lgnu/mapping/Symbol;
    .param p1, "s2"    # Lgnu/mapping/Symbol;

    .line 25
    nop

    .line 26
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    return v0
.end method

.method static lambda2$V(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;[Ljava/lang/Object;)Z
    .registers 5

    .line 27
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object p2

    .line 28
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    .line 29
    sget-object v1, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    invoke-virtual {p0, v1, p1, p2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, p1, :cond_18

    const/4 v0, 0x1

    :cond_18
    move p0, v0

    .line 28
    :cond_19
    return p0
.end method

.method public static namespacePrefix(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "ns"    # Lgnu/mapping/Namespace;

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static namespaceUri(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "ns"    # Lgnu/mapping/Namespace;

    .line 43
    nop

    .line 44
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nullEnvironment()Lgnu/mapping/Environment;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkawa/lib/misc;->nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;

    move-result-object v0

    return-object v0
.end method

.method public static nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;
    .registers 2
    .param p0, "version"    # Ljava/lang/Object;

    .line 67
    nop

    .line 68
    sget-object v0, Lkawa/standard/Scheme;->nullEnvironment:Lgnu/mapping/Environment;

    return-object v0
.end method

.method public static procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 88
    nop

    .line 89
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static schemeImplementationVersion()Ljava/lang/String;
    .registers 1

    .line 79
    nop

    .line 80
    invoke-static {}, Lkawa/Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static schemeReportEnvironment(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "version"    # Ljava/lang/Object;

    .line 70
    nop

    .line 71
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v1, Lkawa/lib/misc;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_10

    .line 72
    sget-object v0, Lkawa/standard/Scheme;->r4Environment:Lgnu/mapping/Environment;

    goto :goto_28

    :cond_10
    sget-object v0, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 71
    sget-object v1, Lkawa/lib/misc;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1f

    .line 73
    sget-object v0, Lkawa/standard/Scheme;->r5Environment:Lgnu/mapping/Environment;

    goto :goto_28

    .line 74
    :cond_1f
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "scheme-report-environment version must be 4 or 5"

    invoke-static {v1, v0}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method public static setProcedureProperty$Ex(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 82
    nop

    .line 83
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Procedure;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 49
    nop

    .line 50
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v0

    return-object v0
.end method

.method public static symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolLocalName(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 31
    nop

    .line 32
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolNamespace(Lgnu/mapping/Symbol;)Lgnu/mapping/Namespace;
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 34
    nop

    .line 35
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static symbolNamespaceUri(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static symbolPrefix(Lgnu/mapping/Symbol;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 40
    nop

    .line 41
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs values([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 55
    nop

    .line 56
    invoke-static {p0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_24

    .line 126
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    invoke-static {}, Lkawa/lib/misc;->gentemp()Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    .line 111
    :sswitch_f
    invoke-static {}, Lkawa/lib/misc;->baseUri()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_14
    invoke-static {}, Lkawa/lib/misc;->schemeImplementationVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 76
    :sswitch_19
    invoke-static {}, Lkawa/lib/misc;->interactionEnvironment()Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1

    .line 67
    :sswitch_1e
    invoke-static {}, Lkawa/lib/misc;->nullEnvironment()Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_24
    .sparse-switch
        0x12 -> :sswitch_1e
        0x15 -> :sswitch_19
        0x16 -> :sswitch_14
        0x1d -> :sswitch_f
        0x1f -> :sswitch_a
    .end sparse-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_c4

    .line 111
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p2}, Lkawa/lib/misc;->baseUri(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_10
    invoke-static {p2}, Lkawa/lib/misc;->force(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 70
    :pswitch_15
    invoke-static {p2}, Lkawa/lib/misc;->schemeReportEnvironment(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 67
    :pswitch_1a
    invoke-static {p2}, Lkawa/lib/misc;->nullEnvironment(Ljava/lang/Object;)Lgnu/mapping/Environment;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_1f
    invoke-static {p2}, Lkawa/lib/misc;->isProcedure(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2a
    return-object p1

    .line 49
    :pswitch_2b
    :try_start_2b
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_32

    invoke-static {p2}, Lkawa/lib/misc;->string$To$Symbol(Ljava/lang/CharSequence;)Lgnu/mapping/SimpleSymbol;

    move-result-object p1

    return-object p1

    :catch_32
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string->symbol"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 46
    :pswitch_3b
    :try_start_3b
    check-cast p2, Lgnu/mapping/Namespace;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3d} :catch_42

    invoke-static {p2}, Lkawa/lib/misc;->namespacePrefix(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_42
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "namespace-prefix"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 43
    :pswitch_4b
    :try_start_4b
    check-cast p2, Lgnu/mapping/Namespace;
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_4d} :catch_52

    invoke-static {p2}, Lkawa/lib/misc;->namespaceUri(Lgnu/mapping/Namespace;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_52
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "namespace-uri"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 40
    :pswitch_5b
    :try_start_5b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_5d
    .catch Ljava/lang/ClassCastException; {:try_start_5b .. :try_end_5d} :catch_62

    invoke-static {p2}, Lkawa/lib/misc;->symbolPrefix(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_62
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-prefix"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 37
    :pswitch_6b
    :try_start_6b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_6d
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_6d} :catch_72

    invoke-static {p2}, Lkawa/lib/misc;->symbolNamespaceUri(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_72
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-namespace-uri"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 34
    :pswitch_7b
    :try_start_7b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_7d
    .catch Ljava/lang/ClassCastException; {:try_start_7b .. :try_end_7d} :catch_82

    invoke-static {p2}, Lkawa/lib/misc;->symbolNamespace(Lgnu/mapping/Symbol;)Lgnu/mapping/Namespace;

    move-result-object p1

    return-object p1

    :catch_82
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-namespace"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 31
    :pswitch_8b
    :try_start_8b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_8d
    .catch Ljava/lang/ClassCastException; {:try_start_8b .. :try_end_8d} :catch_92

    invoke-static {p2}, Lkawa/lib/misc;->symbolLocalName(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_92
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-local-name"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :pswitch_9b
    :try_start_9b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_9d
    .catch Ljava/lang/ClassCastException; {:try_start_9b .. :try_end_9d} :catch_a2

    invoke-static {p2}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_a2
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol->string"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :pswitch_ab
    invoke-static {p2}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b6

    :cond_b4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b6
    return-object p1

    .line 15
    :pswitch_b7
    invoke-static {p2}, Lkawa/lib/misc;->isBoolean(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c2

    :cond_c0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_c2
    return-object p1

    nop

    :pswitch_data_c4
    .packed-switch 0x3
        :pswitch_b7
        :pswitch_ab
        :pswitch_9b
        :pswitch_6
        :pswitch_6
        :pswitch_8b
        :pswitch_7b
        :pswitch_6b
        :pswitch_5b
        :pswitch_4b
        :pswitch_3b
        :pswitch_2b
        :pswitch_1f
        :pswitch_6
        :pswitch_6
        :pswitch_1a
        :pswitch_6
        :pswitch_15
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_10
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "lambda"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_54

    .line 88
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_d
    :try_start_d
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_14

    invoke-static {p2, p3}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_14
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "procedure-property"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 59
    :sswitch_1d
    :try_start_1d
    check-cast p2, Lgnu/mapping/Environment;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_1f} :catch_2b

    invoke-static {p2, p3}, Lkawa/lib/misc;->isEnvironmentBound(Lgnu/mapping/Environment;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2a

    :cond_28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2a
    return-object p1

    :catch_2b
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "environment-bound?"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_34
    :try_start_34
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_36} :catch_4c

    :try_start_36
    check-cast p3, Lgnu/mapping/Symbol;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_44

    invoke-static {p2, p3}, Lkawa/lib/misc;->lambda1(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_41

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_43

    :cond_41
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_43
    return-object p1

    :catch_44
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_4c
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_54
    .sparse-switch
        0x6 -> :sswitch_34
        0x11 -> :sswitch_1d
        0x18 -> :sswitch_d
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_32

    .line 92
    :pswitch_6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->dynamicWind(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_10
    :try_start_10
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_17

    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->procedureProperty(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_17
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "procedure-property"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 82
    :pswitch_20
    :try_start_20
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_22} :catch_28

    invoke-static {p2, p3, p4}, Lkawa/lib/misc;->setProcedureProperty$Ex(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_28
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "set-procedure-property!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :pswitch_data_32
    .packed-switch 0x17
        :pswitch_20
        :pswitch_10
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "lambda"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_82

    .line 129
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_e
    aget-object p1, p2, v2

    :try_start_10
    move-object v0, p1

    check-cast v0, Lgnu/expr/GenericProc;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_13} :catch_28

    array-length p1, p2

    sub-int/2addr p1, v3

    new-array v1, p1, [Ljava/lang/Object;

    :goto_17
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_21

    invoke-static {v0, v1}, Lkawa/lib/misc;->addProcedureProperties(Lgnu/expr/GenericProc;[Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_21
    add-int/lit8 v2, p1, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, p1

    goto :goto_17

    .line 130
    :catch_28
    move-exception p2

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "add-procedure-properties"

    invoke-direct {v0, p2, v1, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 103
    :sswitch_31
    aget-object p1, p2, v2

    array-length v0, p2

    sub-int/2addr v0, v3

    new-array v1, v0, [Ljava/lang/Object;

    :goto_37
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_40

    invoke-static {p1, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_40
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    aput-object v2, v1, v0

    goto :goto_37

    .line 55
    :sswitch_47
    invoke-static {p2}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 27
    :sswitch_4c
    aget-object p1, p2, v2

    :try_start_4e
    check-cast p1, Lgnu/mapping/Symbol;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4e .. :try_end_50} :catch_78

    aget-object v1, p2, v3

    const/4 v2, 0x2

    :try_start_53
    move-object v3, v1

    check-cast v3, Lgnu/mapping/Symbol;
    :try_end_56
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_56} :catch_71

    array-length v0, p2

    sub-int/2addr v0, v2

    new-array v4, v0, [Ljava/lang/Object;

    :goto_5a
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6a

    invoke-static {p1, v3, v4}, Lkawa/lib/misc;->lambda2$V(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_67

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_69

    :cond_67
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_69
    return-object p1

    :cond_6a
    add-int/lit8 v1, v0, 0x2

    aget-object v1, p2, v1

    aput-object v1, v4, v0

    goto :goto_5a

    :catch_71
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_78
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p2, v0, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_80

    :goto_7f
    throw v1

    :goto_80
    goto :goto_7f

    nop

    :sswitch_data_82
    .sparse-switch
        0x7 -> :sswitch_4c
        0x10 -> :sswitch_47
        0x1c -> :sswitch_31
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_24

    .line 67
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 126
    :sswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 111
    :sswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 79
    :sswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 76
    :sswitch_1a
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 67
    :sswitch_1f
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_24
    .sparse-switch
        0x12 -> :sswitch_1f
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_15
        0x1d -> :sswitch_10
        0x1f -> :sswitch_b
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_a0

    .line 15
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 111
    :pswitch_f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 98
    :pswitch_16
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 70
    :pswitch_1d
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 67
    :pswitch_24
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 52
    :pswitch_2b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 49
    :pswitch_32
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3d

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_3d
    return v1

    .line 46
    :pswitch_3e
    instance-of v0, p2, Lgnu/mapping/Namespace;

    if-nez v0, :cond_43

    return v1

    :cond_43
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 43
    :pswitch_4a
    instance-of v0, p2, Lgnu/mapping/Namespace;

    if-nez v0, :cond_4f

    return v1

    :cond_4f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 40
    :pswitch_56
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_5b

    return v1

    :cond_5b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 37
    :pswitch_62
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_67

    return v1

    :cond_67
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 34
    :pswitch_6e
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_73

    return v1

    :cond_73
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 31
    :pswitch_7a
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_7f

    return v1

    :cond_7f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 21
    :pswitch_86
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_8b

    return v1

    :cond_8b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 18
    :pswitch_92
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 15
    :pswitch_99
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_a0
    .packed-switch 0x3
        :pswitch_99
        :pswitch_92
        :pswitch_86
        :pswitch_a
        :pswitch_a
        :pswitch_7a
        :pswitch_6e
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_2b
        :pswitch_a
        :pswitch_a
        :pswitch_24
        :pswitch_a
        :pswitch_1d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_16
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbffff

    sparse-switch v0, :sswitch_data_42

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 88
    :sswitch_f
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_14

    return v3

    :cond_14
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 59
    :sswitch_1d
    instance-of v0, p2, Lgnu/mapping/Environment;

    if-nez v0, :cond_22

    return v3

    :cond_22
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 25
    :sswitch_2b
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_30

    return v3

    :cond_30
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Symbol;

    if-nez p2, :cond_3a

    const p1, -0xbfffe

    return p1

    :cond_3a
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_42
    .sparse-switch
        0x6 -> :sswitch_2b
        0x11 -> :sswitch_1d
        0x18 -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_3a

    .line 82
    :pswitch_a
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 92
    :pswitch_f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 88
    :pswitch_1a
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1f

    return v1

    :cond_1f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 82
    :pswitch_2a
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_2f

    return v1

    :cond_2f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_3a
    .packed-switch 0x17
        :pswitch_2a
        :pswitch_1a
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_28

    .line 27
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 129
    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 103
    :sswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 55
    :sswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 27
    :sswitch_21
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_28
    .sparse-switch
        0x7 -> :sswitch_21
        0x10 -> :sswitch_1a
        0x1c -> :sswitch_13
        0x20 -> :sswitch_c
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 9
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 15
    nop

    .line 18
    nop

    .line 21
    nop

    .line 24
    new-instance v1, Lgnu/expr/GenericProc;

    const-string v2, "symbol=?"

    invoke-direct {v1, v2}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/lib/misc;->symbol$Eq$Qu:Lgnu/expr/GenericProc;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/misc;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lkawa/lib/misc;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 31
    nop

    .line 34
    nop

    .line 37
    nop

    .line 40
    nop

    .line 43
    nop

    .line 46
    nop

    .line 49
    nop

    .line 52
    nop

    .line 55
    nop

    .line 59
    nop

    .line 67
    nop

    .line 70
    nop

    .line 76
    nop

    .line 79
    nop

    .line 82
    nop

    .line 85
    new-instance v1, Lgnu/expr/GenericProc;

    const-string v3, "procedure-property"

    invoke-direct {v1, v3}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/lib/misc;->procedure$Mnproperty:Lgnu/expr/GenericProc;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lkawa/lib/misc;->Lit2:Lgnu/expr/Keyword;

    aput-object v4, v3, v5

    sget-object v4, Lkawa/lib/misc;->set$Mnprocedure$Mnproperty$Ex:Lgnu/expr/ModuleMethod;

    aput-object v4, v3, v6

    .line 88
    sget-object v4, Lkawa/lib/misc;->procedure$Mnproperty$Fn3:Lgnu/expr/ModuleMethod;

    const/4 v5, 0x0

    .local v5, "procedure$Mnproperty":Lgnu/mapping/Procedure;
    move-object v5, v4

    .line 90
    nop

    .end local v5    # "procedure$Mnproperty":Lgnu/mapping/Procedure;
    aput-object v4, v3, v2

    invoke-virtual {v1, v3}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 92
    nop

    .line 98
    nop

    .line 103
    nop

    .line 111
    nop

    .line 126
    nop

    .line 129
    return-void
.end method

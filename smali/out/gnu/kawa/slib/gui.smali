.class public Lgnu/kawa/slib/gui;
.super Lgnu/expr/ModuleBody;
.source "gui.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ngui.scm\nScheme\n*S Scheme\n*F\n+ 1 gui.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm\n*L\n1#1,178:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/gui;

.field public static final Button:Lgnu/expr/ModuleMethod;

.field public static final Column:Lgnu/expr/ModuleMethod;

.field public static final Image:Lkawa/lang/Macro;

.field public static final Label:Lgnu/expr/ModuleMethod;

.field static final Lit0:Ljava/lang/Class;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lkawa/lang/SyntaxRules;

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

.field static final Lit24:Lkawa/lang/SyntaxRules;

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

.field static final Lit36:Lgnu/mapping/SimpleSymbol;

.field static final Lit37:Lgnu/mapping/SimpleSymbol;

.field static final Lit38:Lgnu/mapping/SimpleSymbol;

.field static final Lit39:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit40:Lgnu/mapping/SimpleSymbol;

.field static final Lit41:Lgnu/mapping/SimpleSymbol;

.field static final Lit42:Lgnu/mapping/SimpleSymbol;

.field static final Lit43:Lgnu/mapping/SimpleSymbol;

.field static final Lit44:Lgnu/math/IntNum;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lkawa/lang/SyntaxRules;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final Row:Lgnu/expr/ModuleMethod;

.field public static final Text:Lgnu/expr/ModuleMethod;

.field public static final Window:Lgnu/expr/ModuleMethod;

.field public static final as$Mncolor:Lgnu/expr/ModuleMethod;

.field public static final button:Lgnu/expr/ModuleMethod;

.field public static final image$Mnheight:Lgnu/expr/ModuleMethod;

.field public static final image$Mnread:Lgnu/expr/ModuleMethod;

.field public static final image$Mnwidth:Lgnu/expr/ModuleMethod;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

.field static final loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

.field static final loc$$St$DtgetHeight:Lgnu/mapping/Location;

.field static final loc$$St$DtgetWidth:Lgnu/mapping/Location;

.field public static final process$Mnkeywords:Lkawa/lang/Macro;

.field public static final run$Mnapplication:Lkawa/lang/Macro;

.field public static final set$Mncontent:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 53

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->Lit44:Lgnu/math/IntNum;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "value"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit43:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "name"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit42:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "invoke"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit41:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "getName"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit40:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "quote"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/gui;->Lit39:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "attr"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/gui;->Lit38:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "<gnu.kawa.xml.KAttr>"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/gui;->Lit37:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "instance?"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/gui;->Lit36:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "+"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/gui;->Lit35:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "loop"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/kawa/slib/gui;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "<object>"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/gui;->Lit33:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "primitive-array-get"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/gui;->Lit32:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "quasiquote"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/gui;->Lit31:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    const-string v0, "$lookup$"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/gui;->Lit30:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v2

    const-string v2, "arg"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v3

    const-string v3, "num-args"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v4

    const-string v4, "i"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v7

    const-string v7, "<int>"

    invoke-direct {v15, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/gui;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v8

    const-string v8, "::"

    invoke-direct {v15, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/gui;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lkawa/lang/SyntaxRules;

    move-object/from16 v22, v1

    move-object/from16 v21, v10

    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Object;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v23, v5

    const-string v5, "run-application"

    invoke-direct {v10, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x0

    aput-object v5, v1, v10

    move-object/from16 v24, v5

    const/4 v10, 0x1

    new-array v5, v10, [Lkawa/lang/SyntaxRule;

    new-instance v31, Lkawa/lang/SyntaxRule;

    new-instance v10, Lkawa/lang/SyntaxPattern;

    move-object/from16 v32, v9

    move-object/from16 v33, v13

    const/4 v9, 0x0

    new-array v13, v9, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018\u000c\u0007\u0008"

    move-object/from16 v34, v12

    const/4 v12, 0x1

    invoke-direct {v10, v9, v13, v12}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    new-array v9, v12, [Ljava/lang/Object;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "gnu.kawa.models.Window"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v35, v2

    const-string v2, "open"

    invoke-direct {v13, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v14, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v2, v13}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {v12, v2}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    const-string v12, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    const v13, 0xb7007

    invoke-static {v0, v2, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const/4 v13, 0x0

    aput-object v2, v9, v13

    const-string v27, "\u0001"

    const-string v28, "\u0011\u0018\u0004\u0008\u0003"

    const/16 v30, 0x0

    move-object/from16 v25, v31

    move-object/from16 v26, v10

    move-object/from16 v29, v9

    invoke-direct/range {v25 .. v30}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    aput-object v31, v5, v13

    const/4 v2, 0x1

    invoke-direct {v15, v1, v5, v2}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v15, Lgnu/kawa/slib/gui;->Lit24:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Window"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v5, "set-content"

    invoke-direct {v2, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v9, "Column"

    invoke-direct {v5, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "Row"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/gui;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v13, "Text"

    invoke-direct {v10, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/gui;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v25, v15

    const-string v15, "Label"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/gui;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v1

    const-string v1, "image-height"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v27, v2

    const-string v2, "image-width"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v28, v5

    const-string v5, "image-read"

    invoke-direct {v15, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lkawa/lang/SyntaxRules;

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v31, v13

    const-string v13, "text-field"

    invoke-direct {v9, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x0

    aput-object v9, v10, v13

    const/4 v9, 0x1

    new-array v13, v9, [Lkawa/lang/SyntaxRule;

    new-instance v42, Lkawa/lang/SyntaxRule;

    new-instance v9, Lkawa/lang/SyntaxPattern;

    move-object/from16 v43, v1

    move-object/from16 v44, v2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "\u000c\u0018\u0003"

    move-object/from16 v45, v5

    const/4 v5, 0x1

    invoke-direct {v9, v1, v2, v5}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make"

    invoke-direct {v5, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v5, "<gnu.kawa.models.DrawImage>"

    invoke-direct {v1, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v5, 0x1

    aput-object v1, v2, v5

    const-string v38, "\u0000"

    const-string v39, "\u0011\u0018\u0004\u0011\u0018\u000c\u0002"

    const/16 v41, 0x0

    move-object/from16 v36, v42

    move-object/from16 v37, v9

    move-object/from16 v40, v2

    invoke-direct/range {v36 .. v41}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v1, 0x0

    aput-object v42, v13, v1

    const/4 v1, 0x1

    invoke-direct {v15, v10, v13, v1}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v15, Lgnu/kawa/slib/gui;->Lit13:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "Image"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v5, "Button"

    invoke-direct {v2, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v9, "button"

    invoke-direct {v5, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "as-color"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/gui;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lkawa/lang/SyntaxRules;

    move-object/from16 v36, v1

    const/4 v13, 0x1

    new-array v1, v13, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v37, v15

    const-string v15, "process-keywords"

    invoke-direct {v13, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/gui;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/4 v15, 0x0

    aput-object v13, v1, v15

    move-object/from16 v38, v2

    const/4 v15, 0x1

    new-array v2, v15, [Lkawa/lang/SyntaxRule;

    new-instance v15, Lkawa/lang/SyntaxRule;

    move-object/from16 v39, v5

    new-instance v5, Lkawa/lang/SyntaxPattern;

    move-object/from16 v40, v9

    move-object/from16 v41, v13

    const/4 v9, 0x0

    new-array v13, v9, [Ljava/lang/Object;

    const-string v9, "\u000c\u0018\u000c\u0007\u000c\u000f\u000c\u0017\u000c\u001f\u0008"

    move-object/from16 v42, v1

    const/4 v1, 0x4

    invoke-direct {v5, v9, v13, v1}, Lkawa/lang/SyntaxPattern;-><init>(Ljava/lang/String;[Ljava/lang/Object;I)V

    const/16 v9, 0x1b

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let"

    invoke-direct {v13, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x0

    aput-object v1, v9, v13

    const/4 v1, 0x1

    aput-object v3, v9, v1

    const/4 v1, 0x2

    aput-object v8, v9, v1

    const/4 v1, 0x3

    aput-object v7, v9, v1

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v1, "field"

    invoke-direct {v13, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/4 v13, 0x4

    aput-object v1, v9, v13

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v13, "length"

    invoke-direct {v1, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v52, v10

    const/16 v10, 0x402a

    invoke-static {v1, v13, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    invoke-static {v6, v1, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v13, 0x4029

    invoke-static {v1, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v10, 0x5

    aput-object v1, v9, v10

    const/4 v1, 0x6

    aput-object v11, v9, v1

    const/4 v13, 0x0

    invoke-static {v13}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v10, 0x501d

    invoke-static {v1, v13, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/16 v10, 0x5017

    invoke-static {v7, v1, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/16 v7, 0x5014

    invoke-static {v8, v1, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/16 v7, 0x5011

    invoke-static {v4, v1, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v10, 0x5010

    invoke-static {v1, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/4 v7, 0x7

    aput-object v1, v9, v7

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v10, "if"

    invoke-direct {v1, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    const/16 v10, 0x8

    aput-object v1, v9, v10

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v13, "<"

    invoke-direct {v1, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v10, 0x6011

    invoke-static {v3, v13, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const/16 v10, 0x600f

    invoke-static {v4, v3, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v3

    const/16 v10, 0x600c

    invoke-static {v1, v3, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v9, v3

    const/16 v1, 0xa

    aput-object v35, v9, v1

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v13, 0x7026

    move-object/from16 v1, v34

    invoke-static {v1, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const/16 v13, 0x7011

    move-object/from16 v3, v33

    invoke-static {v3, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const/16 v13, 0xb

    aput-object v10, v9, v13

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const/16 v13, 0x7035

    invoke-static {v4, v10, v12, v13}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v10

    const/16 v13, 0xc

    aput-object v10, v9, v13

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v13, "cond"

    invoke-direct {v10, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    const/16 v13, 0xd

    aput-object v10, v9, v13

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v13, "<gnu.expr.Keyword>"

    invoke-direct {v10, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sget-object v13, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v7, 0x801d

    invoke-static {v10, v13, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v10, 0x8019

    move-object/from16 v13, v35

    invoke-static {v13, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v10, 0x800e

    move-object/from16 v35, v2

    move-object/from16 v2, v32

    invoke-static {v2, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const/16 v10, 0xe

    aput-object v7, v9, v10

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v10, "gnu.expr.Keyword"

    invoke-direct {v7, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sget-object v10, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v32, v5

    move-object/from16 v5, v23

    invoke-static {v5, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v14, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    sget-object v14, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v10, v14}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v10

    invoke-static {v7, v10}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v7

    const v10, 0xa00a

    invoke-static {v0, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v10, 0xa023

    invoke-static {v13, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v7

    const v10, 0xa009

    invoke-static {v0, v7, v12, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v7, 0xf

    aput-object v0, v9, v7

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v7, 0xb01f

    invoke-static {v1, v0, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xb00a

    invoke-static {v3, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x10

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0xb033

    move-object/from16 v3, v22

    invoke-static {v3, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xb031

    invoke-static {v4, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xb02e

    move-object/from16 v10, v21

    invoke-static {v10, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v7, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x11

    aput-object v0, v9, v1

    const/4 v0, 0x2

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v7, 0xc012

    invoke-static {v1, v0, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xc010

    invoke-static {v4, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xc00d

    invoke-static {v10, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v7, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xc007

    invoke-static {v11, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {v0, v7, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x12

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0xd016

    move-object/from16 v7, v20

    invoke-static {v7, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xd012

    invoke-static {v13, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xd007

    invoke-static {v2, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x13

    aput-object v0, v9, v1

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "let*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/16 v1, 0x14

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0xe02c

    invoke-static {v13, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xe017

    invoke-static {v7, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xe014

    invoke-static {v8, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0xe00e

    move-object/from16 v7, v19

    invoke-static {v7, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "<java.lang.String>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0xf031

    invoke-static {v5, v2, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    invoke-static {v6, v2, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v14, 0xf030

    invoke-static {v2, v5, v12, v14}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v5, 0xf02b

    invoke-static {v7, v2, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v5, 0xf023

    move-object/from16 v14, v18

    invoke-static {v14, v2, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v18, v15

    const v15, 0xf023

    invoke-static {v2, v5, v12, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v5, 0xf010

    invoke-static {v1, v2, v12, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0xf00d

    invoke-static {v8, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0xf007

    move-object/from16 v5, v17

    invoke-static {v5, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v8, "getObjectValue"

    invoke-direct {v2, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v15, 0x1001c

    invoke-static {v2, v8, v12, v15}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v8, 0x1001c

    invoke-static {v6, v2, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x1001b

    invoke-static {v2, v6, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0x10016

    invoke-static {v7, v2, v12, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0x1000e

    invoke-static {v14, v2, v12, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v7, 0x1000e

    invoke-static {v2, v6, v12, v7}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0x10007

    move-object/from16 v7, v16

    invoke-static {v7, v2, v12, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x10007

    invoke-static {v2, v6, v12, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v2

    const v6, 0xf007

    invoke-static {v1, v2, v12, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0xe00d

    invoke-static {v0, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x15

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x11022

    invoke-static {v7, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x1101d

    invoke-static {v5, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x16

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x12012

    invoke-static {v3, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x12010

    invoke-static {v4, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x1200d

    invoke-static {v10, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x1200d

    invoke-static {v0, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x12007

    invoke-static {v11, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x12007

    invoke-static {v0, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x17

    aput-object v0, v9, v1

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "else"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    const/16 v1, 0x18

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x1401f

    invoke-static {v13, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x19

    aput-object v0, v9, v1

    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v1, 0x15012

    invoke-static {v3, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x15010

    invoke-static {v4, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x1500d

    invoke-static {v10, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x1500d

    invoke-static {v0, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x15007

    invoke-static {v11, v0, v12, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v2, 0x15007

    invoke-static {v0, v1, v12, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const/16 v1, 0x1a

    aput-object v0, v9, v1

    const-string v48, "\u0001\u0001\u0001\u0001"

    const-string v49, "\u0011\u0018\u0004\u0091\u0008\u0011\u0018\u000c\u0011\u0018\u0014\u0011\u0018\u001c\u0008\u0011\u0018$\t\u000b\u0018,\u0008\u0011\u0018\u0004\u0011\u00184\u0011\u0018<\u0008\u0011\u0018D\u0011\u0018L\u0008\u0011\u0018\u0004a\u0008\u0011\u0018T\u0008\u0011\u0018\\\t\u000b\u0018d\u0008\u0011\u0018l\u00a9\u0011\u0018ty\t\u0013\t\u0003\u0011\u0018|\u0008\u0011\u0018\u0084\t\u000b\u0018\u008c\u0018\u0094\u0099\u0011\u0018\u009ci\u0011\u0018\u00a4\u0011\u0018\u00ac\u0008\t\u0013\t\u0003\u0018\u00b4\u0018\u00bc\u0008\u0011\u0018\u00c41\t\u001b\t\u0003\u0018\u00cc\u0018\u00d4"

    const/16 v51, 0x0

    move-object/from16 v46, v18

    move-object/from16 v47, v32

    move-object/from16 v50, v9

    invoke-direct/range {v46 .. v51}, Lkawa/lang/SyntaxRule;-><init>(Lkawa/lang/SyntaxPattern;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;I)V

    const/4 v0, 0x0

    aput-object v18, v35, v0

    move-object/from16 v2, v35

    move-object/from16 v1, v42

    move-object/from16 v0, v52

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lkawa/lang/SyntaxRules;-><init>([Ljava/lang/Object;[Lkawa/lang/SyntaxRule;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Lit8:Lkawa/lang/SyntaxRules;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "<gnu.kawa.models.Column>"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/gui;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "<gnu.kawa.models.Row>"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/gui;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "*.getHeight"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/gui;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "*.getWidth"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/gui;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "cell-spacing"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "text"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-class v5, Ljava/awt/Color;

    sput-object v5, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    new-instance v5, Lgnu/kawa/slib/gui;

    invoke-direct {v5}, Lgnu/kawa/slib/gui;-><init>()V

    sput-object v5, Lgnu/kawa/slib/gui;->$instance:Lgnu/kawa/slib/gui;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    invoke-static {v3, v6}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    invoke-static {v2, v6}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    invoke-static {v1, v6}, Lgnu/mapping/ThreadLocation;->getInstance(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/ThreadLocation;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    move-object/from16 v13, v41

    invoke-static {v13, v0, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/gui;->process$Mnkeywords:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1001

    move-object/from16 v9, v40

    const/4 v2, 0x1

    invoke-direct {v0, v5, v2, v9, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->as$Mncolor:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, -0x1000

    move-object/from16 v3, v39

    const/4 v4, 0x2

    invoke-direct {v0, v5, v4, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->button:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v3, v38

    const/4 v4, 0x3

    invoke-direct {v0, v5, v4, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Button:Lgnu/expr/ModuleMethod;

    move-object/from16 v3, v36

    move-object/from16 v0, v37

    invoke-static {v3, v0, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/gui;->Image:Lkawa/lang/Macro;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v3, v45

    const/4 v4, 0x4

    invoke-direct {v0, v5, v4, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->image$Mnread:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v3, v44

    const/4 v4, 0x5

    invoke-direct {v0, v5, v4, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->image$Mnwidth:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v3, v43

    const/4 v4, 0x6

    invoke-direct {v0, v5, v4, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->image$Mnheight:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v13, v31

    const/4 v1, 0x7

    invoke-direct {v0, v5, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Label:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v10, v30

    const/16 v1, 0x8

    invoke-direct {v0, v5, v1, v10, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Text:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v9, v29

    const/16 v1, 0x9

    invoke-direct {v0, v5, v1, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Row:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v1, v28

    const/16 v3, 0xa

    invoke-direct {v0, v5, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Column:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x2002

    move-object/from16 v3, v27

    const/16 v4, 0xb

    invoke-direct {v0, v5, v4, v3, v1}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->set$Mncontent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v1, v26

    const/16 v3, 0xc

    invoke-direct {v0, v5, v3, v1, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/gui;->Window:Lgnu/expr/ModuleMethod;

    move-object/from16 v1, v24

    move-object/from16 v0, v25

    invoke-static {v1, v0, v5}, Lkawa/lang/Macro;->make(Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Lkawa/lang/Macro;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/gui;->run$Mnapplication:Lkawa/lang/Macro;

    invoke-virtual {v5}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .registers 9
    .param p0, "args"    # [Ljava/lang/Object;

    .line 60
    nop

    .line 61
    new-instance v0, Lgnu/kawa/models/Button;

    invoke-direct {v0}, Lgnu/kawa/models/Button;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 62
    .local v0, "button":Lgnu/kawa/models/Button;
    array-length v2, p0

    const/4 v3, 0x0

    .local v2, "num$Mnargs":I
    const/4 v3, 0x0

    move-object v4, v1

    move v5, v3

    move-object v3, v4

    .local v5, "i":I
    :goto_e
    if-ge v5, v2, :cond_5f

    aget-object v6, p0, v5

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v6

    nop

    instance-of v6, v1, Lgnu/expr/Keyword;

    if-eqz v6, :cond_34

    :try_start_18
    move-object v3, v1

    check-cast v3, Lgnu/expr/Keyword;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_2a

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v3, v6}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v5, v5, 0x2

    move-object v3, v1

    goto :goto_e

    .line 10
    .end local v0    # "button":Lgnu/kawa/models/Button;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_2a
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    .restart local v0    # "button":Lgnu/kawa/models/Button;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_34
    instance-of v6, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v6, :cond_59

    .line 62
    nop

    .line 14
    :try_start_39
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/KAttr;
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3c} :catch_4f

    .local v3, "attr":Lgnu/kawa/xml/KAttr;
    move-object v3, v6

    .line 62
    nop

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 62
    .local v6, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v4, "value":Ljava/lang/Object;
    move-object v4, v7

    .line 62
    invoke-static {v0, v6, v4}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v3    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 14
    .end local v0    # "button":Lgnu/kawa/models/Button;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_4f
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 62
    .restart local v0    # "button":Lgnu/kawa/models/Button;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_59
    invoke-static {v0, v1}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 63
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    :cond_5f
    nop

    .end local v0    # "button":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method public static varargs Column([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "args"    # [Ljava/lang/Object;

    .line 150
    nop

    .line 151
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtColumn$Gr:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_9} :catch_8c

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 152
    .local v0, "instance":Ljava/lang/Object;
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    .local v2, "num$Mnargs":I
    const/4 v4, 0x0

    move-object v5, v1

    move v6, v4

    move-object v4, v5

    .local v6, "i":I
    :goto_16
    if-ge v6, v2, :cond_8a

    aget-object v7, p0, v6

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v7

    nop

    instance-of v7, v1, Lgnu/expr/Keyword;

    const-string v8, "box-keyword"

    if-eqz v7, :cond_48

    :try_start_22
    move-object v4, v0

    check-cast v4, Lgnu/kawa/models/Box;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_25} :catch_41

    :try_start_25
    move-object v7, v1

    check-cast v7, Lgnu/expr/Keyword;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_28} :catch_37

    invoke-virtual {v7}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    aget-object v8, p0, v8

    invoke-static {v4, v7, v8}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v6, v6, 0x2

    move-object v4, v1

    goto :goto_16

    .line 10
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v6    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_37
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 152
    :catch_41
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v8, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 12
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v6    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_48
    instance-of v7, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v7, :cond_77

    .line 152
    nop

    .line 14
    :try_start_4d
    move-object v7, v1

    check-cast v7, Lgnu/kawa/xml/KAttr;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_50} :catch_6d

    .local v4, "attr":Lgnu/kawa/xml/KAttr;
    move-object v4, v7

    .line 152
    nop

    .line 15
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v9, v1

    .line 152
    .local v7, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v9

    .local v5, "value":Ljava/lang/Object;
    move-object v5, v9

    .line 152
    :try_start_5d
    move-object v9, v0

    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_60
    .catch Ljava/lang/ClassCastException; {:try_start_5d .. :try_end_60} :catch_66

    invoke-static {v9, v7, v5}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v4    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 152
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v6    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_66
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v8, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 14
    :catch_6d
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 152
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v6    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_77
    :try_start_77
    move-object v4, v0

    check-cast v4, Lgnu/kawa/models/Box;
    :try_end_7a
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_7a} :catch_81

    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v6, v6, 0x1

    move-object v4, v0

    goto :goto_16

    .line 152
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v6    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_81
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "box-non-keyword"

    invoke-direct {v1, p0, v2, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 153
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_8a
    nop

    .end local v0    # "instance":Ljava/lang/Object;
    return-object v0

    .end local p0    # "args":[Ljava/lang/Object;
    :catch_8c
    move-exception p0

    const/16 v0, 0x97

    const/16 v1, 0x19

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_98

    :goto_97
    throw p0

    :goto_98
    goto :goto_97
.end method

.method public static varargs Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;
    .registers 9
    .param p0, "args"    # [Ljava/lang/Object;

    .line 100
    nop

    .line 101
    new-instance v0, Lgnu/kawa/models/Label;

    invoke-direct {v0}, Lgnu/kawa/models/Label;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 102
    .local v0, "instance":Lgnu/kawa/models/Label;
    array-length v2, p0

    const/4 v3, 0x0

    .local v2, "num$Mnargs":I
    const/4 v3, 0x0

    move-object v4, v1

    move v5, v3

    move-object v3, v4

    .local v5, "i":I
    :goto_e
    if-ge v5, v2, :cond_5f

    aget-object v6, p0, v5

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v6

    nop

    instance-of v6, v1, Lgnu/expr/Keyword;

    if-eqz v6, :cond_34

    :try_start_18
    move-object v3, v1

    check-cast v3, Lgnu/expr/Keyword;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_2a

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v3, v6}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v5, v5, 0x2

    move-object v3, v1

    goto :goto_e

    .line 10
    .end local v0    # "instance":Lgnu/kawa/models/Label;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_2a
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    .restart local v0    # "instance":Lgnu/kawa/models/Label;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_34
    instance-of v6, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v6, :cond_59

    .line 102
    nop

    .line 14
    :try_start_39
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/KAttr;
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3c} :catch_4f

    .local v3, "attr":Lgnu/kawa/xml/KAttr;
    move-object v3, v6

    .line 102
    nop

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 102
    .local v6, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v4, "value":Ljava/lang/Object;
    move-object v4, v7

    .line 102
    invoke-static {v0, v6, v4}, Lgnu/kawa/slib/gui;->labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v3    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 14
    .end local v0    # "instance":Lgnu/kawa/models/Label;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_4f
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 102
    .restart local v0    # "instance":Lgnu/kawa/models/Label;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_59
    invoke-static {v0, v1}, Lgnu/kawa/slib/gui;->labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 103
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    :cond_5f
    nop

    .end local v0    # "instance":Lgnu/kawa/models/Label;
    return-object v0
.end method

.method public static varargs Row([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "args"    # [Ljava/lang/Object;

    .line 145
    nop

    .line 146
    sget-object v0, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$Lsgnu$Dtkawa$Dtmodels$DtRow$Gr:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_9} :catch_8c

    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 147
    .local v0, "instance":Ljava/lang/Object;
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    .local v2, "num$Mnargs":I
    const/4 v4, 0x0

    move-object v5, v1

    move v6, v4

    move-object v4, v5

    .local v6, "i":I
    :goto_16
    if-ge v6, v2, :cond_8a

    aget-object v7, p0, v6

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v7

    nop

    instance-of v7, v1, Lgnu/expr/Keyword;

    const-string v8, "box-keyword"

    if-eqz v7, :cond_48

    :try_start_22
    move-object v4, v0

    check-cast v4, Lgnu/kawa/models/Box;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_25} :catch_41

    :try_start_25
    move-object v7, v1

    check-cast v7, Lgnu/expr/Keyword;
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_28} :catch_37

    invoke-virtual {v7}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    aget-object v8, p0, v8

    invoke-static {v4, v7, v8}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v6, v6, 0x2

    move-object v4, v1

    goto :goto_16

    .line 10
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v6    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_37
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 147
    :catch_41
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v8, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 12
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v6    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_48
    instance-of v7, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v7, :cond_77

    .line 147
    nop

    .line 14
    :try_start_4d
    move-object v7, v1

    check-cast v7, Lgnu/kawa/xml/KAttr;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_50} :catch_6d

    .local v4, "attr":Lgnu/kawa/xml/KAttr;
    move-object v4, v7

    .line 147
    nop

    .line 15
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v9, v1

    .line 147
    .local v7, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v4}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v9

    .local v5, "value":Ljava/lang/Object;
    move-object v5, v9

    .line 147
    :try_start_5d
    move-object v9, v0

    check-cast v9, Lgnu/kawa/models/Box;
    :try_end_60
    .catch Ljava/lang/ClassCastException; {:try_start_5d .. :try_end_60} :catch_66

    invoke-static {v9, v7, v5}, Lgnu/kawa/slib/gui;->boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v4    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v7    # "name":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 147
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v6    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_66
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v8, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 14
    :catch_6d
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 147
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v6    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_77
    :try_start_77
    move-object v4, v0

    check-cast v4, Lgnu/kawa/models/Box;
    :try_end_7a
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_7a} :catch_81

    invoke-static {v4, v1}, Lgnu/kawa/slib/gui;->boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v6, v6, 0x1

    move-object v4, v0

    goto :goto_16

    .line 147
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v6    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_81
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "box-non-keyword"

    invoke-direct {v1, p0, v2, v3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 148
    .restart local v0    # "instance":Ljava/lang/Object;
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_8a
    nop

    .end local v0    # "instance":Ljava/lang/Object;
    return-object v0

    .end local p0    # "args":[Ljava/lang/Object;
    :catch_8c
    move-exception p0

    const/16 v0, 0x92

    const/16 v1, 0x19

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    goto :goto_98

    :goto_97
    throw p0

    :goto_98
    goto :goto_97
.end method

.method public static varargs Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;
    .registers 9
    .param p0, "args"    # [Ljava/lang/Object;

    .line 123
    nop

    .line 124
    new-instance v0, Lgnu/kawa/models/Text;

    invoke-direct {v0}, Lgnu/kawa/models/Text;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 125
    .local v0, "instance":Lgnu/kawa/models/Text;
    array-length v2, p0

    const/4 v3, 0x0

    .local v2, "num$Mnargs":I
    const/4 v3, 0x0

    move-object v4, v1

    move v5, v3

    move-object v3, v4

    .local v5, "i":I
    :goto_e
    if-ge v5, v2, :cond_5f

    aget-object v6, p0, v5

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v6

    nop

    instance-of v6, v1, Lgnu/expr/Keyword;

    if-eqz v6, :cond_34

    :try_start_18
    move-object v3, v1

    check-cast v3, Lgnu/expr/Keyword;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_2a

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v3, v6}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v5, v5, 0x2

    move-object v3, v1

    goto :goto_e

    .line 10
    .end local v0    # "instance":Lgnu/kawa/models/Text;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_2a
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    .restart local v0    # "instance":Lgnu/kawa/models/Text;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_34
    instance-of v6, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v6, :cond_59

    .line 125
    nop

    .line 14
    :try_start_39
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/KAttr;
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3c} :catch_4f

    .local v3, "attr":Lgnu/kawa/xml/KAttr;
    move-object v3, v6

    .line 125
    nop

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 125
    .local v6, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v4, "value":Ljava/lang/Object;
    move-object v4, v7

    .line 125
    invoke-static {v0, v6, v4}, Lgnu/kawa/slib/gui;->textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v3    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 14
    .end local v0    # "instance":Lgnu/kawa/models/Text;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_4f
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 125
    .restart local v0    # "instance":Lgnu/kawa/models/Text;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_59
    invoke-static {v0, v1}, Lgnu/kawa/slib/gui;->textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 126
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    :cond_5f
    nop

    .end local v0    # "instance":Lgnu/kawa/models/Text;
    return-object v0
.end method

.method public static varargs Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;
    .registers 9
    .param p0, "args"    # [Ljava/lang/Object;

    .line 174
    nop

    .line 175
    nop

    .line 176
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/kawa/models/Display;->makeWindow()Lgnu/kawa/models/Window;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 177
    .local v0, "instance":Lgnu/kawa/models/Window;
    array-length v2, p0

    const/4 v3, 0x0

    .local v2, "num$Mnargs":I
    const/4 v3, 0x0

    move-object v4, v1

    move v5, v3

    move-object v3, v4

    .local v5, "i":I
    :goto_12
    if-ge v5, v2, :cond_63

    aget-object v6, p0, v5

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v6

    nop

    instance-of v6, v1, Lgnu/expr/Keyword;

    if-eqz v6, :cond_38

    :try_start_1c
    move-object v3, v1

    check-cast v3, Lgnu/expr/Keyword;
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1f} :catch_2e

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v3, v6}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v5, v5, 0x2

    move-object v3, v1

    goto :goto_12

    .line 10
    .end local v0    # "instance":Lgnu/kawa/models/Window;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_2e
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    .restart local v0    # "instance":Lgnu/kawa/models/Window;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_38
    instance-of v6, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v6, :cond_5d

    .line 177
    nop

    .line 14
    :try_start_3d
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/KAttr;
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_3d .. :try_end_40} :catch_53

    .local v3, "attr":Lgnu/kawa/xml/KAttr;
    move-object v3, v6

    .line 177
    nop

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 177
    .local v6, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v4, "value":Ljava/lang/Object;
    move-object v4, v7

    .line 177
    invoke-static {v0, v6, v4}, Lgnu/kawa/slib/gui;->windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v3    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 14
    .end local v0    # "instance":Lgnu/kawa/models/Window;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_53
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 177
    .restart local v0    # "instance":Lgnu/kawa/models/Window;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_5d
    invoke-static {v0, v1}, Lgnu/kawa/slib/gui;->windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 178
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    :cond_63
    nop

    .end local v0    # "instance":Lgnu/kawa/models/Window;
    return-object v0
.end method

.method public static asColor(Ljava/lang/Object;)Ljava/awt/Color;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 23
    nop

    .line 24
    instance-of v0, p0, Ljava/awt/Color;

    if-eqz v0, :cond_9

    .line 25
    move-object v0, p0

    check-cast v0, Ljava/awt/Color;

    goto :goto_40

    :cond_9
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    .line 27
    new-instance v0, Ljava/awt/Color;

    :try_start_f
    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_12} :catch_1a

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    goto :goto_40

    .end local p0    # "value":Ljava/lang/Object;
    :catch_1a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "java.lang.Integer.intValue()"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .restart local p0    # "value":Ljava/lang/Object;
    :cond_24
    instance-of v0, p0, Lgnu/math/IntNum;

    if-eqz v0, :cond_32

    .line 29
    new-instance v0, Ljava/awt/Color;

    invoke-static {p0}, Lgnu/math/IntNum;->intValue(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/awt/Color;-><init>(I)V

    goto :goto_40

    .line 31
    :cond_32
    sget-object v0, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    sget-object v1, Lgnu/kawa/slib/gui;->Lit0:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/Color;

    :goto_40
    return-object v0
.end method

.method static asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 137
    nop

    .line 138
    invoke-static {}, Lgnu/kawa/models/Display;->getInstance()Lgnu/kawa/models/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/kawa/models/Display;->coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    return-object v0
.end method

.method static boxKeyword(Lgnu/kawa/models/Box;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Box;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 128
    nop

    .line 131
    sget-object v0, Lgnu/kawa/slib/gui;->Lit2:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Box;->setCellSpacing(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_20

    .line 135
    :cond_b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown box attribute ~s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_20
    return-object v0
.end method

.method static boxNonKeyword(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
    .registers 3
    .param p0, "box"    # Lgnu/kawa/models/Box;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 140
    nop

    .line 142
    invoke-static {p1}, Lgnu/kawa/slib/gui;->asModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Box;->add(Lgnu/kawa/models/Viewable;)V

    return-void
.end method

.method public static varargs button([Ljava/lang/Object;)Lgnu/kawa/models/Button;
    .registers 9
    .param p0, "args"    # [Ljava/lang/Object;

    .line 55
    nop

    .line 56
    new-instance v0, Lgnu/kawa/models/Button;

    invoke-direct {v0}, Lgnu/kawa/models/Button;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 57
    .local v0, "button":Lgnu/kawa/models/Button;
    array-length v2, p0

    const/4 v3, 0x0

    .local v2, "num$Mnargs":I
    const/4 v3, 0x0

    move-object v4, v1

    move v5, v3

    move-object v3, v4

    .local v5, "i":I
    :goto_e
    if-ge v5, v2, :cond_5f

    aget-object v6, p0, v5

    .local v1, "arg":Ljava/lang/Object;
    move-object v1, v6

    nop

    instance-of v6, v1, Lgnu/expr/Keyword;

    if-eqz v6, :cond_34

    :try_start_18
    move-object v3, v1

    check-cast v3, Lgnu/expr/Keyword;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_2a

    invoke-virtual {v3}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v5, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v3, v6}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    add-int/lit8 v5, v5, 0x2

    move-object v3, v1

    goto :goto_e

    .line 10
    .end local v0    # "button":Lgnu/kawa/models/Button;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_2a
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "gnu.expr.Keyword.getName()"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 12
    .restart local v0    # "button":Lgnu/kawa/models/Button;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_34
    instance-of v6, v1, Lgnu/kawa/xml/KAttr;

    if-eqz v6, :cond_59

    .line 57
    nop

    .line 14
    :try_start_39
    move-object v6, v1

    check-cast v6, Lgnu/kawa/xml/KAttr;
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3c} :catch_4f

    .local v3, "attr":Lgnu/kawa/xml/KAttr;
    move-object v3, v6

    .line 57
    nop

    .line 15
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    .line 57
    .local v6, "name":Ljava/lang/String;
    nop

    .line 16
    invoke-virtual {v3}, Lgnu/kawa/xml/KAttr;->getObjectValue()Ljava/lang/Object;

    move-result-object v7

    .local v4, "value":Ljava/lang/Object;
    move-object v4, v7

    .line 57
    invoke-static {v0, v6, v4}, Lgnu/kawa/slib/gui;->buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .end local v3    # "attr":Lgnu/kawa/xml/KAttr;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 14
    .end local v0    # "button":Lgnu/kawa/models/Button;
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_4f
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "attr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 57
    .restart local v0    # "button":Lgnu/kawa/models/Button;
    .restart local v1    # "arg":Ljava/lang/Object;
    .restart local v2    # "num$Mnargs":I
    .restart local v5    # "i":I
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_59
    invoke-static {v0, v1}, Lgnu/kawa/slib/gui;->buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 21
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 58
    .end local v1    # "arg":Ljava/lang/Object;
    .end local v2    # "num$Mnargs":I
    .end local v5    # "i":I
    :cond_5f
    nop

    .end local v0    # "button":Lgnu/kawa/models/Button;
    return-object v0
.end method

.method static buttonKeyword(Lgnu/kawa/models/Button;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "button"    # Lgnu/kawa/models/Button;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 33
    nop

    .line 36
    const-string v0, "foreground"

    if-ne p1, v0, :cond_f

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    :goto_c
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_5f

    :cond_f
    const-string v0, "background"

    if-ne p1, v0, :cond_1b

    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    goto :goto_c

    :cond_1b
    const-string v0, "action"

    if-ne p1, v0, :cond_23

    invoke-virtual {p0, p2}, Lgnu/kawa/models/Button;->setAction(Ljava/lang/Object;)V

    goto :goto_c

    :cond_23
    const-string v0, "text"

    if-ne p1, v0, :cond_33

    if-nez p2, :cond_2b

    const/4 v0, 0x0

    goto :goto_2f

    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    goto :goto_c

    :cond_33
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "disabled"

    if-ne p1, v3, :cond_4d

    :try_start_3a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3c
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_3c} :catch_44

    if-eq p2, v1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->setDisabled(Z)V

    goto :goto_c

    .line 48
    .end local p0    # "button":Lgnu/kawa/models/Button;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catch_44
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string v0, "gnu.kawa.models.Button.setDisabled(boolean)"

    invoke-direct {p1, p0, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 49
    .restart local p0    # "button":Lgnu/kawa/models/Button;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4d
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "unknown button attribute ~s"

    aput-object v3, v1, v2

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_5f
    return-object v0
.end method

.method static buttonNonKeyword(Lgnu/kawa/models/Button;Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "button"    # Lgnu/kawa/models/Button;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static imageHeight(Ljava/awt/image/BufferedImage;)I
    .registers 4
    .param p0, "image"    # Ljava/awt/image/BufferedImage;

    .line 76
    nop

    .line 77
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetHeight:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_9} :catch_14

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .end local p0    # "image":Ljava/awt/image/BufferedImage;
    :catch_14
    move-exception p0

    const/16 v0, 0x4d

    const/4 v1, 0x3

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method public static imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;
    .registers 2
    .param p0, "uri"    # Lgnu/text/Path;

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    return-object v0
.end method

.method public static imageWidth(Ljava/awt/image/BufferedImage;)I
    .registers 4
    .param p0, "image"    # Ljava/awt/image/BufferedImage;

    .line 73
    nop

    .line 74
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/gui;->loc$$St$DtgetWidth:Lgnu/mapping/Location;

    :try_start_5
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_5 .. :try_end_9} :catch_14

    invoke-virtual {v0, v1, p0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .end local p0    # "image":Ljava/awt/image/BufferedImage;
    :catch_14
    move-exception p0

    const/16 v0, 0x4a

    const/4 v1, 0x3

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/gui.scm"

    invoke-virtual {p0, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p0
.end method

.method static labelKeyword(Lgnu/kawa/models/Label;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Label;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 79
    nop

    .line 82
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_13

    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_28

    .line 90
    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown label attribute ~s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method static labelNonKeyword(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
    .registers 3
    .param p0, "instance"    # Lgnu/kawa/models/Label;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 92
    nop

    .line 95
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .registers 2
    .param p0, "window"    # Lgnu/kawa/models/Window;
    .param p1, "pane"    # Ljava/lang/Object;

    .line 155
    nop

    .line 156
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method

.method static textKeyword(Lgnu/kawa/models/Text;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Text;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 105
    nop

    .line 108
    sget-object v0, Lgnu/kawa/slib/gui;->Lit1:Lgnu/mapping/SimpleSymbol;

    if-ne p1, v0, :cond_13

    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_28

    .line 116
    :cond_13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown text attribute ~s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method static textNonKeyword(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .registers 3
    .param p0, "instance"    # Lgnu/kawa/models/Text;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 118
    nop

    .line 121
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_9

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p0, v0}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    return-void
.end method

.method static windowKeyword(Lgnu/kawa/models/Window;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "instance"    # Lgnu/kawa/models/Window;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 158
    nop

    .line 161
    const-string v0, "title"

    if-ne p1, v0, :cond_11

    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-interface {p0, v0}, Lgnu/kawa/models/Window;->setTitle(Ljava/lang/String;)V

    goto :goto_18

    :cond_11
    const-string v0, "content"

    if-ne p1, v0, :cond_1b

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    :goto_18
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_38

    :cond_1b
    const-string v0, "menubar"

    if-ne p1, v0, :cond_23

    invoke-interface {p0, p2}, Lgnu/kawa/models/Window;->setMenuBar(Ljava/lang/Object;)V

    goto :goto_18

    .line 167
    :cond_23
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unknown window attribute ~s"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_38
    return-object v0
.end method

.method static windowNonKeyword(Lgnu/kawa/models/Window;Ljava/lang/Object;)V
    .registers 2
    .param p0, "instance"    # Lgnu/kawa/models/Window;
    .param p1, "arg"    # Ljava/lang/Object;

    .line 169
    nop

    .line 172
    invoke-interface {p0, p1}, Lgnu/kawa/models/Window;->setContent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_4a

    .line 76
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_16

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageHeight(Ljava/awt/image/BufferedImage;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "image-height"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 73
    :pswitch_1f
    :try_start_1f
    check-cast p2, Ljava/awt/image/BufferedImage;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_21} :catch_2a

    invoke-static {p2}, Lgnu/kawa/slib/gui;->imageWidth(Ljava/awt/image/BufferedImage;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2a
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "image-width"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 70
    :pswitch_33
    :try_start_33
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_37
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_37} :catch_3c

    invoke-static {p1}, Lgnu/kawa/slib/gui;->imageRead(Lgnu/text/Path;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    return-object p1

    :catch_3c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "image-read"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 23
    :pswitch_45
    invoke-static {p2}, Lgnu/kawa/slib/gui;->asColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object p1

    return-object p1

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_6
        :pswitch_6
        :pswitch_33
        :pswitch_1f
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    .line 155
    :try_start_6
    check-cast p2, Lgnu/kawa/models/Window;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_e

    invoke-static {p2, p3}, Lgnu/kawa/slib/gui;->setContent(Lgnu/kawa/models/Window;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 v0, 0x1

    const-string v1, "set-content"

    invoke-direct {p3, p1, v1, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_18
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_2e

    .line 174
    :pswitch_5
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Window([Ljava/lang/Object;)Lgnu/kawa/models/Window;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_f
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Column([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 145
    :pswitch_14
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Row([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 123
    :pswitch_19
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Text([Ljava/lang/Object;)Lgnu/kawa/models/Text;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_1e
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Label([Ljava/lang/Object;)Lgnu/kawa/models/Label;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_23
    invoke-static {p2}, Lgnu/kawa/slib/gui;->Button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object p1

    return-object p1

    .line 55
    :pswitch_28
    invoke-static {p2}, Lgnu/kawa/slib/gui;->button([Ljava/lang/Object;)Lgnu/kawa/models/Button;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_28
        :pswitch_23
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_3c

    .line 23
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 76
    :pswitch_f
    instance-of v0, p2, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 73
    :pswitch_1b
    instance-of v0, p2, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 70
    :pswitch_27
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_34

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_34
    return v1

    .line 23
    :pswitch_35
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_a
        :pswitch_a
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_19

    .line 155
    instance-of v0, p2, Lgnu/kawa/models/Window;

    if-nez v0, :cond_e

    const p1, -0xbffff

    return p1

    :cond_e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_3e

    .line 55
    :pswitch_7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 174
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 150
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 145
    :pswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 123
    :pswitch_21
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 100
    :pswitch_28
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 60
    :pswitch_2f
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 55
    :pswitch_36
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_36
        :pswitch_2f
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 23
    nop

    .line 33
    nop

    .line 51
    nop

    .line 55
    nop

    .line 60
    nop

    .line 70
    nop

    .line 73
    nop

    .line 76
    nop

    .line 79
    nop

    .line 92
    nop

    .line 100
    nop

    .line 105
    nop

    .line 118
    nop

    .line 123
    nop

    .line 128
    nop

    .line 137
    nop

    .line 140
    nop

    .line 145
    nop

    .line 150
    nop

    .line 155
    nop

    .line 158
    nop

    .line 169
    nop

    .line 174
    return-void
.end method

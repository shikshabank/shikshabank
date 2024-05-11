.class public Lgnu/kawa/slib/printf;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n21#1,567:21\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/printf;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/lists/PairWithPosition;

.field static final Lit11:Lgnu/text/Char;

.field static final Lit12:Lgnu/text/Char;

.field static final Lit13:Lgnu/text/Char;

.field static final Lit14:Lgnu/math/IntNum;

.field static final Lit15:Lgnu/math/IntNum;

.field static final Lit16:Lgnu/math/IntNum;

.field static final Lit17:Lgnu/math/IntNum;

.field static final Lit18:Lgnu/text/Char;

.field static final Lit19:Lgnu/text/Char;

.field static final Lit2:Lgnu/lists/PairWithPosition;

.field static final Lit20:Lgnu/text/Char;

.field static final Lit21:Lgnu/text/Char;

.field static final Lit22:Lgnu/text/Char;

.field static final Lit23:Lgnu/text/Char;

.field static final Lit24:Lgnu/text/Char;

.field static final Lit25:Lgnu/text/Char;

.field static final Lit26:Lgnu/text/Char;

.field static final Lit27:Lgnu/text/Char;

.field static final Lit28:Lgnu/text/Char;

.field static final Lit29:Lgnu/text/Char;

.field static final Lit3:Lgnu/text/Char;

.field static final Lit30:Lgnu/text/Char;

.field static final Lit31:Lgnu/text/Char;

.field static final Lit32:Lgnu/text/Char;

.field static final Lit33:Lgnu/lists/PairWithPosition;

.field static final Lit34:Lgnu/mapping/SimpleSymbol;

.field static final Lit35:Lgnu/text/Char;

.field static final Lit36:Lgnu/text/Char;

.field static final Lit37:Lgnu/text/Char;

.field static final Lit38:Lgnu/text/Char;

.field static final Lit39:Lgnu/text/Char;

.field static final Lit4:Lgnu/text/Char;

.field static final Lit40:Lgnu/text/Char;

.field static final Lit41:Lgnu/text/Char;

.field static final Lit42:Lgnu/text/Char;

.field static final Lit43:Lgnu/text/Char;

.field static final Lit44:Lgnu/text/Char;

.field static final Lit45:Lgnu/math/IntNum;

.field static final Lit46:Lgnu/text/Char;

.field static final Lit47:Lgnu/text/Char;

.field static final Lit48:Lgnu/math/IntNum;

.field static final Lit49:Lgnu/text/Char;

.field static final Lit5:Lgnu/text/Char;

.field static final Lit50:Lgnu/math/IntNum;

.field static final Lit51:Lgnu/text/Char;

.field static final Lit52:Lgnu/text/Char;

.field static final Lit53:Lgnu/text/Char;

.field static final Lit54:Lgnu/text/Char;

.field static final Lit55:Lgnu/text/Char;

.field static final Lit56:Lgnu/text/Char;

.field static final Lit57:Lgnu/text/Char;

.field static final Lit58:Lgnu/text/Char;

.field static final Lit59:Lgnu/math/IntNum;

.field static final Lit6:Lgnu/text/Char;

.field static final Lit60:Lgnu/math/IntNum;

.field static final Lit61:Lgnu/math/IntNum;

.field static final Lit62:Lgnu/lists/FVector;

.field static final Lit63:Lgnu/lists/PairWithPosition;

.field static final Lit64:Lgnu/mapping/SimpleSymbol;

.field static final Lit65:Lgnu/text/Char;

.field static final Lit66:Lgnu/text/Char;

.field static final Lit67:Lgnu/mapping/SimpleSymbol;

.field static final Lit68:Lgnu/mapping/SimpleSymbol;

.field static final Lit69:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/math/IntNum;

.field static final Lit70:Lgnu/mapping/SimpleSymbol;

.field static final Lit71:Lgnu/mapping/SimpleSymbol;

.field static final Lit72:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/text/Char;

.field static final Lit9:Lgnu/text/Char;

.field public static final fprintf:Lgnu/expr/ModuleMethod;

.field public static final printf:Lgnu/expr/ModuleMethod;

.field public static final sprintf:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clhex$Mnupper$Mncase$Qu:Z

.field public static final stdio$Cliprintf:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clparse$Mnfloat:Lgnu/expr/ModuleMethod;

.field public static final stdio$Clround$Mnstring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 28

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "fprintf"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/printf;->Lit72:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "stdio:iprintf"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit71:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "stdio:round-string"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/printf;->Lit70:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "stdio:parse-float"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/printf;->Lit69:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "sprintf"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "pad"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/printf;->Lit67:Lgnu/mapping/SimpleSymbol;

    const/16 v5, 0x2a

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit66:Lgnu/text/Char;

    const/16 v5, 0x3f

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit65:Lgnu/text/Char;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "format-real"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/printf;->Lit64:Lgnu/mapping/SimpleSymbol;

    sget-object v5, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const-string v6, "i"

    const-string v7, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm"

    const v8, 0x18f00b

    invoke-static {v6, v5, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit63:Lgnu/lists/PairWithPosition;

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "y"

    const/4 v8, 0x0

    aput-object v6, v5, v8

    const-string v6, "z"

    const/4 v9, 0x1

    aput-object v6, v5, v9

    const-string v6, "a"

    const/4 v10, 0x2

    aput-object v6, v5, v10

    const-string v6, "f"

    const/4 v11, 0x3

    aput-object v6, v5, v11

    const/4 v6, 0x4

    const-string v12, "p"

    aput-object v12, v5, v6

    const-string v6, "n"

    const/4 v12, 0x5

    aput-object v6, v5, v12

    const-string v6, "u"

    const/4 v13, 0x6

    aput-object v6, v5, v13

    const/4 v6, 0x7

    const-string v14, "m"

    aput-object v14, v5, v6

    const-string v6, ""

    const/16 v14, 0x8

    aput-object v6, v5, v14

    const-string v6, "k"

    const/16 v15, 0x9

    aput-object v6, v5, v15

    const-string v6, "M"

    const/16 v16, 0xa

    aput-object v6, v5, v16

    const/16 v6, 0xb

    const-string v17, "G"

    aput-object v17, v5, v6

    const-string v6, "T"

    const/16 v17, 0xc

    aput-object v6, v5, v17

    const/16 v6, 0xd

    const-string v18, "P"

    aput-object v18, v5, v6

    const/16 v6, 0xe

    const-string v18, "E"

    aput-object v18, v5, v6

    const/16 v6, 0xf

    const-string v18, "Z"

    aput-object v18, v5, v6

    const-string v6, "Y"

    const/16 v18, 0x10

    aput-object v6, v5, v18

    invoke-static {v5}, Lgnu/lists/FVector;->make([Ljava/lang/Object;)Lgnu/lists/FVector;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit62:Lgnu/lists/FVector;

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit61:Lgnu/math/IntNum;

    const/16 v5, -0xa

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit60:Lgnu/math/IntNum;

    invoke-static {v13}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit59:Lgnu/math/IntNum;

    const/16 v5, 0x4b

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    const/16 v5, 0x6b

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    const/16 v6, 0x47

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    const/16 v6, 0x67

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    const/16 v11, 0x45

    invoke-static {v11}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    sput-object v11, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    const/16 v13, 0x42

    invoke-static {v13}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v13

    sput-object v13, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    const/16 v13, 0x62

    invoke-static {v13}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v13

    sput-object v13, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    const/16 v19, 0x58

    invoke-static/range {v19 .. v19}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v19

    sput-object v19, Lgnu/kawa/slib/printf;->Lit51:Lgnu/text/Char;

    invoke-static/range {v18 .. v18}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v18

    sput-object v18, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    const/16 v18, 0x78

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    sput-object v8, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    invoke-static {v14}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v14

    sput-object v14, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    const/16 v14, 0x4f

    invoke-static {v14}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v14

    sput-object v14, Lgnu/kawa/slib/printf;->Lit47:Lgnu/text/Char;

    const/16 v14, 0x6f

    invoke-static {v14}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v14

    sput-object v14, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    invoke-static/range {v16 .. v16}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v18

    sput-object v18, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    const/16 v18, 0x55

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v18

    sput-object v18, Lgnu/kawa/slib/printf;->Lit44:Lgnu/text/Char;

    const/16 v18, 0x75

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v9

    sput-object v9, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    const/16 v18, 0x49

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v18

    sput-object v18, Lgnu/kawa/slib/printf;->Lit42:Lgnu/text/Char;

    const/16 v18, 0x44

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    sput-object v10, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    const/16 v18, 0x41

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v18

    sput-object v18, Lgnu/kawa/slib/printf;->Lit40:Lgnu/text/Char;

    const/16 v18, 0x61

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v12

    sput-object v12, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    const/16 v18, 0x53

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    const/16 v18, 0x73

    move-object/from16 v20, v4

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    const/16 v18, 0x43

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v18

    sput-object v18, Lgnu/kawa/slib/printf;->Lit36:Lgnu/text/Char;

    const/16 v18, 0x63

    move-object/from16 v21, v0

    invoke-static/range {v18 .. v18}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    move-object/from16 v18, v1

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v2

    const-string v2, "printf"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x64

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    const/16 v23, 0x69

    move-object/from16 v24, v1

    invoke-static/range {v23 .. v23}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    const/16 v23, 0x66

    move-object/from16 v25, v3

    invoke-static/range {v23 .. v23}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    sput-object v3, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    const/16 v23, 0x65

    move-object/from16 v26, v11

    invoke-static/range {v23 .. v23}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v11

    sput-object v11, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    move-object/from16 v23, v15

    sget-object v15, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    move-object/from16 v27, v10

    const v10, 0x1b3014

    invoke-static {v5, v15, v7, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v10, 0x1b3010

    invoke-static {v6, v5, v7, v10}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b300c

    invoke-static {v11, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b3008

    invoke-static {v3, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b2028

    invoke-static {v13, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b2024

    invoke-static {v8, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b2020

    invoke-static {v14, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b201c

    invoke-static {v9, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v5

    const v6, 0x1b2018

    invoke-static {v1, v5, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x1b2014

    invoke-static {v2, v1, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x1b2010

    invoke-static {v12, v1, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x1b200c

    invoke-static {v4, v1, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v5, 0x1b2007

    invoke-static {v0, v1, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit33:Lgnu/lists/PairWithPosition;

    const/16 v0, 0x68

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit32:Lgnu/text/Char;

    const/16 v0, 0x4c

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    const/16 v1, 0x6c

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    const/16 v5, 0x20

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    const/16 v5, 0x25

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-static/range {v17 .. v17}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit27:Lgnu/text/Char;

    const/16 v5, 0x46

    invoke-static {v5}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    const/16 v6, 0x9

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    sput-object v8, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    const/16 v6, 0x54

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit23:Lgnu/text/Char;

    const/16 v6, 0x74

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit22:Lgnu/text/Char;

    invoke-static/range {v16 .. v16}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    const/16 v6, 0x4e

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit20:Lgnu/text/Char;

    const/16 v6, 0x6e

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit19:Lgnu/text/Char;

    const/16 v6, 0x5c

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit18:Lgnu/text/Char;

    const/4 v6, -0x1

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    const/16 v6, 0x9

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    const/4 v6, 0x5

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    const/4 v6, 0x2

    invoke-static {v6}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    const/16 v6, 0x2e

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    sput-object v6, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v8, 0x4102c

    invoke-static {v0, v6, v7, v8}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v6, 0x41028

    move-object/from16 v8, v27

    invoke-static {v8, v0, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v6, 0x41024

    invoke-static {v5, v0, v7, v6}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v5, 0x41020

    move-object/from16 v6, v23

    invoke-static {v6, v0, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v5, 0x4101c

    move-object/from16 v6, v26

    invoke-static {v6, v0, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v5, 0x41018

    invoke-static {v1, v0, v7, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x41014

    invoke-static {v2, v0, v7, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x41010

    invoke-static {v3, v0, v7, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x4100c

    invoke-static {v4, v0, v7, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    const v1, 0x41007

    invoke-static {v11, v0, v7, v1}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit10:Lgnu/lists/PairWithPosition;

    const/16 v0, 0x30

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    const/16 v0, 0x23

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    const/16 v0, 0x2b

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    const/16 v1, 0x2d

    invoke-static {v1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v1

    sput-object v1, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    const/16 v2, 0x40

    invoke-static {v2}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v2

    sput-object v2, Lgnu/kawa/slib/printf;->Lit4:Lgnu/text/Char;

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    const v3, 0x6d027

    invoke-static {v1, v2, v7, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v1

    const v2, 0x6d022

    invoke-static {v0, v1, v7, v2}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)Lgnu/lists/PairWithPosition;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit2:Lgnu/lists/PairWithPosition;

    const/4 v0, 0x0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    const/16 v0, -0xf

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/printf;

    invoke-direct {v0}, Lgnu/kawa/slib/printf;-><init>()V

    sput-object v0, Lgnu/kawa/slib/printf;->$instance:Lgnu/kawa/slib/printf;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    const/16 v3, 0x2002

    move-object/from16 v4, v25

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Clparse$Mnfloat:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    const/16 v3, 0x3003

    move-object/from16 v4, v22

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Clround$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    const/16 v3, -0xffe

    move-object/from16 v4, v18

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x19

    move-object/from16 v4, v21

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->fprintf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1a

    const/16 v4, -0xfff

    move-object/from16 v5, v24

    invoke-direct {v1, v0, v2, v5, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->printf:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1b

    move-object/from16 v4, v20

    invoke-direct {v1, v0, v2, v4, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/printf;->sprintf:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static fprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "port"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 543
    .local v0, "args":Lgnu/lists/LList;
    new-instance v1, Lgnu/kawa/slib/printf$frame12;

    invoke-direct {v1}, Lgnu/kawa/slib/printf$frame12;-><init>()V

    iput-object p0, v1, Lgnu/kawa/slib/printf$frame12;->port:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 544
    sget-object v2, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iput-object v2, v1, Lgnu/kawa/slib/printf$frame12;->cnt:Ljava/lang/Object;

    .line 545
    sget-object v2, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v3, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    .line 546
    iget-object v4, v1, Lgnu/kawa/slib/printf$frame12;->lambda$Fn18:Lgnu/expr/ModuleMethod;

    .line 550
    invoke-virtual {v2, v3, v4, p1, v0}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v1, v1, Lgnu/kawa/slib/printf$frame12;->cnt:Ljava/lang/Object;

    return-object v1
.end method

.method public static printf$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "format"    # Ljava/lang/Object;
    .param p1, "argsArray"    # [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 553
    .local v0, "args":Lgnu/lists/LList;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v0

    .line 554
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v2, Lgnu/kawa/slib/printf;->fprintf:Lgnu/expr/ModuleMethod;

    sget-object v3, Lkawa/lib/ports;->current$Mnoutput$Mnport:Lgnu/mapping/LocationProc;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0, v0}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/Object;
    .param p2, "argsArray"    # [Ljava/lang/Object;

    const-string v0, "substring"

    const/4 v1, 0x0

    .line 556
    .local v1, "args":Lgnu/lists/LList;
    new-instance v2, Lgnu/kawa/slib/printf$frame13;

    invoke-direct {v2}, Lgnu/kawa/slib/printf$frame13;-><init>()V

    iput-object p0, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v1

    .line 557
    sget-object v4, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iput-object v4, v2, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    .line 558
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    goto :goto_5c

    :cond_1f
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 559
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    :try_start_29
    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_30} :catch_35

    invoke-static {v4}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_5c

    .end local v1    # "args":Lgnu/lists/LList;
    .end local p0    # "str":Ljava/lang/Object;
    .end local p1    # "format":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_35
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "make-string"

    invoke-direct {p1, p0, p2, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .restart local v1    # "args":Lgnu/lists/LList;
    .restart local p0    # "str":Ljava/lang/Object;
    .restart local p1    # "format":Ljava/lang/Object;
    .restart local p2    # "argsArray":[Ljava/lang/Object;
    :cond_3e
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v6, :cond_4b

    .line 560
    const/16 v4, 0x64

    invoke-static {v4}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_5c

    .line 561
    :cond_4b
    sget-object v4, Lgnu/kawa/slib/printf;->Lit68:Lgnu/mapping/SimpleSymbol;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "first argument not understood"

    aput-object v7, v6, v3

    iget-object v7, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_5c
    iput-object v4, v2, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    .line 557
    nop

    .line 562
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_61
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_63
    .catch Ljava/lang/ClassCastException; {:try_start_61 .. :try_end_63} :catch_b4

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    .line 563
    sget-object v4, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    sget-object v6, Lgnu/kawa/slib/printf;->stdio$Cliprintf:Lgnu/expr/ModuleMethod;

    .line 564
    iget-object v7, v2, Lgnu/kawa/slib/printf$frame13;->lambda$Fn19:Lgnu/expr/ModuleMethod;

    .line 583
    nop

    .line 584
    invoke-virtual {v4, v6, v7, p1, v1}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->str:Ljava/lang/Object;

    invoke-static {v4}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 585
    iget-object v0, v2, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    goto :goto_a4

    :cond_82
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 586
    iget-object v6, v2, Lgnu/kawa/slib/printf$frame13;->end:Ljava/lang/Object;

    iget-object v7, v2, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    invoke-virtual {v4, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v6, :cond_93

    iget-object v0, v2, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    goto :goto_a4

    .line 587
    :cond_93
    iget-object v4, v2, Lgnu/kawa/slib/printf$frame13;->s:Ljava/lang/Object;

    :try_start_95
    check-cast v4, Ljava/lang/CharSequence;
    :try_end_97
    .catch Ljava/lang/ClassCastException; {:try_start_95 .. :try_end_97} :catch_ad

    iget-object v2, v2, Lgnu/kawa/slib/printf$frame13;->cnt:Ljava/lang/Object;

    :try_start_99
    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_a0
    .catch Ljava/lang/ClassCastException; {:try_start_99 .. :try_end_a0} :catch_a5

    invoke-static {v4, v3, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a4
    return-object v0

    .end local v1    # "args":Lgnu/lists/LList;
    .end local p0    # "str":Ljava/lang/Object;
    .end local p1    # "format":Ljava/lang/Object;
    .end local p2    # "argsArray":[Ljava/lang/Object;
    :catch_a5
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x3

    invoke-direct {p1, p0, v0, p2, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_ad
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v0, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 562
    :catch_b4
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "string-length"

    invoke-direct {p1, p0, p2, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 19

    .line 186
    const-string v1, "substring"

    const-string v2, "string-ref"

    const-string v3, "negative?"

    const-string v4, "string-length"

    new-instance v0, Lgnu/kawa/slib/printf$frame9;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame9;-><init>()V

    move-object/from16 v5, p0

    iput-object v5, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    move-object/from16 v5, p1

    iput-object v5, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v6

    iput-object v6, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    .line 187
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const-string v7, ""

    invoke-static {v7, v6}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_983

    .line 189
    sget-object v6, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    .line 190
    iget-object v8, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const/4 v9, 0x1

    :try_start_2d
    check-cast v8, Ljava/lang/CharSequence;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2f} :catch_97a

    invoke-static {v8}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v8

    .line 191
    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    :try_start_35
    check-cast v10, Ljava/lang/CharSequence;
    :try_end_37
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_37} :catch_971

    invoke-static {v10, v5}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v10

    invoke-static {v10}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v10

    iput-object v10, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    iput v8, v0, Lgnu/kawa/slib/printf$frame9;->fl:I

    iput-object v6, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    .line 193
    nop

    .line 197
    nop

    .line 201
    nop

    .line 203
    nop

    .line 206
    nop

    .line 209
    nop

    .line 193
    nop

    .line 216
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    :goto_4e
    new-instance v8, Lgnu/kawa/slib/printf$frame10;

    invoke-direct {v8}, Lgnu/kawa/slib/printf$frame10;-><init>()V

    iput-object v0, v8, Lgnu/kawa/slib/printf$frame10;->staticLink:Lgnu/kawa/slib/printf$frame9;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    .line 217
    nop

    .line 193
    nop

    .line 194
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iget-object v11, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    sget-object v6, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 195
    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    iget v11, v0, Lgnu/kawa/slib/printf$frame9;->fl:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_7c

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    goto :goto_93

    .line 196
    :cond_7c
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    :try_start_7e
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_80
    .catch Ljava/lang/ClassCastException; {:try_start_7e .. :try_end_80} :catch_968

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    :try_start_82
    move-object v12, v10

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_89
    .catch Ljava/lang/ClassCastException; {:try_start_82 .. :try_end_89} :catch_960

    invoke-static {v6, v10}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v6

    invoke-static {v6}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v6

    iput-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 218
    :goto_93
    nop

    .line 219
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda19isEndOfFormat()Z

    move-result v6

    .line 218
    if-eqz v6, :cond_a4

    if-eqz v6, :cond_a0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_95f

    :cond_a0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_95f

    :cond_a4
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 222
    sget-object v10, Lgnu/kawa/slib/printf;->Lit18:Lgnu/text/Char;

    iget-object v12, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v6, v10, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_153

    .line 223
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 224
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit19:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_c8

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_df

    goto :goto_d4

    :cond_c8
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit20:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_df

    .line 225
    :goto_d4
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_148

    :cond_df
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 224
    sget-object v11, Lgnu/kawa/slib/printf;->Lit22:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_f0

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_107

    goto :goto_fc

    :cond_f0
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit23:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_107

    .line 226
    :goto_fc
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit24:Lgnu/text/Char;

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_148

    :cond_107
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 224
    sget-object v11, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_118

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_12f

    goto :goto_124

    :cond_118
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_12f

    .line 228
    :goto_124
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit27:Lgnu/text/Char;

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_148

    :cond_12f
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 224
    sget-object v11, Lgnu/kawa/slib/printf;->Lit21:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_13e

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_148

    .line 230
    :cond_13e
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v11, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 224
    :goto_148
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_150

    .line 231
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    goto/16 :goto_4e

    .line 224
    :cond_150
    move-object v0, v6

    goto/16 :goto_95f

    :cond_153
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 232
    sget-object v10, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    iget-object v12, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v6, v10, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_94b

    .line 233
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 234
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    sget-object v15, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    .line 240
    sget-object v11, Lgnu/kawa/slib/printf;->Lit17:Lgnu/math/IntNum;

    .line 243
    iput-object v11, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iput-object v15, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iput-object v14, v8, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    iput-object v13, v8, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    iput-object v12, v8, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    iput-object v10, v8, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 256
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 276
    nop

    .line 306
    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->pad:Lgnu/mapping/Procedure;

    .line 256
    :goto_185
    nop

    .line 407
    nop

    .line 408
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v11, Lgnu/kawa/slib/printf;->Lit5:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_19a

    .line 409
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    goto :goto_1dd

    :cond_19a
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    sget-object v11, Lgnu/kawa/slib/printf;->Lit6:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v11, :cond_1ab

    .line 410
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    goto :goto_1dd

    :cond_1ab
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    sget-object v11, Lgnu/kawa/slib/printf;->Lit29:Lgnu/text/Char;

    invoke-virtual {v10, v6, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v12, :cond_1bc

    .line 411
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    goto :goto_1dd

    :cond_1bc
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    sget-object v12, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    invoke-virtual {v10, v6, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v12, :cond_1cd

    .line 412
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    goto :goto_1dd

    :cond_1cd
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 408
    sget-object v12, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    invoke-virtual {v10, v6, v12}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_1e1

    .line 413
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    .line 415
    :goto_1dd
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    goto :goto_185

    :cond_1e1
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_1eb

    .line 416
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    :cond_1eb
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->signed:Ljava/lang/Object;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_1f5

    .line 417
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->blank:Ljava/lang/Object;

    .line 419
    :cond_1f5
    invoke-virtual {v8}, Lgnu/kawa/slib/printf$frame10;->lambda22readFormatNumber()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_1fd
    invoke-static {v6}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v6
    :try_end_201
    .catch Ljava/lang/ClassCastException; {:try_start_1fd .. :try_end_201} :catch_942

    invoke-static {v6}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v6

    if-eqz v6, :cond_215

    .line 421
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    .line 422
    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v10, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    invoke-virtual {v6, v10}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :cond_215
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 423
    sget-object v10, Lgnu/kawa/slib/printf;->Lit11:Lgnu/text/Char;

    iget-object v13, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v6, v10, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_22c

    .line 424
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    .line 425
    invoke-virtual {v8}, Lgnu/kawa/slib/printf$frame10;->lambda22readFormatNumber()Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 426
    :cond_22c
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit30:Lgnu/text/Char;

    invoke-virtual {v10, v6, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v13, :cond_23f

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v6, :cond_261

    :goto_23e
    goto :goto_25d

    :cond_23f
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit31:Lgnu/text/Char;

    invoke-virtual {v10, v6, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v13, :cond_250

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v6, :cond_261

    goto :goto_23e

    :cond_250
    sget-object v10, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit32:Lgnu/text/Char;

    invoke-virtual {v10, v6, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_261

    goto :goto_23e

    .line 428
    :goto_25d
    nop

    .line 429
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda18mustAdvance()Ljava/lang/Object;

    :cond_261
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-static {v6}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x3

    if-eqz v6, :cond_2a5

    .line 433
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    :try_start_26c
    check-cast v6, Lgnu/text/Char;
    :try_end_26e
    .catch Ljava/lang/ClassCastException; {:try_start_26c .. :try_end_26e} :catch_29b

    invoke-static {v6}, Lkawa/lib/rnrs/unicode;->charDowncase(Lgnu/text/Char;)Lgnu/text/Char;

    move-result-object v6

    sget-object v13, Lgnu/kawa/slib/printf;->Lit33:Lgnu/lists/PairWithPosition;

    invoke-static {v6, v13}, Lkawa/lib/lists;->memv(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v13, :cond_29a

    .line 436
    nop

    .line 206
    nop

    .line 207
    sget-object v6, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    new-array v13, v10, [Ljava/lang/Object;

    const-string v14, "wrong number of arguments"

    aput-object v14, v13, v5

    iget-object v14, v0, Lgnu/kawa/slib/printf$frame9;->args:Lgnu/lists/LList;

    invoke-static {v14}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    iget-object v14, v0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v6, v13}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29a
    goto :goto_2a5

    .line 433
    :catch_29b
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-downcase"

    invoke-direct {v0, v1, v2, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 438
    :cond_2a5
    :goto_2a5
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v13, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit35:Lgnu/text/Char;

    invoke-virtual {v13, v6, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_2b8

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_2f5

    goto :goto_2c4

    :cond_2b8
    sget-object v13, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit36:Lgnu/text/Char;

    invoke-virtual {v13, v6, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_2f5

    .line 441
    :goto_2c4
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v11, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v12, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v11, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, [Ljava/lang/Object;

    if-eqz v12, :cond_2d7

    check-cast v11, [Ljava/lang/Object;

    goto :goto_2dc

    :cond_2d7
    new-array v12, v9, [Ljava/lang/Object;

    aput-object v11, v12, v5

    move-object v11, v12

    :goto_2dc
    invoke-static {v11}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_2f2

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_4e

    :cond_2f2
    move-object v0, v6

    goto/16 :goto_941

    :cond_2f5
    sget-object v13, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v14, Lgnu/kawa/slib/printf;->Lit37:Lgnu/text/Char;

    invoke-virtual {v13, v6, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v15, "symbol->string"

    const-string v10, "make-string"

    if-eq v13, v14, :cond_30a

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_450

    goto :goto_316

    :cond_30a
    sget-object v13, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v14, Lgnu/kawa/slib/printf;->Lit38:Lgnu/text/Char;

    invoke-virtual {v13, v6, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_450

    .line 445
    :goto_316
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 446
    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33b

    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :try_start_32c
    check-cast v6, Lgnu/mapping/Symbol;
    :try_end_32e
    .catch Ljava/lang/ClassCastException; {:try_start_32c .. :try_end_32e} :catch_333

    invoke-static {v6}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v6

    goto :goto_352

    :catch_333
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v15, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_33b
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 447
    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v13, :cond_34a

    const-string v6, "(NULL)"

    goto :goto_352

    .line 448
    :cond_34a
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v13}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 449
    :goto_352
    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_354
    invoke-static {v13}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v13
    :try_end_358
    .catch Ljava/lang/ClassCastException; {:try_start_354 .. :try_end_358} :catch_448

    invoke-static {v13}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v13

    if-eqz v13, :cond_361

    if-nez v13, :cond_398

    goto :goto_378

    :cond_361
    sget-object v13, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 450
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_365
    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;
    :try_end_368
    .catch Ljava/lang/ClassCastException; {:try_start_365 .. :try_end_368} :catch_440

    invoke-static {v15}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v13, v14, :cond_398

    .line 451
    :goto_378
    :try_start_378
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_37a
    .catch Ljava/lang/ClassCastException; {:try_start_378 .. :try_end_37a} :catch_390

    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_37c
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v13
    :try_end_383
    .catch Ljava/lang/ClassCastException; {:try_start_37c .. :try_end_383} :catch_388

    invoke-static {v6, v5, v13}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_398

    :catch_388
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_390
    move-exception v0

    move-object v2, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v2, v1, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 452
    :cond_398
    :goto_398
    nop

    .line 453
    sget-object v13, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 454
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_39d
    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;
    :try_end_3a0
    .catch Ljava/lang/ClassCastException; {:try_start_39d .. :try_end_3a0} :catch_438

    invoke-static {v15}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_3b1

    goto :goto_414

    :cond_3b1
    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_3e9

    sget-object v12, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 457
    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_3bb
    move-object v14, v6

    check-cast v14, Ljava/lang/CharSequence;
    :try_end_3be
    .catch Ljava/lang/ClassCastException; {:try_start_3bb .. :try_end_3be} :catch_3e1

    invoke-static {v14}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :try_start_3ca
    move-object v13, v12

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_3d1
    .catch Ljava/lang/ClassCastException; {:try_start_3ca .. :try_end_3d1} :catch_3da

    invoke-static {v10, v11}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v6, v10}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    goto :goto_414

    :catch_3da
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v10, v9, v12}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3e1
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_3e9
    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 460
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    :try_start_3ed
    move-object v15, v6

    check-cast v15, Ljava/lang/CharSequence;
    :try_end_3f0
    .catch Ljava/lang/ClassCastException; {:try_start_3ed .. :try_end_3f0} :catch_430

    invoke-static {v15}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :try_start_3fc
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_403
    .catch Ljava/lang/ClassCastException; {:try_start_3fc .. :try_end_403} :catch_429

    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->leading$Mn0s:Ljava/lang/Object;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v13, v14, :cond_40b

    .line 461
    move-object v11, v12

    goto :goto_40c

    :cond_40b
    nop

    :goto_40c
    invoke-static {v10, v11}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10, v6}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v6

    :goto_414
    invoke-virtual {v0, v6}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 452
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v10, :cond_426

    .line 463
    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_4e

    .line 452
    :cond_426
    move-object v0, v6

    goto/16 :goto_941

    .line 460
    :catch_429
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v10, v9, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_430
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 454
    :catch_438
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 450
    :catch_440
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 449
    :catch_448
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v3, v9, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 452
    :cond_450
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v13, Lgnu/kawa/slib/printf;->Lit39:Lgnu/text/Char;

    invoke-virtual {v12, v6, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_461

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_60b

    goto :goto_46d

    :cond_461
    sget-object v12, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v13, Lgnu/kawa/slib/printf;->Lit40:Lgnu/text/Char;

    invoke-virtual {v12, v6, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_60b

    .line 467
    :goto_46d
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    iput-object v7, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    .line 468
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 469
    iget-object v12, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v12}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v12, v8, Lgnu/kawa/slib/printf$frame10;->alternate$Mnform:Ljava/lang/Object;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v13, :cond_484

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_486

    :cond_484
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_486
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 470
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v15, :cond_4a3

    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_490
    invoke-static {v14}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v14
    :try_end_494
    .catch Ljava/lang/ClassCastException; {:try_start_490 .. :try_end_494} :catch_49b

    invoke-static {v14}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v14

    if-eqz v14, :cond_4ae

    goto :goto_4a7

    :catch_49b
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v3, v9, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_4a3
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v15, :cond_4ae

    .line 471
    :goto_4a7
    sget-object v14, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iput-object v14, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 472
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    goto :goto_4cc

    :cond_4ae
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v14, v15, :cond_4b7

    .line 476
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    goto :goto_4cc

    :cond_4b7
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    :try_start_4b9
    invoke-static {v14}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v14
    :try_end_4bd
    .catch Ljava/lang/ClassCastException; {:try_start_4b9 .. :try_end_4bd} :catch_602

    invoke-static {v14}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v14

    if-eqz v14, :cond_4ca

    .line 483
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iput-object v14, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    .line 484
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->lambda$Fn15:Lgnu/expr/ModuleMethod;

    goto :goto_4cc

    .line 494
    :cond_4ca
    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->lambda$Fn16:Lgnu/expr/ModuleMethod;

    :goto_4cc
    invoke-static {v6, v12, v13, v14}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v12, :cond_4ea

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_4d7
    invoke-static {v6}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v6
    :try_end_4db
    .catch Ljava/lang/ClassCastException; {:try_start_4d7 .. :try_end_4db} :catch_4e2

    invoke-static {v6}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v6

    if-eqz v6, :cond_521

    goto :goto_4ee

    :catch_4e2
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v3, v9, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_4ea
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v12, :cond_521

    .line 503
    :goto_4ee
    sget-object v6, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 504
    iget-object v12, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v6, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v12, :cond_5d0

    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v12, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v15, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :try_start_50a
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v10
    :try_end_511
    .catch Ljava/lang/ClassCastException; {:try_start_50a .. :try_end_511} :catch_51a

    invoke-static {v10, v11}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v6, v12, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5d0

    :catch_51a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v10, v9, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_521
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->left$Mnadjust:Ljava/lang/Object;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v12, :cond_56b

    .line 506
    sget-object v6, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 507
    iget-object v12, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iget-object v15, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v13, v14, v15}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v12, :cond_56a

    .line 508
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v12, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v13, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v14, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    sget-object v15, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v5, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    iget-object v9, v8, Lgnu/kawa/slib/printf$frame10;->pr:Ljava/lang/Object;

    invoke-virtual {v15, v5, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v14, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_553
    move-object v9, v5

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v5
    :try_end_55a
    .catch Ljava/lang/ClassCastException; {:try_start_553 .. :try_end_55a} :catch_562

    invoke-static {v5, v11}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v12, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56a

    :catch_562
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v10, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :cond_56a
    :goto_56a
    goto :goto_5d0

    .line 509
    :cond_56b
    iget-object v5, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    :try_start_56d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_56f
    .catch Ljava/lang/ClassCastException; {:try_start_56d .. :try_end_56f} :catch_5f7

    if-eq v5, v6, :cond_573

    const/4 v5, 0x1

    goto :goto_574

    :cond_573
    const/4 v5, 0x0

    :goto_574
    const/4 v6, 0x1

    add-int/2addr v5, v6

    and-int/2addr v5, v6

    .line 502
    if-eqz v5, :cond_57a

    goto :goto_5d0

    :cond_57a
    sget-object v5, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    .line 510
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v9, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    :try_start_580
    check-cast v9, Ljava/lang/CharSequence;
    :try_end_582
    .catch Ljava/lang/ClassCastException; {:try_start_580 .. :try_end_582} :catch_5ee

    invoke-static {v9}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_59c

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v9, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d0

    .line 511
    :cond_59c
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v9, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    .line 512
    iget-object v12, v8, Lgnu/kawa/slib/printf$frame10;->width:Ljava/lang/Object;

    iget-object v13, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    :try_start_5a6
    check-cast v13, Ljava/lang/CharSequence;
    :try_end_5a8
    .catch Ljava/lang/ClassCastException; {:try_start_5a6 .. :try_end_5a8} :catch_5e5

    invoke-static {v13}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    :try_start_5b4
    move-object v12, v9

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v9
    :try_end_5bb
    .catch Ljava/lang/ClassCastException; {:try_start_5b4 .. :try_end_5bb} :catch_5dd

    invoke-static {v9, v11}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 511
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_5d0

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 513
    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v9, v8, Lgnu/kawa/slib/printf$frame10;->os:Ljava/lang/Object;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    :cond_5d0
    :goto_5d0
    nop

    .line 514
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 512
    :catch_5dd
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v10, v2, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_5e5
    move-exception v0

    const/4 v2, 0x1

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v2, v13}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 510
    :catch_5ee
    move-exception v0

    const/4 v2, 0x1

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v2, v9}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 509
    :catch_5f7
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "x"

    invoke-direct {v0, v1, v3, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 482
    :catch_602
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2, v14}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 514
    :cond_60b
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v9, Lgnu/kawa/slib/printf;->Lit12:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_61c

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_694

    :goto_61b
    goto :goto_66d

    :cond_61c
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit41:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_62d

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_694

    goto :goto_61b

    :cond_62d
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit3:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_63e

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_694

    goto :goto_61b

    :cond_63e
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit42:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_64f

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_694

    goto :goto_61b

    :cond_64f
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit43:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_660

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_694

    goto :goto_61b

    :cond_660
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit44:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_694

    goto :goto_61b

    .line 516
    :goto_66d
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit45:Lgnu/math/IntNum;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5, v6, v9}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_691

    .line 517
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 516
    :cond_691
    move-object v0, v5

    goto/16 :goto_941

    :cond_694
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v9, Lgnu/kawa/slib/printf;->Lit46:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_6a5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_6d8

    goto :goto_6b1

    :cond_6a5
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit47:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_6d8

    .line 519
    :goto_6b1
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit48:Lgnu/math/IntNum;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5, v6, v9}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_6d5

    .line 520
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 519
    :cond_6d5
    move-object v0, v5

    goto/16 :goto_941

    :cond_6d8
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v9, Lgnu/kawa/slib/printf;->Lit49:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_712

    .line 522
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 523
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    sget-boolean v9, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    if-eqz v9, :cond_6f5

    .line 524
    sget-object v9, Lkawa/lib/rnrs/unicode;->string$Mndowncase:Lgnu/expr/ModuleMethod;

    goto :goto_6f7

    :cond_6f5
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6f7
    invoke-virtual {v8, v5, v6, v9}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 522
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_70f

    .line 525
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 522
    :cond_70f
    move-object v0, v5

    goto/16 :goto_941

    :cond_712
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v9, Lgnu/kawa/slib/printf;->Lit51:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_74c

    .line 527
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 528
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit50:Lgnu/math/IntNum;

    sget-boolean v9, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    if-eqz v9, :cond_72f

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_731

    .line 529
    :cond_72f
    sget-object v9, Lkawa/lib/rnrs/unicode;->string$Mnupcase:Lgnu/expr/ModuleMethod;

    :goto_731
    invoke-virtual {v8, v5, v6, v9}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 527
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_749

    .line 530
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 527
    :cond_749
    move-object v0, v5

    goto/16 :goto_941

    :cond_74c
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v9, Lgnu/kawa/slib/printf;->Lit52:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_75d

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_790

    goto :goto_769

    :cond_75d
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v9, Lgnu/kawa/slib/printf;->Lit53:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v9, :cond_790

    .line 532
    :goto_769
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v5, v6, v9}, Lgnu/kawa/slib/printf$frame10;->lambda24integerConvert(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_78d

    .line 533
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    .line 532
    :cond_78d
    move-object v0, v5

    goto/16 :goto_941

    :cond_790
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v9, Lgnu/kawa/slib/printf;->Lit28:Lgnu/text/Char;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_7b1

    .line 534
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v5, v6, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7ae

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_4e

    :cond_7ae
    move-object v0, v5

    goto/16 :goto_941

    :cond_7b1
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 438
    sget-object v10, Lgnu/kawa/slib/printf;->Lit25:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_7c6

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    :goto_7c1
    goto/16 :goto_839

    :cond_7c3
    const/4 v5, 0x0

    goto/16 :goto_908

    :cond_7c6
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit26:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_7d7

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    goto :goto_7c1

    :cond_7d7
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit13:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_7e8

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    goto :goto_7c1

    :cond_7e8
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit54:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_7f9

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    goto :goto_7c1

    :cond_7f9
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_80a

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    goto :goto_7c1

    :cond_80a
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit56:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_81b

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    goto :goto_7c1

    :cond_81b
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit57:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v10, :cond_82c

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_7c3

    goto :goto_7c1

    :cond_82c
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit58:Lgnu/text/Char;

    invoke-virtual {v5, v6, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_907

    goto :goto_7c1

    .line 536
    :goto_839
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    .line 306
    new-instance v9, Lgnu/kawa/slib/printf$frame11;

    invoke-direct {v9}, Lgnu/kawa/slib/printf$frame11;-><init>()V

    iput-object v8, v9, Lgnu/kawa/slib/printf$frame11;->staticLink:Lgnu/kawa/slib/printf$frame10;

    iput-object v6, v9, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    .line 307
    nop

    .line 330
    nop

    .line 346
    nop

    .line 355
    nop

    .line 307
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_852
    invoke-static {v6}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v6
    :try_end_856
    .catch Ljava/lang/ClassCastException; {:try_start_852 .. :try_end_856} :catch_8fe

    invoke-static {v6}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v6

    if-eqz v6, :cond_861

    .line 376
    sget-object v6, Lgnu/kawa/slib/printf;->Lit59:Lgnu/math/IntNum;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    goto :goto_889

    .line 377
    :cond_861
    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    :try_start_863
    check-cast v6, Ljava/lang/Number;
    :try_end_865
    .catch Ljava/lang/ClassCastException; {:try_start_863 .. :try_end_865} :catch_8f3

    invoke-static {v6}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v6

    if-eqz v6, :cond_883

    iget-object v6, v9, Lgnu/kawa/slib/printf$frame11;->fc:Ljava/lang/Object;

    :try_start_86d
    check-cast v6, Lgnu/text/Char;
    :try_end_86f
    .catch Ljava/lang/ClassCastException; {:try_start_86d .. :try_end_86f} :catch_878

    sget-object v10, Lgnu/kawa/slib/printf;->Lit55:Lgnu/text/Char;

    invoke-static {v6, v10}, Lkawa/lib/rnrs/unicode;->isCharCi$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v6

    if-eqz v6, :cond_889

    goto :goto_885

    .line 378
    :catch_878
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "char-ci=?"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 377
    :cond_883
    if-eqz v6, :cond_889

    .line 379
    :goto_885
    sget-object v6, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iput-object v6, v8, Lgnu/kawa/slib/printf$frame10;->precision:Ljava/lang/Object;

    .line 380
    :cond_889
    :goto_889
    nop

    .line 381
    invoke-static {v5}, Lkawa/lib/numbers;->isNumber(Ljava/lang/Object;)Z

    move-result v6

    const-string v10, "???"

    if-eqz v6, :cond_8a8

    .line 382
    :try_start_892
    check-cast v5, Ljava/lang/Number;
    :try_end_894
    .catch Ljava/lang/ClassCastException; {:try_start_892 .. :try_end_894} :catch_89d

    invoke-static {v5}, Lkawa/lib/numbers;->exact$To$Inexact(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v5

    invoke-static {v5}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_8c6

    :catch_89d
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "exact->inexact"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :cond_8a8
    invoke-static {v5}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8af

    .line 383
    goto :goto_8c6

    :cond_8af
    invoke-static {v5}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c5

    .line 384
    :try_start_8b5
    check-cast v5, Lgnu/mapping/Symbol;
    :try_end_8b7
    .catch Ljava/lang/ClassCastException; {:try_start_8b5 .. :try_end_8b7} :catch_8bc

    invoke-static {v5}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8c6

    :catch_8bc
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v15, v2, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 385
    :cond_8c5
    move-object v5, v10

    .line 386
    :goto_8c6
    iget-object v6, v9, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    iput-object v6, v9, Lgnu/kawa/slib/printf$frame11;->format$Mnreal:Lgnu/mapping/Procedure;

    .line 400
    iget-object v6, v9, Lgnu/kawa/slib/printf$frame11;->lambda$Fn17:Lgnu/expr/ModuleMethod;

    invoke-static {v5, v6}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_8d7

    move-object v6, v5

    const/4 v5, 0x0

    goto :goto_8de

    :cond_8d7
    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v10, v6}, Lgnu/kawa/slib/printf$frame10;->lambda23pad$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_8de
    invoke-virtual {v0, v6}, Lgnu/kawa/slib/printf$frame9;->lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 536
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v9, :cond_8f1

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    iget-object v8, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    invoke-virtual {v6, v8}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v9, 0x1

    goto/16 :goto_4e

    :cond_8f1
    move-object v0, v6

    goto :goto_941

    .line 377
    :catch_8f3
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "zero?"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 375
    :catch_8fe
    move-exception v0

    const/4 v4, 0x1

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v3, v4, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 438
    :cond_907
    const/4 v5, 0x0

    .line 538
    :goto_908
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda19isEndOfFormat()Z

    move-result v6

    if-eqz v6, :cond_913

    .line 539
    invoke-virtual {v0}, Lgnu/kawa/slib/printf$frame9;->lambda20incomplete()Ljava/lang/Object;

    move-result-object v0

    goto :goto_941

    .line 540
    :cond_913
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v6, v10, v9}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v9, :cond_940

    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v6, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v9, :cond_940

    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit65:Lgnu/text/Char;

    invoke-virtual {v6, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v9, :cond_940

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    const/4 v9, 0x1

    goto/16 :goto_4e

    :cond_940
    move-object v0, v6

    :goto_941
    goto :goto_95f

    .line 420
    :catch_942
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 541
    :cond_94b
    sget-object v6, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v9, v0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    iget-object v10, v0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    invoke-virtual {v6, v9, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v9, :cond_95e

    iget-object v6, v8, Lgnu/kawa/slib/printf$frame10;->args:Ljava/lang/Object;

    const/4 v9, 0x1

    goto/16 :goto_4e

    :cond_95e
    move-object v0, v6

    :goto_95f
    goto :goto_985

    .line 196
    :catch_960
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_968
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 191
    :catch_971
    move-exception v0

    const/4 v3, 0x1

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v2, v3, v10}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 190
    :catch_97a
    move-exception v0

    const/4 v3, 0x1

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v4, v3, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 541
    :cond_983
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_985
    return-object v0
.end method

.method public static stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "str"    # Ljava/lang/Object;
    .param p1, "proc"    # Ljava/lang/Object;

    .line 34
    new-instance v0, Lgnu/kawa/slib/printf$frame;

    invoke-direct {v0}, Lgnu/kawa/slib/printf$frame;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    iput-object p1, v0, Lgnu/kawa/slib/printf$frame;->proc:Ljava/lang/Object;

    .line 35
    iget-object v1, v0, Lgnu/kawa/slib/printf$frame;->str:Ljava/lang/Object;

    :try_start_b
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_24

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Lgnu/kawa/slib/printf$frame;->n:I

    .line 36
    nop

    .line 37
    nop

    .line 45
    nop

    .line 51
    nop

    .line 57
    nop

    .line 62
    nop

    .line 75
    nop

    .line 36
    nop

    .line 105
    sget-object v1, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    iget-object v2, v0, Lgnu/kawa/slib/printf$frame;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/printf$frame;->lambda4real(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 35
    .end local p0    # "str":Ljava/lang/Object;
    .end local p1    # "proc":Ljava/lang/Object;
    :catch_24
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v0, 0x1

    const-string v2, "string-length"

    invoke-direct {p1, p0, v2, v0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "string-ref"

    new-instance v3, Lgnu/kawa/slib/printf$frame8;

    invoke-direct {v3}, Lgnu/kawa/slib/printf$frame8;-><init>()V

    move-object/from16 v4, p0

    iput-object v4, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    .line 139
    iget-object v4, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    invoke-static {v4}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 141
    sget-object v6, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v6, v0, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v9, 0x3

    const-string v11, "x"

    const-string v12, "substring"

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eq v6, v8, :cond_2f

    const-string v0, ""

    move-object v6, v0

    goto/16 :goto_1b6

    :cond_2f
    sget-object v6, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 142
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v8, :cond_42

    iget-object v0, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    move-object v6, v0

    goto/16 :goto_1b6

    :cond_42
    sget-object v6, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v15, "zero?"

    if-eq v6, v8, :cond_b7

    .line 144
    new-array v6, v13, [Ljava/lang/Object;

    aput-object v7, v6, v14

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v8, :cond_5d

    move-object v0, v1

    :cond_5d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-static {v6}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 145
    :try_start_6b
    move-object v0, v6

    check-cast v0, Ljava/lang/Number;
    :try_end_6e
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_6e} :catch_af

    invoke-static {v0}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    goto :goto_a3

    .line 147
    :cond_77
    new-array v0, v13, [Ljava/lang/Object;

    iget-object v7, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    aput-object v7, v0, v14

    :try_start_7d
    move-object v7, v6

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6
    :try_end_84
    .catch Ljava/lang/ClassCastException; {:try_start_7d .. :try_end_84} :catch_a6

    iget-object v3, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/rnrs/unicode;->isCharNumeric(Lgnu/text/Char;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 149
    sget-object v3, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    goto :goto_99

    :cond_97
    sget-object v3, Lgnu/kawa/slib/printf;->Lit8:Lgnu/text/Char;

    :goto_99
    invoke-static {v6, v3}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {v0}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v0

    :goto_a3
    move-object v6, v0

    goto/16 :goto_1b6

    .line 148
    :catch_a6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-string"

    invoke-direct {v1, v0, v2, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 145
    :catch_af
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v15, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 153
    :cond_b7
    iget-object v6, v3, Lgnu/kawa/slib/printf$frame8;->str:Ljava/lang/CharSequence;

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_c1
    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_c9
    .catch Ljava/lang/ClassCastException; {:try_start_c1 .. :try_end_c9} :catch_254

    invoke-static {v6, v14, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 154
    nop

    .line 159
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v7, v8, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 160
    sget-object v8, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit15:Lgnu/math/IntNum;

    invoke-virtual {v8, v7, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_e0
    move-object/from16 v16, v8

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_e8
    .catch Ljava/lang/ClassCastException; {:try_start_e0 .. :try_end_e8} :catch_24c

    if-eqz v8, :cond_ed

    if-eqz v8, :cond_1b5

    goto :goto_141

    .line 161
    :cond_ed
    sget-object v8, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v8, v7, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_f3
    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_fa
    .catch Ljava/lang/ClassCastException; {:try_start_f3 .. :try_end_fa} :catch_244

    if-eqz v7, :cond_13f

    .line 162
    nop

    .line 161
    nop

    .line 162
    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit14:Lgnu/math/IntNum;

    invoke-virtual {v7, v8, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 163
    :goto_106
    sget-object v8, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v7, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v8, v10, :cond_122

    .line 164
    invoke-virtual {v3, v0}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    and-int/2addr v4, v5

    if-eqz v4, :cond_1b5

    goto :goto_141

    .line 165
    :cond_122
    invoke-virtual {v3, v7}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :try_start_126
    check-cast v8, Ljava/lang/Number;
    :try_end_128
    .catch Ljava/lang/ClassCastException; {:try_start_126 .. :try_end_128} :catch_137

    invoke-static {v8}, Lkawa/lib/numbers;->isZero(Ljava/lang/Number;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 166
    sget-object v8, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v10, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v8, v7, v10}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_106

    .line 165
    :catch_137
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v15, v5, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 161
    :cond_13f
    if-eqz v7, :cond_1b5

    .line 168
    :cond_141
    :goto_141
    move-object v4, v0

    .line 169
    :goto_142
    invoke-virtual {v3, v4}, Lgnu/kawa/slib/printf$frame8;->lambda17dig(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    sget-object v7, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    sget-object v8, Lgnu/kawa/slib/printf;->Lit16:Lgnu/math/IntNum;

    invoke-virtual {v7, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "string-set!"

    if-eq v7, v8, :cond_18d

    .line 171
    :try_start_154
    move-object v3, v6

    check-cast v3, Lgnu/lists/CharSeq;
    :try_end_157
    .catch Ljava/lang/ClassCastException; {:try_start_154 .. :try_end_157} :catch_185

    :try_start_157
    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_15e
    .catch Ljava/lang/ClassCastException; {:try_start_157 .. :try_end_15e} :catch_17e

    sget-object v7, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 173
    sget-object v8, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v7, v0, v8}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :try_start_166
    check-cast v7, Ljava/lang/Number;
    :try_end_168
    .catch Ljava/lang/ClassCastException; {:try_start_166 .. :try_end_168} :catch_174

    invoke-static {v7}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, v14}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v3, v4, v0}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 176
    goto :goto_1b5

    .line 173
    :catch_174
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "number->string"

    invoke-direct {v0, v1, v2, v5, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 171
    :catch_17e
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v10, v13, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_185
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v10, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 174
    :cond_18d
    nop

    .line 175
    :try_start_18e
    move-object v0, v6

    check-cast v0, Lgnu/lists/CharSeq;
    :try_end_191
    .catch Ljava/lang/ClassCastException; {:try_start_18e .. :try_end_191} :catch_1ad

    :try_start_191
    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_198
    .catch Ljava/lang/ClassCastException; {:try_start_191 .. :try_end_198} :catch_1a6

    const/16 v8, 0x30

    invoke-static {v0, v7, v8}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 176
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v0, v4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_142

    .line 175
    :catch_1a6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v10, v13, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1ad
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v10, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 177
    :cond_1b5
    :goto_1b5
    nop

    .line 178
    :goto_1b6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v0, :cond_243

    .line 179
    :try_start_1ba
    move-object v0, v6

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_1bd
    .catch Ljava/lang/ClassCastException; {:try_start_1ba .. :try_end_1bd} :catch_239

    invoke-static {v0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v3, v0

    .line 180
    :goto_1c7
    sget-object v0, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    invoke-virtual {v0, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_1cd
    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1d4
    .catch Ljava/lang/ClassCastException; {:try_start_1cd .. :try_end_1d4} :catch_231

    if-eqz v0, :cond_1d9

    if-eqz v0, :cond_219

    :goto_1d8
    goto :goto_1f4

    :cond_1d9
    sget-object v0, Lgnu/kawa/slib/printf;->Lit9:Lgnu/text/Char;

    :try_start_1db
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;
    :try_end_1de
    .catch Ljava/lang/ClassCastException; {:try_start_1db .. :try_end_1de} :catch_229

    :try_start_1de
    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_1e5
    .catch Ljava/lang/ClassCastException; {:try_start_1de .. :try_end_1e5} :catch_222

    invoke-static {v4, v7}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v4

    invoke-static {v4}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v4

    invoke-static {v0, v4}, Lkawa/lib/characters;->isChar$Eq(Lgnu/text/Char;Lgnu/text/Char;)Z

    move-result v0

    if-nez v0, :cond_219

    goto :goto_1d8

    .line 182
    :goto_1f4
    :try_start_1f4
    check-cast v6, Ljava/lang/CharSequence;
    :try_end_1f6
    .catch Ljava/lang/ClassCastException; {:try_start_1f4 .. :try_end_1f6} :catch_211

    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v0, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_start_1fe
    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_205
    .catch Ljava/lang/ClassCastException; {:try_start_1fe .. :try_end_205} :catch_20a

    invoke-static {v6, v14, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 183
    goto :goto_243

    .line 182
    :catch_20a
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    invoke-direct {v2, v0, v12, v9, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    :catch_211
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v12, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 183
    :cond_219
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    invoke-virtual {v0, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1c7

    .line 181
    :catch_222
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v2, v13, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_229
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, v1, v2, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 180
    :catch_231
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v11, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 179
    :catch_239
    move-exception v0

    move-object v1, v0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    invoke-direct {v0, v1, v2, v5, v6}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 178
    :cond_243
    :goto_243
    return-object v6

    .line 161
    :catch_244
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v11, v2, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 160
    :catch_24c
    move-exception v0

    const/4 v2, -0x2

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v11, v2, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 153
    :catch_254
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, v0, v12, v9, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_25c

    :goto_25b
    throw v1

    :goto_25c
    goto :goto_25b
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_b

    .line 34
    invoke-static {p2, p3}, Lgnu/kawa/slib/printf;->stdio$ClParseFloat(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_17

    .line 138
    :try_start_6
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_d

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/printf;->stdio$ClRoundString(Ljava/lang/CharSequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_d
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    const-string v0, "stdio:round-string"

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_17
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_6e

    .line 556
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_c
    aget-object p1, p2, v1

    aget-object v0, p2, v2

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v3, v1, [Ljava/lang/Object;

    :goto_15
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1e

    invoke-static {p1, v0, v3}, Lgnu/kawa/slib/printf;->sprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1e
    add-int/lit8 v2, v1, 0x2

    aget-object v2, p2, v2

    aput-object v2, v3, v1

    goto :goto_15

    .line 553
    :pswitch_25
    aget-object p1, p2, v1

    array-length v0, p2

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/Object;

    :goto_2b
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_34

    invoke-static {p1, v3}, Lgnu/kawa/slib/printf;->printf$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_34
    add-int/lit8 v1, v0, 0x1

    aget-object v1, p2, v1

    aput-object v1, v3, v0

    goto :goto_2b

    .line 543
    :pswitch_3b
    aget-object p1, p2, v1

    aget-object v0, p2, v2

    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v3, v1, [Ljava/lang/Object;

    :goto_44
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_4d

    invoke-static {p1, v0, v3}, Lgnu/kawa/slib/printf;->fprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4d
    add-int/lit8 v2, v1, 0x2

    aget-object v2, p2, v2

    aput-object v2, v3, v1

    goto :goto_44

    .line 186
    :pswitch_54
    aget-object v0, p2, v1

    aget-object v1, p2, v2

    array-length p1, p2

    add-int/lit8 p1, p1, -0x2

    new-array v2, p1, [Ljava/lang/Object;

    :goto_5d
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_66

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_66
    add-int/lit8 v3, p1, 0x2

    aget-object v3, p2, v3

    aput-object v3, v2, p1

    goto :goto_5d

    nop

    :pswitch_data_6e
    .packed-switch 0x18
        :pswitch_54
        :pswitch_3b
        :pswitch_25
        :pswitch_c
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_11

    .line 34
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1b

    .line 138
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_17
    const p1, -0xbffff

    return p1

    :cond_1b
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_28

    .line 186
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 556
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 553
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 543
    :pswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 186
    :pswitch_21
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_28
    .packed-switch 0x18
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 21
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 24
    sget-object v1, Lgnu/kawa/slib/printf;->Lit0:Lgnu/math/IntNum;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkawa/lib/numbers;->number$To$String(Ljava/lang/Number;I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "-F"

    invoke-static {v2, v1}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lgnu/kawa/slib/printf;->stdio$Clhex$Mnupper$Mncase$Qu:Z

    .line 34
    nop

    .line 138
    nop

    .line 186
    nop

    .line 543
    nop

    .line 553
    nop

    .line 556
    return-void
.end method

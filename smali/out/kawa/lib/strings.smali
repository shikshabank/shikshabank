.class public Lkawa/lib/strings;
.super Lgnu/expr/ModuleBody;
.source "strings.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nstrings.scm\nScheme\n*S Scheme\n*F\n+ 1 strings.scm\n/u2/home/jis/ai2-kawa/kawa/lib/strings.scm\n*L\n1#1,101:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/strings;

.field public static final $make$string$:Lgnu/expr/ModuleMethod;

.field static final Lit0:Lgnu/text/Char;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

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

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final list$Mn$Grstring:Lgnu/expr/ModuleMethod;

.field public static final make$Mnstring:Lgnu/expr/ModuleMethod;

.field public static final string$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Gr$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Ls$Qu:Lgnu/expr/ModuleMethod;

.field public static final string$Mn$Grlist:Lgnu/expr/ModuleMethod;

.field public static final string$Mnappend:Lgnu/expr/ModuleMethod;

.field public static final string$Mnappend$Slshared:Lgnu/expr/ModuleMethod;

.field public static final string$Mncapitalize:Lgnu/expr/ModuleMethod;

.field public static final string$Mncapitalize$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final string$Mndowncase$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final string$Mnref:Lgnu/expr/ModuleMethod;

.field public static final string$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Mnupcase$Ex:Lgnu/expr/ModuleMethod;

.field public static final string$Qu:Lgnu/expr/ModuleMethod;

.field public static final substring:Lgnu/expr/ModuleMethod;


# direct methods
.method public static varargs $make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "args"    # [Ljava/lang/Object;

    .line 12
    nop

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    .line 14
    .local v0, "n":I
    new-instance v1, Lgnu/lists/FString;

    invoke-direct {v1, v0}, Lgnu/lists/FString;-><init>(I)V

    const/4 v2, 0x0

    .line 15
    .local v1, "str":Lgnu/lists/FString;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1a

    .line 17
    aget-object v3, p0, v2

    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v3}, Lgnu/text/Char;->charValue()C

    move-result v3

    invoke-virtual {v1, v2, v3}, Lgnu/lists/FString;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 16
    :cond_1a
    nop

    .end local v0    # "n":I
    .end local v1    # "str":Lgnu/lists/FString;
    .end local v2    # "i":I
    return-object v1
.end method

.method public static constructor <clinit>()V
    .registers 26

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-append/shared"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "string-append"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "string-capitalize"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/strings;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "string-capitalize!"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/strings;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "string-downcase!"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/strings;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "string-upcase!"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/strings;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "string-fill!"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/strings;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "string-copy"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/strings;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "list->string"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/strings;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "string->list"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/strings;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "substring"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/strings;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "string>=?"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/strings;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "string<=?"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/strings;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "string>?"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/strings;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "string<?"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/strings;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "string=?"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/strings;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "string-set!"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/strings;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "string-ref"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/strings;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "string-length"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/strings;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v4

    const-string v4, "$make$string$"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/strings;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v5

    const-string v5, "make-string"

    invoke-direct {v15, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/strings;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    const-string v6, "string?"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/strings;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v15, 0x20

    invoke-static {v15}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v15

    sput-object v15, Lkawa/lib/strings;->Lit0:Lgnu/text/Char;

    new-instance v15, Lkawa/lib/strings;

    invoke-direct {v15}, Lkawa/lib/strings;-><init>()V

    sput-object v15, Lkawa/lib/strings;->$instance:Lkawa/lib/strings;

    move-object/from16 v23, v7

    new-instance v7, Lgnu/expr/ModuleMethod;

    move-object/from16 v24, v8

    const/4 v8, 0x1

    move-object/from16 v25, v9

    const/16 v9, 0x1001

    invoke-direct {v7, v15, v8, v6, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/strings;->string$Qu:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x2

    const/16 v8, 0x2001

    invoke-direct {v6, v15, v7, v5, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/strings;->make$Mnstring:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x4

    const/16 v7, -0x1000

    invoke-direct {v5, v15, v6, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/strings;->$make$string$:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x5

    invoke-direct {v4, v15, v5, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/strings;->string$Mnlength:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x6

    const/16 v5, 0x2002

    invoke-direct {v3, v15, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/strings;->string$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x7

    const/16 v4, 0x3003

    invoke-direct {v2, v15, v3, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/strings;->string$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    invoke-direct {v1, v15, v2, v0, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/strings;->string$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    invoke-direct {v0, v15, v1, v14, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Ls$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    invoke-direct {v0, v15, v1, v13, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Gr$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    invoke-direct {v0, v15, v1, v12, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Ls$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v11, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Gr$Eq$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    invoke-direct {v0, v15, v1, v10, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->substring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    move-object/from16 v2, v25

    invoke-direct {v0, v15, v1, v2, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mn$Grlist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    move-object/from16 v8, v24

    invoke-direct {v0, v15, v1, v8, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->list$Mn$Grstring:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    move-object/from16 v2, v23

    invoke-direct {v0, v15, v1, v2, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    move-object/from16 v6, v22

    invoke-direct {v0, v15, v1, v6, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnfill$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    move-object/from16 v5, v21

    invoke-direct {v0, v15, v1, v5, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnupcase$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x13

    move-object/from16 v4, v20

    invoke-direct {v0, v15, v1, v4, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mndowncase$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    move-object/from16 v3, v19

    invoke-direct {v0, v15, v1, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mncapitalize$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    move-object/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mncapitalize:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnappend:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/strings;->string$Mnappend$Slshared:Lgnu/expr/ModuleMethod;

    invoke-virtual {v15}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isString(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 6
    nop

    .line 7
    instance-of v0, p0, Ljava/lang/CharSequence;

    return v0
.end method

.method public static isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isString$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 35
    nop

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static isString$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static isString$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 32
    nop

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static isString$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "x"    # Ljava/lang/Object;
    .param p1, "y"    # Ljava/lang/Object;

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static list$To$String(Lgnu/lists/LList;)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "list"    # Lgnu/lists/LList;

    const-string v0, "string-set!"

    .line 56
    nop

    .line 57
    invoke-static {p0}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 58
    .local v1, "len":I
    new-instance v3, Lgnu/lists/FString;

    invoke-direct {v3, v1}, Lgnu/lists/FString;-><init>(I)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 59
    .local v3, "result":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    if-ge v5, v1, :cond_54

    .line 61
    const/4 v6, -0x2

    :try_start_14
    move-object v7, p0

    check-cast v7, Lgnu/lists/Pair;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_17} :catch_4b

    .local v4, "pair":Lgnu/lists/Pair;
    move-object v4, v7

    .line 62
    :try_start_18
    move-object v7, v3

    check-cast v7, Lgnu/lists/CharSeq;
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1b} :catch_44

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v8

    :try_start_1f
    move-object v9, v8

    check-cast v9, Lgnu/text/Char;

    invoke-virtual {v9}, Lgnu/text/Char;->charValue()C

    move-result v8
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_26} :catch_3c

    invoke-static {v7, v5, v8}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 63
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v7

    :try_start_2d
    check-cast v7, Lgnu/lists/LList;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2f} :catch_33

    move-object p0, v7

    .end local v4    # "pair":Lgnu/lists/Pair;
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .end local v1    # "len":I
    .end local v3    # "result":Ljava/lang/CharSequence;
    .end local v5    # "i":I
    .end local p0    # "list":Lgnu/lists/LList;
    :catch_33
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "list"

    invoke-direct {v0, p0, v1, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 62
    :catch_3c
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, v8}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_44
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p0, v0, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 61
    :catch_4b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "pair"

    invoke-direct {v1, v0, v2, v6, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 60
    .restart local v1    # "len":I
    .restart local v3    # "result":Ljava/lang/CharSequence;
    .restart local v5    # "i":I
    .restart local p0    # "list":Lgnu/lists/LList;
    :cond_54
    nop

    .end local v1    # "len":I
    .end local v3    # "result":Ljava/lang/CharSequence;
    .end local v5    # "i":I
    return-object v3
.end method

.method public static makeString(I)Ljava/lang/CharSequence;
    .registers 2

    sget-object v0, Lkawa/lib/strings;->Lit0:Lgnu/text/Char;

    invoke-static {p0, v0}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "n"    # I
    .param p1, "ch"    # Ljava/lang/Object;

    .line 9
    nop

    .line 10
    new-instance v0, Lgnu/lists/FString;

    :try_start_3
    move-object v1, p1

    check-cast v1, Lgnu/text/Char;

    invoke-virtual {v1}, Lgnu/text/Char;->charValue()C

    move-result v1
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_a} :catch_e

    invoke-direct {v0, p0, v1}, Lgnu/lists/FString;-><init>(IC)V

    return-object v0

    .end local p0    # "n":I
    .end local p1    # "ch":Ljava/lang/Object;
    :catch_e
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    const-string v2, "gnu.lists.FString.<init>(int,char)"

    invoke-direct {v0, p0, v2, v1, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0
.end method

.method public static string$To$List(Ljava/lang/CharSequence;)Lgnu/lists/LList;
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 48
    nop

    .line 49
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 50
    invoke-static {p0}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    .line 51
    .local v0, "result":Lgnu/lists/LList;
    .local v1, "i":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_d

    .line 52
    nop

    .line 54
    .end local v0    # "result":Lgnu/lists/LList;
    .end local v1    # "i":I
    return-object v0

    .restart local v0    # "result":Lgnu/lists/LList;
    .restart local v1    # "i":I
    :cond_d
    new-instance v2, Lgnu/lists/Pair;

    invoke-static {p0, v1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v3

    invoke-static {v3}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_7
.end method

.method public static varargs stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;
    .registers 3
    .param p0, "args"    # [Ljava/lang/Object;

    .line 88
    nop

    .line 89
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0}, Lgnu/lists/FString;-><init>()V

    const/4 v1, 0x0

    .line 90
    .local v0, "str":Lgnu/lists/FString;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lgnu/lists/FString;->addAllStrings([Ljava/lang/Object;I)V

    .line 91
    nop

    .end local v0    # "str":Lgnu/lists/FString;
    return-object v0
.end method

.method public static varargs stringAppend$SlShared([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "args"    # [Ljava/lang/Object;

    .line 93
    nop

    .line 94
    array-length v0, p0

    if-nez v0, :cond_a

    .line 95
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0}, Lgnu/lists/FString;-><init>()V

    goto :goto_2f

    .line 96
    :cond_a
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const/4 v2, 0x0

    move-object v3, v2

    .line 97
    .local v1, "arg1":Ljava/lang/Object;
    nop

    .line 98
    instance-of v3, v1, Lgnu/lists/FString;

    if-eqz v3, :cond_22

    :try_start_14
    move-object v0, v1

    check-cast v0, Lgnu/lists/FString;
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_17} :catch_18

    .local v2, "fstr":Lgnu/lists/FString;
    goto :goto_29

    .end local v1    # "arg1":Ljava/lang/Object;
    .end local v2    # "fstr":Lgnu/lists/FString;
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_18
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "fstr"

    invoke-direct {v0, p0, v3, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 99
    .restart local v1    # "arg1":Ljava/lang/Object;
    .restart local p0    # "args":[Ljava/lang/Object;
    :cond_22
    :try_start_22
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_22 .. :try_end_25} :catch_30

    invoke-static {v3}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v0

    .restart local v2    # "fstr":Lgnu/lists/FString;
    :goto_29
    nop

    .line 100
    .end local v2    # "fstr":Lgnu/lists/FString;
    .local v0, "fstr":Lgnu/lists/FString;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2}, Lgnu/lists/FString;->addAllStrings([Ljava/lang/Object;I)V

    .line 101
    nop

    .end local v0    # "fstr":Lgnu/lists/FString;
    .end local v1    # "arg1":Ljava/lang/Object;
    :goto_2f
    return-object v0

    .line 99
    .end local p0    # "args":[Ljava/lang/Object;
    :catch_30
    move-exception p0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "string-copy"

    invoke-direct {v2, p0, v3, v0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static stringCapitalize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 83
    nop

    .line 84
    invoke-static {p0}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    .local v0, "copy":Lgnu/lists/FString;
    invoke-static {v0}, Lgnu/lists/Strings;->makeCapitalize(Lgnu/lists/CharSeq;)V

    .line 86
    nop

    .end local v0    # "copy":Lgnu/lists/FString;
    return-object v0
.end method

.method public static stringCapitalize$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .registers 1
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 79
    nop

    .line 80
    invoke-static {p0}, Lgnu/lists/Strings;->makeCapitalize(Lgnu/lists/CharSeq;)V

    .line 81
    return-object p0
.end method

.method public static stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 65
    nop

    .line 66
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static stringDowncase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .registers 1
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 75
    nop

    .line 76
    invoke-static {p0}, Lgnu/lists/Strings;->makeLowerCase(Lgnu/lists/CharSeq;)V

    .line 77
    return-object p0
.end method

.method public static stringFill$Ex(Lgnu/lists/CharSeq;C)V
    .registers 2
    .param p0, "str"    # Lgnu/lists/CharSeq;
    .param p1, "ch"    # C

    .line 68
    nop

    .line 69
    invoke-interface {p0, p1}, Lgnu/lists/CharSeq;->fill(C)V

    return-void
.end method

.method public static stringLength(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 19
    nop

    .line 20
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public static stringRef(Ljava/lang/CharSequence;I)C
    .registers 3
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "k"    # I

    .line 22
    nop

    .line 23
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static stringSet$Ex(Lgnu/lists/CharSeq;IC)V
    .registers 3
    .param p0, "string"    # Lgnu/lists/CharSeq;
    .param p1, "k"    # I
    .param p2, "char"    # C

    .line 25
    nop

    .line 27
    invoke-interface {p0, p1, p2}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    return-void
.end method

.method public static stringUpcase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;
    .registers 1
    .param p0, "str"    # Lgnu/lists/CharSeq;

    .line 71
    nop

    .line 72
    invoke-static {p0}, Lgnu/lists/Strings;->makeUpperCase(Lgnu/lists/CharSeq;)V

    .line 73
    return-object p0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 44
    nop

    .line 46
    new-instance v0, Lgnu/lists/FString;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lgnu/lists/FString;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_b0

    .line 83
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    :try_start_b
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lkawa/lib/strings;->stringCapitalize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-capitalize"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 79
    :sswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2}, Lkawa/lib/strings;->stringCapitalize$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-capitalize!"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 75
    :sswitch_2b
    :try_start_2b
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_32

    invoke-static {p2}, Lkawa/lib/strings;->stringDowncase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_32
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-downcase!"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 71
    :sswitch_3b
    :try_start_3b
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3d} :catch_42

    invoke-static {p2}, Lkawa/lib/strings;->stringUpcase$Ex(Lgnu/lists/CharSeq;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_42
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-upcase!"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 65
    :sswitch_4b
    :try_start_4b
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_4d} :catch_52

    invoke-static {p2}, Lkawa/lib/strings;->stringCopy(Ljava/lang/CharSequence;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    :catch_52
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-copy"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 56
    :sswitch_5b
    :try_start_5b
    check-cast p2, Lgnu/lists/LList;
    :try_end_5d
    .catch Ljava/lang/ClassCastException; {:try_start_5b .. :try_end_5d} :catch_62

    invoke-static {p2}, Lkawa/lib/strings;->list$To$String(Lgnu/lists/LList;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_62
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "list->string"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 48
    :sswitch_6b
    :try_start_6b
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_6d
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_6d} :catch_72

    invoke-static {p2}, Lkawa/lib/strings;->string$To$List(Ljava/lang/CharSequence;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    :catch_72
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string->list"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 19
    :sswitch_7b
    :try_start_7b
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_7d
    .catch Ljava/lang/ClassCastException; {:try_start_7b .. :try_end_7d} :catch_86

    invoke-static {p2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_86
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-length"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 9
    :sswitch_8f
    :try_start_8f
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_8f .. :try_end_96} :catch_9b

    invoke-static {p1}, Lkawa/lib/strings;->makeString(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_9b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-string"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 6
    :sswitch_a4
    invoke-static {p2}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ad

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_af

    :cond_ad
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_af
    return-object p1

    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_a4
        0x2 -> :sswitch_8f
        0x5 -> :sswitch_7b
        0xe -> :sswitch_6b
        0xf -> :sswitch_5b
        0x10 -> :sswitch_4b
        0x12 -> :sswitch_3b
        0x13 -> :sswitch_2b
        0x14 -> :sswitch_1b
        0x15 -> :sswitch_b
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string v0, "string-fill!"

    const-string v1, "string-ref"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_9e

    .line 68
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_10
    :try_start_10
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_26

    :try_start_12
    move-object p1, p3

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_19} :catch_1f

    invoke-static {p2, p1}, Lkawa/lib/strings;->stringFill$Ex(Lgnu/lists/CharSeq;C)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_26
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 41
    :sswitch_2d
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Gr$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_38

    :cond_36
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_38
    return-object p1

    .line 38
    :sswitch_39
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Ls$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_42

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_44

    :cond_42
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_44
    return-object p1

    .line 35
    :sswitch_45
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Gr(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_50

    :cond_4e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_50
    return-object p1

    .line 32
    :sswitch_51
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Ls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5c

    :cond_5a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5c
    return-object p1

    .line 29
    :sswitch_5d
    invoke-static {p2, p3}, Lkawa/lib/strings;->isString$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_68

    :cond_66
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_68
    return-object p1

    .line 22
    :sswitch_69
    :try_start_69
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_6b
    .catch Ljava/lang/ClassCastException; {:try_start_69 .. :try_end_6b} :catch_82

    :try_start_6b
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_72
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_72} :catch_7b

    invoke-static {p2, p1}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result p1

    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object p1

    return-object p1

    :catch_7b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_82
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 9
    :sswitch_89
    :try_start_89
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_90
    .catch Ljava/lang/ClassCastException; {:try_start_89 .. :try_end_90} :catch_95

    invoke-static {p1, p3}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_95
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-string"

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_9e
    .sparse-switch
        0x2 -> :sswitch_89
        0x6 -> :sswitch_69
        0x8 -> :sswitch_5d
        0x9 -> :sswitch_51
        0xa -> :sswitch_45
        0xb -> :sswitch_39
        0xc -> :sswitch_2d
        0x11 -> :sswitch_10
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const-string v0, "substring"

    const-string v1, "string-set!"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_66

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_11
    :try_start_11
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_13} :catch_34

    :try_start_13
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1a} :catch_2d

    :try_start_1a
    move-object p3, p4

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_21} :catch_26

    invoke-static {p2, p1, p3}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :catch_26
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_2d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_34
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_3b
    :try_start_3b
    check-cast p2, Lgnu/lists/CharSeq;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3d} :catch_5f

    :try_start_3d
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_44
    .catch Ljava/lang/ClassCastException; {:try_start_3d .. :try_end_44} :catch_58

    :try_start_44
    move-object p3, p4

    check-cast p3, Lgnu/text/Char;

    invoke-virtual {p3}, Lgnu/text/Char;->charValue()C

    move-result p3
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_4b} :catch_51

    invoke-static {p2, p1, p3}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_51
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5f
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_66
    .sparse-switch
        0x7 -> :sswitch_3b
        0xd -> :sswitch_11
    .end sparse-switch
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_1a

    .line 93
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    invoke-static {p2}, Lkawa/lib/strings;->stringAppend$SlShared([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 88
    :sswitch_f
    invoke-static {p2}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object p1

    return-object p1

    .line 12
    :sswitch_14
    invoke-static {p2}, Lkawa/lib/strings;->$make$string$([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_1a
    .sparse-switch
        0x4 -> :sswitch_14
        0x16 -> :sswitch_f
        0x17 -> :sswitch_a
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_7e

    .line 6
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 83
    :sswitch_f
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1a
    return v1

    .line 79
    :sswitch_1b
    instance-of v0, p2, Lgnu/lists/CharSeq;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 75
    :sswitch_27
    instance-of v0, p2, Lgnu/lists/CharSeq;

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 71
    :sswitch_33
    instance-of v0, p2, Lgnu/lists/CharSeq;

    if-nez v0, :cond_38

    return v1

    :cond_38
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 65
    :sswitch_3f
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4a

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4a
    return v1

    .line 56
    :sswitch_4b
    instance-of v0, p2, Lgnu/lists/LList;

    if-eqz v0, :cond_56

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_56
    return v1

    .line 48
    :sswitch_57
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_62

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_62
    return v1

    .line 19
    :sswitch_63
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_6e

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_6e
    return v1

    .line 9
    :sswitch_6f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 6
    :sswitch_76
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_76
        0x2 -> :sswitch_6f
        0x5 -> :sswitch_63
        0xe -> :sswitch_57
        0xf -> :sswitch_4b
        0x10 -> :sswitch_3f
        0x12 -> :sswitch_33
        0x13 -> :sswitch_27
        0x14 -> :sswitch_1b
        0x15 -> :sswitch_f
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_6a

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 68
    :sswitch_f
    instance-of v0, p2, Lgnu/lists/CharSeq;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_21

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_21
    const p1, -0xbfffe

    return p1

    .line 41
    :sswitch_25
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 38
    :sswitch_2e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 35
    :sswitch_37
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 32
    :sswitch_40
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 29
    :sswitch_49
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 22
    :sswitch_52
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5f

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_5f
    return v1

    .line 9
    :sswitch_60
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :sswitch_data_6a
    .sparse-switch
        0x2 -> :sswitch_60
        0x6 -> :sswitch_52
        0x8 -> :sswitch_49
        0x9 -> :sswitch_40
        0xa -> :sswitch_37
        0xb -> :sswitch_2e
        0xc -> :sswitch_25
        0x11 -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const v3, -0xbffff

    sparse-switch v0, :sswitch_data_38

    .line 25
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 44
    :sswitch_f
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1e

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_1e
    return v3

    .line 25
    :sswitch_1f
    instance-of v0, p2, Lgnu/lists/CharSeq;

    if-nez v0, :cond_24

    return v3

    :cond_24
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/text/Char;

    if-eqz p2, :cond_33

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_33
    const p1, -0xbfffd

    return p1

    nop

    :sswitch_data_38
    .sparse-switch
        0x7 -> :sswitch_1f
        0xd -> :sswitch_f
    .end sparse-switch
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_22

    .line 12
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 93
    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 88
    :sswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 12
    :sswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_22
    .sparse-switch
        0x4 -> :sswitch_1a
        0x16 -> :sswitch_13
        0x17 -> :sswitch_c
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

    .line 12
    nop

    .line 19
    nop

    .line 22
    nop

    .line 25
    nop

    .line 29
    nop

    .line 32
    nop

    .line 35
    nop

    .line 38
    nop

    .line 41
    nop

    .line 44
    nop

    .line 48
    nop

    .line 56
    nop

    .line 65
    nop

    .line 68
    nop

    .line 71
    nop

    .line 75
    nop

    .line 79
    nop

    .line 83
    nop

    .line 88
    nop

    .line 93
    return-void
.end method

.class public Lkawa/lib/rnrs/hashtables;
.super Lgnu/expr/ModuleBody;
.source "hashtables.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nhashtables.scm\nScheme\n*S Scheme\n*F\n+ 1 hashtables.scm\n/u2/home/jis/ai2-kawa/kawa/lib/rnrs/hashtables.scm\n*L\n1#1,115:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/rnrs/hashtables;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

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

.field public static final equal$Mnhash:Lgnu/expr/ModuleMethod;

.field static final hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

.field static final hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnclear$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mncontains$Qu:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mndelete$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnentries:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnkeys:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnmutable$Qu:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnref:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnsize:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

.field public static final hashtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mneq$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final make$Mneqv$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final make$Mnhashtable:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final string$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final symbol$Mnhash:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 27

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "symbol-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "string-ci-hash"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/rnrs/hashtables;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "string-hash"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/rnrs/hashtables;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "equal-hash"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/rnrs/hashtables;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "hashtable-mutable?"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/rnrs/hashtables;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "hashtable-hash-function"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/rnrs/hashtables;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "hashtable-equivalence-function"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/rnrs/hashtables;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "hashtable-entries"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/rnrs/hashtables;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "hashtable-keys"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/rnrs/hashtables;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "hashtable-clear!"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/rnrs/hashtables;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "hashtable-copy"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/rnrs/hashtables;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "hashtable-update!"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/rnrs/hashtables;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "hashtable-contains?"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/rnrs/hashtables;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "hashtable-delete!"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/rnrs/hashtables;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "hashtable-set!"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/rnrs/hashtables;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "hashtable-ref"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/rnrs/hashtables;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "hashtable-size"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/rnrs/hashtables;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "hashtable?"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/rnrs/hashtables;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "make-hashtable"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/rnrs/hashtables;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v4

    const-string v4, "make-eqv-hashtable"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/rnrs/hashtables;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v5

    const-string v5, "make-eq-hashtable"

    invoke-direct {v15, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/rnrs/hashtables;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    const-string v6, "hash-for-eqv"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/rnrs/hashtables;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v23, v7

    const-string v7, "hash-by-identity"

    invoke-direct {v15, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/rnrs/hashtables;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lkawa/lib/rnrs/hashtables;

    invoke-direct {v15}, Lkawa/lib/rnrs/hashtables;-><init>()V

    sput-object v15, Lkawa/lib/rnrs/hashtables;->$instance:Lkawa/lib/rnrs/hashtables;

    move-object/from16 v24, v8

    new-instance v8, Lgnu/expr/ModuleMethod;

    move-object/from16 v25, v9

    const/4 v9, 0x1

    move-object/from16 v26, v10

    const/16 v10, 0x1001

    invoke-direct {v8, v15, v9, v7, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x2

    invoke-direct {v7, v15, v8, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x3

    const/16 v8, 0x1000

    invoke-direct {v6, v15, v7, v5, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/rnrs/hashtables;->make$Mneq$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x5

    invoke-direct {v5, v15, v6, v4, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/rnrs/hashtables;->make$Mneqv$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x7

    const/16 v6, 0x3002

    invoke-direct {v4, v15, v5, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/rnrs/hashtables;->make$Mnhashtable:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x9

    invoke-direct {v3, v15, v4, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/rnrs/hashtables;->hashtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xa

    invoke-direct {v2, v15, v3, v1, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/rnrs/hashtables;->hashtable$Mnsize:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    const/16 v3, 0x3003

    invoke-direct {v1, v15, v2, v0, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/rnrs/hashtables;->hashtable$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v14, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    const/16 v2, 0x2002

    invoke-direct {v0, v15, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mndelete$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v12, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mncontains$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    const/16 v2, 0x4004

    invoke-direct {v0, v15, v1, v11, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    const/16 v2, 0x2001

    move-object/from16 v3, v26

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    move-object/from16 v9, v25

    invoke-direct {v0, v15, v1, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnclear$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    move-object/from16 v8, v24

    invoke-direct {v0, v15, v1, v8, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnkeys:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    move-object/from16 v7, v23

    invoke-direct {v0, v15, v1, v7, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnentries:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    move-object/from16 v6, v22

    invoke-direct {v0, v15, v1, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    move-object/from16 v5, v21

    invoke-direct {v0, v15, v1, v5, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x18

    move-object/from16 v4, v20

    invoke-direct {v0, v15, v1, v4, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->hashtable$Mnmutable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x19

    move-object/from16 v3, v19

    invoke-direct {v0, v15, v1, v3, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->equal$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1a

    move-object/from16 v2, v18

    invoke-direct {v0, v15, v1, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->string$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1b

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1c

    move-object/from16 v2, v16

    invoke-direct {v0, v15, v1, v2, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/rnrs/hashtables;->symbol$Mnhash:Lgnu/expr/ModuleMethod;

    invoke-virtual {v15}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static equalHash(Ljava/lang/Object;)I
    .registers 2
    .param p0, "key"    # Ljava/lang/Object;

    .line 101
    nop

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method static hashByIdentity(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 15
    nop

    .line 16
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static hashForEqv(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;)V
    .registers 2

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V

    return-void
.end method

.method public static hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "k"    # I

    .line 73
    nop

    .line 77
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 78
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->clear()V

    return-void
.end method

.method public static hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "mutable"    # Z

    .line 69
    nop

    .line 71
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public static hashtableDelete$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)V
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .line 54
    nop

    .line 55
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 56
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static hashtableEntries(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 5
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 83
    nop

    .line 84
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->entriesVectorPair()Lgnu/lists/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    .local v0, "pair":Lgnu/lists/Pair;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkawa/lib/misc;->values([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pair":Lgnu/lists/Pair;
    return-object v0
.end method

.method public static hashtableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 87
    nop

    .line 88
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashtableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 5
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 90
    nop

    .line 91
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 92
    .local v0, "hasher":Ljava/lang/Object;
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v3, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v1, "x":Ljava/lang/Object;
    move-object v1, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_1b

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_2b

    goto :goto_27

    :cond_1b
    sget-object v2, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 93
    sget-object v3, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    invoke-virtual {v2, v0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_2b

    .end local v1    # "x":Ljava/lang/Object;
    :goto_27
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_2c

    .line 92
    :cond_2b
    nop

    .end local v0    # "hasher":Ljava/lang/Object;
    :goto_2c
    return-object v0
.end method

.method public static hashtableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/lists/FVector;
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 80
    nop

    .line 81
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->keysVector()Lgnu/lists/FVector;

    move-result-object v0

    return-object v0
.end method

.method public static hashtableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 44
    nop

    .line 45
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 46
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_a

    move-object v1, p2

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_e
    return-object v1
.end method

.method public static hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 50
    nop

    .line 51
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 52
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static hashtableSize(Lkawa/lib/kawa/hashtable$HashTable;)I
    .registers 2
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v0

    return v0
.end method

.method public static hashtableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "proc"    # Lgnu/mapping/Procedure;
    .param p3, "default"    # Ljava/lang/Object;

    .line 61
    nop

    .line 63
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 64
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 65
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_15

    .line 66
    invoke-virtual {p2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_21

    .line 67
    :cond_15
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_21
    return-object v1
.end method

.method public static isHashtable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 38
    nop

    .line 39
    instance-of v0, p0, Lkawa/lib/kawa/hashtable$HashTable;

    return v0
.end method

.method public static isHashtableContains(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .line 58
    nop

    .line 59
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    add-int/2addr v0, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static isHashtableMutable(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 3
    .param p0, "ht"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 97
    nop

    .line 98
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-boolean v1, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    if-eqz v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_c
    invoke-virtual {v0, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqHashtable()Lkawa/lib/kawa/hashtable$HashTable;
    .registers 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {v0}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 5
    .param p0, "k"    # I

    .line 21
    nop

    .line 24
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    sget-object v1, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    sget v3, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static makeEqvHashtable()Lkawa/lib/kawa/hashtable$HashTable;
    .registers 1

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {v0}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 5
    .param p0, "k"    # I

    .line 26
    nop

    .line 29
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    sget-object v1, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v2, Lkawa/lib/rnrs/hashtables;->hash$Mnfor$Mneqv:Lgnu/expr/ModuleMethod;

    sget v3, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-direct {v0, v1, v2, v3}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3

    sget v0, Lgnu/kawa/util/AbstractHashTable;->DEFAULT_INITIAL_SIZE:I

    invoke-static {p0, p1, v0}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 4
    .param p0, "comparison"    # Lgnu/mapping/Procedure;
    .param p1, "hash"    # Lgnu/mapping/Procedure;
    .param p2, "size"    # I

    .line 31
    nop

    .line 36
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 107
    nop

    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static stringHash(Ljava/lang/CharSequence;)I
    .registers 2
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public static symbolHash(Lgnu/mapping/Symbol;)I
    .registers 2
    .param p0, "s"    # Lgnu/mapping/Symbol;

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    return v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_14

    .line 26
    :pswitch_5
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_f
    invoke-static {}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_f
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_11e

    .line 114
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_16

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->symbolHash(Lgnu/mapping/Symbol;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "symbol-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 107
    :pswitch_1f
    :try_start_1f
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_21} :catch_2a

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->stringCiHash(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_2a
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-ci-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 104
    :pswitch_33
    :try_start_33
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_35} :catch_3e

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->stringHash(Ljava/lang/CharSequence;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_3e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 101
    :pswitch_47
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->equalHash(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 97
    :pswitch_50
    :try_start_50
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_52
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_52} :catch_57

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->isHashtableMutable(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_57
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-mutable?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 90
    :pswitch_60
    :try_start_60
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_62} :catch_67

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_67
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-hash-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 87
    :pswitch_70
    :try_start_70
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_72
    .catch Ljava/lang/ClassCastException; {:try_start_70 .. :try_end_72} :catch_77

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    :catch_77
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-equivalence-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 83
    :pswitch_80
    :try_start_80
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_82
    .catch Ljava/lang/ClassCastException; {:try_start_80 .. :try_end_82} :catch_87

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableEntries(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_87
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-entries"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 80
    :pswitch_90
    :try_start_90
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_92
    .catch Ljava/lang/ClassCastException; {:try_start_90 .. :try_end_92} :catch_97

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_97
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-keys"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 73
    :pswitch_a0
    :try_start_a0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_a2
    .catch Ljava/lang/ClassCastException; {:try_start_a0 .. :try_end_a2} :catch_a8

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 74
    :catch_a8
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-clear!"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 69
    :pswitch_b1
    :try_start_b1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_b3
    .catch Ljava/lang/ClassCastException; {:try_start_b1 .. :try_end_b3} :catch_b8

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :catch_b8
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-copy"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 41
    :pswitch_c1
    :try_start_c1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_c3
    .catch Ljava/lang/ClassCastException; {:try_start_c1 .. :try_end_c3} :catch_cc

    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashtableSize(Lkawa/lib/kawa/hashtable$HashTable;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_cc
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hashtable-size"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 38
    :pswitch_d5
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->isHashtable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_de

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_e0

    :cond_de
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_e0
    return-object p1

    .line 26
    :pswitch_e1
    :try_start_e1
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_e8
    .catch Ljava/lang/ClassCastException; {:try_start_e1 .. :try_end_e8} :catch_ed

    invoke-static {p1}, Lkawa/lib/rnrs/hashtables;->makeEqvHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 27
    :catch_ed
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-eqv-hashtable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :pswitch_f6
    :try_start_f6
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_fd
    .catch Ljava/lang/ClassCastException; {:try_start_f6 .. :try_end_fd} :catch_102

    invoke-static {p1}, Lkawa/lib/rnrs/hashtables;->makeEqHashtable(I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 22
    :catch_102
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-eq-hashtable"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :pswitch_10b
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashForEqv(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_114
    invoke-static {p2}, Lkawa/lib/rnrs/hashtables;->hashByIdentity(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_114
        :pswitch_10b
        :pswitch_f6
        :pswitch_6
        :pswitch_e1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_d5
        :pswitch_c1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b1
        :pswitch_6
        :pswitch_a0
        :pswitch_6
        :pswitch_90
        :pswitch_80
        :pswitch_70
        :pswitch_60
        :pswitch_50
        :pswitch_47
        :pswitch_33
        :pswitch_1f
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const-string v0, "hashtable-clear!"

    const-string v1, "hashtable-copy"

    const-string v2, "make-hashtable"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_8a

    .line 73
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_12
    :try_start_12
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_14} :catch_28

    :try_start_14
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_1b
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_1b} :catch_21

    invoke-static {p2, p1}, Lkawa/lib/rnrs/hashtables;->hashtableClear$Ex(Lkawa/lib/kawa/hashtable$HashTable;I)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 75
    :catch_21
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 74
    :catch_28
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 69
    :sswitch_2f
    :try_start_2f
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2f .. :try_end_31} :catch_43

    :try_start_31
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_33
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_33} :catch_3c

    if-eq p3, p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    invoke-static {p2, v5}, Lkawa/lib/rnrs/hashtables;->hashtableCopy(Lkawa/lib/kawa/hashtable$HashTable;Z)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :catch_3c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_43
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 58
    :sswitch_4a
    :try_start_4a
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_4c} :catch_58

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->isHashtableContains(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_57

    :cond_55
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_57
    return-object p1

    :catch_58
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "hashtable-contains?"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 54
    :sswitch_61
    :try_start_61
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_63
    .catch Ljava/lang/ClassCastException; {:try_start_61 .. :try_end_63} :catch_69

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->hashtableDelete$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_69
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "hashtable-delete!"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 31
    :sswitch_72
    :try_start_72
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_72 .. :try_end_74} :catch_82

    :try_start_74
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_76
    .catch Ljava/lang/ClassCastException; {:try_start_74 .. :try_end_76} :catch_7b

    invoke-static {p2, p3}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 33
    :catch_7b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 32
    :catch_82
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_8a
    .sparse-switch
        0x7 -> :sswitch_72
        0xd -> :sswitch_61
        0xe -> :sswitch_4a
        0x10 -> :sswitch_2f
        0x12 -> :sswitch_12
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "make-hashtable"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_56

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_d
    :try_start_d
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_15

    invoke-static {p2, p3, p4}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_15
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hashtable-set!"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 44
    :sswitch_1e
    :try_start_1e
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_25

    invoke-static {p2, p3, p4}, Lkawa/lib/rnrs/hashtables;->hashtableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_25
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hashtable-ref"

    invoke-direct {p3, p1, p4, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 31
    :sswitch_2e
    :try_start_2e
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_2e .. :try_end_30} :catch_4e

    :try_start_30
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_32} :catch_46

    :try_start_32
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_39} :catch_3e

    invoke-static {p2, p3, p1}, Lkawa/lib/rnrs/hashtables;->makeHashtable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 34
    :catch_3e
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 33
    :catch_46
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 32
    :catch_4e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_56
    .sparse-switch
        0x7 -> :sswitch_2e
        0xb -> :sswitch_1e
        0xc -> :sswitch_d
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string v0, "hashtable-update!"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_21

    .line 61
    :try_start_8
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_19

    :try_start_a
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_11

    invoke-static {p2, p3, p4, p5}, Lkawa/lib/rnrs/hashtables;->hashtableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 62
    :catch_11
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 61
    :catch_19
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_21
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_16

    .line 21
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 26
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 21
    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_10
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_be

    .line 15
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 114
    :pswitch_f
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 107
    :pswitch_1b
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_26
    return v1

    .line 104
    :pswitch_27
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_32

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_32
    return v1

    .line 101
    :pswitch_33
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 97
    :pswitch_3a
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3f

    return v1

    :cond_3f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 90
    :pswitch_46
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4b

    return v1

    :cond_4b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 87
    :pswitch_52
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_57

    return v1

    :cond_57
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 83
    :pswitch_5e
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_63

    return v1

    :cond_63
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 80
    :pswitch_6a
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_6f

    return v1

    :cond_6f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 73
    :pswitch_76
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_7b

    return v1

    :cond_7b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 69
    :pswitch_82
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_87

    return v1

    :cond_87
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 41
    :pswitch_8e
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_93

    return v1

    :cond_93
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 38
    :pswitch_9a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 26
    :pswitch_a1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 21
    :pswitch_a8
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 18
    :pswitch_af
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 15
    :pswitch_b6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_af
        :pswitch_a8
        :pswitch_a
        :pswitch_a1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9a
        :pswitch_8e
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_82
        :pswitch_a
        :pswitch_76
        :pswitch_a
        :pswitch_6a
        :pswitch_5e
        :pswitch_52
        :pswitch_46
        :pswitch_3a
        :pswitch_33
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbffff

    sparse-switch v0, :sswitch_data_5e

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 73
    :sswitch_f
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_14

    return v3

    :cond_14
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 69
    :sswitch_1d
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_22

    return v3

    :cond_22
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 58
    :sswitch_2b
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_30

    return v3

    :cond_30
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 54
    :sswitch_39
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3e

    return v3

    :cond_3e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 31
    :sswitch_47
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_4c

    return v3

    :cond_4c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_56

    const p1, -0xbfffe

    return p1

    :cond_56
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_5e
    .sparse-switch
        0x7 -> :sswitch_47
        0xd -> :sswitch_39
        0xe -> :sswitch_2b
        0x10 -> :sswitch_1d
        0x12 -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const v3, -0xbffff

    sparse-switch v0, :sswitch_data_48

    .line 31
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 50
    :sswitch_f
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_14

    return v3

    :cond_14
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 44
    :sswitch_1f
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_24

    return v3

    :cond_24
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 31
    :sswitch_2f
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_34

    return v3

    :cond_34
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_3e

    const p1, -0xbfffe

    return p1

    :cond_3e
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :sswitch_data_48
    .sparse-switch
        0x7 -> :sswitch_2f
        0xb -> :sswitch_1f
        0xc -> :sswitch_f
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_25

    .line 61
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_e

    const p1, -0xbffff

    return p1

    :cond_e
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1a

    const p1, -0xbfffd

    return p1

    :cond_1a
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x4

    iput p1, p6, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
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

    .line 26
    nop

    .line 31
    nop

    .line 38
    nop

    .line 41
    nop

    .line 44
    nop

    .line 50
    nop

    .line 54
    nop

    .line 58
    nop

    .line 61
    nop

    .line 69
    nop

    .line 73
    nop

    .line 80
    nop

    .line 83
    nop

    .line 87
    nop

    .line 90
    nop

    .line 97
    nop

    .line 101
    nop

    .line 104
    nop

    .line 107
    nop

    .line 114
    return-void
.end method

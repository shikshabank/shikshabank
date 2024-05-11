.class public Lgnu/kawa/slib/srfi69;
.super Lgnu/expr/ModuleBody;
.source "srfi69.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi69.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi69.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm\n*L\n25#1,162:25\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi69;

.field static final Lit0:Lgnu/math/IntNum;

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

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final alist$Mn$Grhash$Mntable:Lgnu/expr/ModuleMethod;

.field public static final hash:Lgnu/expr/ModuleMethod;

.field public static final hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mn$Gralist:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mndelete$Ex:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnexists$Qu:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnfold:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnkeys:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnmerge$Ex:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnref:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnref$Sldefault:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnset$Ex:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnsize:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnupdate$Ex$Sldefault:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnvalues:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnwalk:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Qu:Lgnu/mapping/Location;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field public static final make$Mnhash$Mntable:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final string$Mnhash:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 23

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-values"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "hash-table-keys"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi69;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "hash-table-merge!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/srfi69;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "hash-table-copy"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/srfi69;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "hash-table->alist"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/srfi69;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "alist->hash-table"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/srfi69;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "hash-table-fold"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/srfi69;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "hash-table-walk"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lgnu/kawa/slib/srfi69;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "hash-table-update!/default"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lgnu/kawa/slib/srfi69;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "hash-table-update!"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lgnu/kawa/slib/srfi69;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "hash-table-ref/default"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lgnu/kawa/slib/srfi69;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "hash-table-ref"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lgnu/kawa/slib/srfi69;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "make-hash-table"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lgnu/kawa/slib/srfi69;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "hash-table-hash-function"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lgnu/kawa/slib/srfi69;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "hash-table-equivalence-function"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lgnu/kawa/slib/srfi69;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "hash-by-identity"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "hash"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/srfi69;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "string-ci-hash"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/srfi69;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "string-hash"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/srfi69;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v15, 0x40

    invoke-static {v15}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v15

    sput-object v15, Lgnu/kawa/slib/srfi69;->Lit0:Lgnu/math/IntNum;

    new-instance v15, Lgnu/kawa/slib/srfi69;

    invoke-direct {v15}, Lgnu/kawa/slib/srfi69;-><init>()V

    sput-object v15, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    .line 38
    move-object/from16 v20, v4

    const-string v4, "kawa.lib.rnrs.hashtables"

    move-object/from16 v21, v5

    const-string v5, "hashtable$Qu"

    invoke-static {v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/srfi69;->hash$Mntable$Qu:Lgnu/mapping/Location;

    const-string v5, "hashtable$Mnsize"

    invoke-static {v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnsize:Lgnu/mapping/Location;

    const-string v5, "hashtable$Mnset$Ex"

    invoke-static {v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnset$Ex:Lgnu/mapping/Location;

    const-string v5, "hashtable$Mndelete$Ex"

    invoke-static {v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v5

    sput-object v5, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mndelete$Ex:Lgnu/mapping/Location;

    const-string v5, "hashtable$Mncontains$Qu"

    invoke-static {v4, v5}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v4

    sput-object v4, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnexists$Qu:Lgnu/mapping/Location;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x1

    move-object/from16 v22, v6

    const/16 v6, 0x2001

    invoke-direct {v4, v15, v5, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/srfi69;->string$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x3

    invoke-direct {v3, v15, v4, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/srfi69;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v3, 0x5

    invoke-direct {v2, v15, v3, v1, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/srfi69;->hash:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    invoke-direct {v1, v15, v2, v0, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/srfi69;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    const/16 v2, 0x1001

    invoke-direct {v0, v15, v1, v14, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    invoke-direct {v0, v15, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    const/16 v3, 0x3000

    invoke-direct {v0, v15, v1, v12, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->make$Mnhash$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    const/16 v3, 0x3002

    invoke-direct {v0, v15, v1, v11, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    const/16 v3, 0x3003

    invoke-direct {v0, v15, v1, v10, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnref$Sldefault:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    const/16 v4, 0x4003

    invoke-direct {v0, v15, v1, v9, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    const/16 v4, 0x4004

    invoke-direct {v0, v15, v1, v8, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnupdate$Ex$Sldefault:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    const/16 v4, 0x2002

    invoke-direct {v0, v15, v1, v7, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnwalk:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    move-object/from16 v6, v22

    invoke-direct {v0, v15, v1, v6, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnfold:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    const/4 v5, 0x0

    invoke-direct {v0, v15, v1, v5, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v6, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:166"

    invoke-virtual {v0, v1, v6}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x18

    const/16 v7, 0x4001

    move-object/from16 v8, v21

    invoke-direct {v0, v15, v6, v8, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->alist$Mn$Grhash$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x1c

    move-object/from16 v7, v20

    invoke-direct {v0, v15, v6, v7, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mn$Gralist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x1d

    move-object/from16 v7, v19

    invoke-direct {v0, v15, v6, v7, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x1e

    move-object/from16 v7, v18

    invoke-direct {v0, v15, v6, v7, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnmerge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x1f

    invoke-direct {v0, v15, v4, v5, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:183"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x20

    move-object/from16 v6, v17

    invoke-direct {v0, v15, v4, v6, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnkeys:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x21

    invoke-direct {v0, v15, v4, v5, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v3, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi69.scm:186"

    invoke-virtual {v0, v1, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x22

    move-object/from16 v3, v16

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnvalues:Lgnu/expr/ModuleMethod;

    invoke-virtual {v15}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 2

    sget-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3

    invoke-static {p1}, Lgnu/kawa/slib/srfi69;->appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgnu/kawa/slib/srfi69;->Lit0:Lgnu/math/IntNum;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    :try_start_9
    move-object v3, p0

    check-cast v3, Lgnu/lists/LList;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_c} :catch_21

    invoke-static {v3}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0

    .line 161
    :catch_21
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "length"

    invoke-direct {p2, p1, v0, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 11
    .param p0, "alist"    # Ljava/lang/Object;
    .param p1, "comparison"    # Ljava/lang/Object;
    .param p2, "hash"    # Ljava/lang/Object;
    .param p3, "size"    # Ljava/lang/Object;

    const-string v0, "make-hash-table"

    .line 156
    nop

    .line 162
    :try_start_3
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_6} :catch_57

    :try_start_6
    move-object v2, p2

    check-cast v2, Lgnu/mapping/Procedure;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_4f

    :try_start_9
    move-object v3, p3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_47

    invoke-static {v1, v2, v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 163
    .local v0, "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    nop

    .line 167
    move-object v2, p0

    .local v2, "arg0":Ljava/lang/Object;
    :goto_18
    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_1e

    .line 168
    .end local v2    # "arg0":Ljava/lang/Object;
    nop

    .end local v0    # "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    return-object v0

    .line 167
    .restart local v0    # "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    .restart local v2    # "arg0":Ljava/lang/Object;
    :cond_1e
    :try_start_1e
    move-object v3, v2

    check-cast v3, Lgnu/lists/Pair;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_21} :catch_3d

    .local v1, "arg0":Lgnu/lists/Pair;
    move-object v1, v3

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    .line 164
    nop

    .line 165
    .local v3, "elem":Ljava/lang/Object;
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 166
    invoke-virtual {v4, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/srfi69;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v4, v5, v6}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v3    # "elem":Ljava/lang/Object;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    goto :goto_18

    .line 163
    .end local v0    # "hash$Mntable":Lkawa/lib/kawa/hashtable$HashTable;
    .end local v1    # "arg0":Lgnu/lists/Pair;
    .end local v2    # "arg0":Ljava/lang/Object;
    .end local p0    # "alist":Ljava/lang/Object;
    .end local p1    # "comparison":Ljava/lang/Object;
    .end local p2    # "hash":Ljava/lang/Object;
    .end local p3    # "size":Ljava/lang/Object;
    :catch_3d
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, -0x2

    const-string p3, "arg0"

    invoke-direct {p1, p0, p3, p2, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 162
    :catch_47
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v0, p2, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_4f
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    invoke-direct {p1, p0, v0, p3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_57
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_60

    :goto_5f
    throw p2

    :goto_60
    goto :goto_5f
.end method

.method static appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;
    .registers 5

    .line 86
    nop

    .line 87
    sget-object v0, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    sget-object v0, Lgnu/kawa/slib/srfi69;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    goto :goto_16

    :cond_f
    if-eqz v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_16

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_16
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_1d

    :goto_1a
    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_51

    .line 88
    :cond_1d
    sget-object v0, Lkawa/lib/strings;->string$Eq$Qu:Lgnu/expr/ModuleMethod;

    if-ne p0, v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_29

    sget-object v0, Lgnu/kawa/slib/srfi69;->string$Mnhash:Lgnu/expr/ModuleMethod;

    goto :goto_30

    :cond_29
    if-eqz v0, :cond_2e

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_30

    :cond_2e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    :goto_30
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v3, :cond_35

    goto :goto_1a

    .line 89
    :cond_35
    sget-object v0, Lkawa/lib/rnrs/unicode;->string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    if-ne p0, v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_40

    sget-object p0, Lgnu/kawa/slib/srfi69;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    goto :goto_47

    :cond_40
    if-eqz v1, :cond_45

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_47

    :cond_45
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 87
    :goto_47
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p0, v0, :cond_4f

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Procedure;

    goto :goto_51

    :cond_4f
    sget-object v0, Lgnu/kawa/slib/srfi69;->hash:Lgnu/expr/ModuleMethod;

    :goto_51
    return-object v0
.end method

.method public static hash(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    if-nez p0, :cond_6

    move v1, v0

    .local v1, "h":I
    goto :goto_d

    .end local v1    # "h":I
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v2, v1

    move v1, v0

    move v0, v2

    .line 66
    .local v0, "h":I
    :goto_d
    if-nez p1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1c

    :cond_14
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_1c
    return-object v1
.end method

.method public static hashByIdentity(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 68
    nop

    .line 69
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    .line 70
    .local v0, "h":I
    if-nez p1, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_d
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_15
    return-object v1
.end method

.method public static hashTable$To$Alist(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 170
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->toAlist()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 173
    nop

    .line 174
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public static hashTableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .registers 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 78
    nop

    .line 80
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "acc"    # Ljava/lang/Object;

    .line 151
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .registers 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 82
    nop

    .line 84
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashTableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 3
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 182
    nop

    .line 183
    sget-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableMerge$Ex(Lkawa/lib/kawa/hashtable$HashTable;Lkawa/lib/kawa/hashtable$HashTable;)V
    .registers 2
    .param p0, "hash$Mntable1"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "hash$Mntable2"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 176
    nop

    .line 179
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 180
    return-void
.end method

.method public static hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 116
    nop

    .line 119
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_20

    .line 121
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_13

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1f

    .line 122
    :cond_13
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "hash-table-ref: no value associated with"

    invoke-static {v2, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1f
    goto :goto_24

    :cond_20
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_24
    return-object v1
.end method

.method public static hashTableRef$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Ljava/lang/Object;

    .line 125
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "thunk"    # Ljava/lang/Object;

    .line 129
    nop

    .line 131
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 132
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_2b

    .line 134
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_1f

    .line 135
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    .line 136
    :cond_1f
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "hash-table-update!: no value exists for key"

    invoke-static {v2, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2a
    goto :goto_38

    :cond_2b
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 137
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_38
    return-void
.end method

.method public static hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "default"    # Ljava/lang/Object;

    .line 139
    nop

    .line 140
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 141
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    const/4 v1, 0x0

    .line 142
    .local v0, "node":Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_15

    .line 143
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_22

    :cond_15
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 144
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "node":Lgnu/kawa/util/HashNode;
    :goto_22
    return-void
.end method

.method public static hashTableValues(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .registers 3
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;

    .line 185
    nop

    .line 186
    sget-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableWalk(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;)V
    .registers 2
    .param p0, "hash$Mntable"    # Lkawa/lib/kawa/hashtable$HashTable;
    .param p1, "proc"    # Lgnu/mapping/Procedure;

    .line 146
    nop

    .line 149
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->walk(Lgnu/mapping/Procedure;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 166
    return-object p0
.end method

.method static lambda2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "acc"    # Ljava/lang/Object;

    .line 183
    invoke-static {p0, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method static lambda3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .registers 4
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "acc"    # Ljava/lang/Object;

    .line 186
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable()Lkawa/lib/kawa/hashtable$HashTable;
    .registers 1

    sget-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    invoke-static {v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3

    invoke-static {p0}, Lgnu/kawa/slib/srfi69;->appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 3

    const/16 v0, 0x40

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p0

    return-object p0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;
    .registers 4
    .param p0, "comparison"    # Lgnu/mapping/Procedure;
    .param p1, "hash"    # Lgnu/mapping/Procedure;
    .param p2, "size"    # I

    .line 94
    nop

    .line 100
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 52
    nop

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 58
    .local v0, "h":I
    if-nez p1, :cond_15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1d

    :cond_15
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_1d
    return-object v1
.end method

.method public static stringHash(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 48
    nop

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 50
    .local v0, "h":I
    if-nez p1, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_d
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_15
    return-object v1
.end method

.method static symbolHash(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->symbolHash(Lgnu/mapping/Symbol;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static symbolHash(Lgnu/mapping/Symbol;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 4
    .param p0, "s"    # Lgnu/mapping/Symbol;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 60
    nop

    .line 61
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 62
    .local v0, "h":I
    if-nez p1, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_d
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_15
    return-object v1
.end method

.method static vectorHash(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->vectorHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static vectorHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .registers 4
    .param p0, "v"    # Ljava/lang/Object;
    .param p1, "bound"    # Lgnu/math/IntNum;

    .line 72
    nop

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    .line 74
    .local v0, "h":I
    if-nez p1, :cond_d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_d
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    .end local v0    # "h":I
    :goto_15
    return-object v1
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 94
    invoke-static {}, Lgnu/kawa/slib/srfi69;->makeHashTable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_a4

    .line 185
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    :try_start_b
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableValues(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-values"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 182
    :sswitch_1b
    :try_start_1b
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-keys"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 173
    :sswitch_2b
    :try_start_2b
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_32

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    :catch_32
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-copy"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 170
    :sswitch_3b
    :try_start_3b
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_3d} :catch_42

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTable$To$Alist(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_42
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table->alist"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 156
    :sswitch_4b
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 166
    :sswitch_50
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 94
    :sswitch_55
    :try_start_55
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_57} :catch_5c

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 95
    :catch_5c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-hash-table"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 82
    :sswitch_65
    :try_start_65
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_67
    .catch Ljava/lang/ClassCastException; {:try_start_65 .. :try_end_67} :catch_6c

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    :catch_6c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-hash-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 78
    :sswitch_75
    :try_start_75
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_77
    .catch Ljava/lang/ClassCastException; {:try_start_75 .. :try_end_77} :catch_7c

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object p1

    return-object p1

    :catch_7c
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-equivalence-function"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 68
    :sswitch_85
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 64
    :sswitch_8a
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 52
    :sswitch_8f
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :sswitch_94
    :try_start_94
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_96
    .catch Ljava/lang/ClassCastException; {:try_start_94 .. :try_end_96} :catch_9b

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_9b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_94
        0x3 -> :sswitch_8f
        0x5 -> :sswitch_8a
        0x7 -> :sswitch_85
        0x9 -> :sswitch_75
        0xa -> :sswitch_65
        0xb -> :sswitch_55
        0x17 -> :sswitch_50
        0x18 -> :sswitch_4b
        0x1c -> :sswitch_3b
        0x1d -> :sswitch_2b
        0x20 -> :sswitch_1b
        0x22 -> :sswitch_b
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const-string v0, "hash-table-merge!"

    const-string v1, "hash-table-walk"

    const-string v2, "make-hash-table"

    const-string v3, "string-hash"

    iget v4, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_c0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_14
    :try_start_14
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_25

    :try_start_16
    check-cast p3, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_1e

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableMerge$Ex(Lkawa/lib/kawa/hashtable$HashTable;Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 177
    :catch_1e
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 176
    :catch_25
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 156
    :sswitch_2c
    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 146
    :sswitch_31
    :try_start_31
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_33
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_33} :catch_42

    :try_start_33
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_35} :catch_3b

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableWalk(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 147
    :catch_3b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 146
    :catch_42
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 116
    :sswitch_49
    :try_start_49
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_4b} :catch_50

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_50
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "hash-table-ref"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 94
    :sswitch_59
    :try_start_59
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_5b
    .catch Ljava/lang/ClassCastException; {:try_start_59 .. :try_end_5b} :catch_69

    :try_start_5b
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_5d
    .catch Ljava/lang/ClassCastException; {:try_start_5b .. :try_end_5d} :catch_62

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 96
    :catch_62
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 95
    :catch_69
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 68
    :sswitch_70
    :try_start_70
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_74
    .catch Ljava/lang/ClassCastException; {:try_start_70 .. :try_end_74} :catch_79

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_79
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "hash-by-identity"

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 64
    :sswitch_82
    :try_start_82
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_86
    .catch Ljava/lang/ClassCastException; {:try_start_82 .. :try_end_86} :catch_8b

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_8b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "hash"

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 52
    :sswitch_94
    :try_start_94
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_98
    .catch Ljava/lang/ClassCastException; {:try_start_94 .. :try_end_98} :catch_9d

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_9d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "string-ci-hash"

    invoke-direct {p2, p1, v0, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 48
    :sswitch_a6
    :try_start_a6
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_a8
    .catch Ljava/lang/ClassCastException; {:try_start_a6 .. :try_end_a8} :catch_b8

    :try_start_a8
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p1
    :try_end_ac
    .catch Ljava/lang/ClassCastException; {:try_start_a8 .. :try_end_ac} :catch_b1

    invoke-static {p2, p1}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_b1
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v6, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_b8
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_a6
        0x3 -> :sswitch_94
        0x5 -> :sswitch_82
        0x7 -> :sswitch_70
        0xb -> :sswitch_59
        0xf -> :sswitch_49
        0x15 -> :sswitch_31
        0x18 -> :sswitch_2c
        0x1e -> :sswitch_14
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const-string v0, "hash-table-fold"

    const-string v1, "make-hash-table"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_8e

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_10
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->lambda3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1

    .line 183
    :sswitch_15
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->lambda2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    return-object p1

    .line 156
    :sswitch_1a
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 151
    :sswitch_1f
    :try_start_1f
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_21} :catch_2f

    :try_start_21
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_23} :catch_28

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 152
    :catch_28
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 151
    :catch_2f
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 129
    :sswitch_36
    :try_start_36
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_36 .. :try_end_38} :catch_3e

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_3e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-update!"

    invoke-direct {p3, p1, p4, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 125
    :sswitch_47
    :try_start_47
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_47 .. :try_end_49} :catch_4e

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableRef$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_4e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-ref/default"

    invoke-direct {p3, p1, p4, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 116
    :sswitch_57
    :try_start_57
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_59
    .catch Ljava/lang/ClassCastException; {:try_start_57 .. :try_end_59} :catch_5e

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_5e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-ref"

    invoke-direct {p3, p1, p4, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 94
    :sswitch_67
    :try_start_67
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_69
    .catch Ljava/lang/ClassCastException; {:try_start_67 .. :try_end_69} :catch_86

    :try_start_69
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_6b
    .catch Ljava/lang/ClassCastException; {:try_start_69 .. :try_end_6b} :catch_7f

    :try_start_6b
    move-object p1, p4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_72
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_72} :catch_77

    invoke-static {p2, p3, p1}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 98
    :catch_77
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v1, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 96
    :catch_7f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 95
    :catch_86
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_8e
    .sparse-switch
        0xb -> :sswitch_67
        0xf -> :sswitch_57
        0x11 -> :sswitch_47
        0x12 -> :sswitch_36
        0x16 -> :sswitch_1f
        0x18 -> :sswitch_1a
        0x1f -> :sswitch_15
        0x21 -> :sswitch_10
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_32

    .line 156
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object p1

    return-object p1

    .line 139
    :sswitch_10
    :try_start_10
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_18

    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_18
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-update!/default"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 129
    :sswitch_21
    :try_start_21
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_23} :catch_29

    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_29
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "hash-table-update!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_32
    .sparse-switch
        0x12 -> :sswitch_21
        0x14 -> :sswitch_10
        0x18 -> :sswitch_b
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_c

    .line 94
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_92

    .line 48
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 185
    :sswitch_f
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 182
    :sswitch_1b
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 173
    :sswitch_27
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2c

    return v1

    :cond_2c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 170
    :sswitch_33
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_38

    return v1

    :cond_38
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 156
    :sswitch_3f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 166
    :sswitch_46
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 94
    :sswitch_4d
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_52

    return v1

    :cond_52
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 82
    :sswitch_59
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_5e

    return v1

    :cond_5e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 78
    :sswitch_65
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_6a

    return v1

    :cond_6a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 68
    :sswitch_71
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 64
    :sswitch_78
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 52
    :sswitch_7f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 48
    :sswitch_86
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_91

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_91
    return v1

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_86
        0x3 -> :sswitch_7f
        0x5 -> :sswitch_78
        0x7 -> :sswitch_71
        0x9 -> :sswitch_65
        0xa -> :sswitch_59
        0xb -> :sswitch_4d
        0x17 -> :sswitch_46
        0x18 -> :sswitch_3f
        0x1c -> :sswitch_33
        0x1d -> :sswitch_27
        0x20 -> :sswitch_1b
        0x22 -> :sswitch_f
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_a8

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 176
    :sswitch_12
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_17

    return v1

    :cond_17
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez p2, :cond_1e

    return v2

    :cond_1e
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 156
    :sswitch_25
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 146
    :sswitch_2e
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_33

    return v1

    :cond_33
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_3a

    return v2

    :cond_3a
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 116
    :sswitch_41
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_46

    return v1

    :cond_46
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 94
    :sswitch_4f
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_54

    return v1

    :cond_54
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_5b

    return v2

    :cond_5b
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 68
    :sswitch_62
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_71

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_71
    return v2

    .line 64
    :sswitch_72
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_81

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_81
    return v2

    .line 52
    :sswitch_82
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_91

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_91
    return v2

    .line 48
    :sswitch_92
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a6

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object p2

    if-eqz p2, :cond_a5

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p4, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_a5
    return v2

    :cond_a6
    return v1

    nop

    :sswitch_data_a8
    .sparse-switch
        0x1 -> :sswitch_92
        0x3 -> :sswitch_82
        0x5 -> :sswitch_72
        0x7 -> :sswitch_62
        0xb -> :sswitch_4f
        0xf -> :sswitch_41
        0x15 -> :sswitch_2e
        0x18 -> :sswitch_25
        0x1e -> :sswitch_12
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffe

    const v2, -0xbffff

    const/4 v3, 0x0

    const/4 v4, 0x3

    sparse-switch v0, :sswitch_data_8e

    .line 94
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 186
    :sswitch_12
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 183
    :sswitch_1d
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 156
    :sswitch_28
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 151
    :sswitch_33
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_38

    return v2

    :cond_38
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_3f

    return v1

    :cond_3f
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 129
    :sswitch_48
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4d

    return v2

    :cond_4d
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 125
    :sswitch_58
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_5d

    return v2

    :cond_5d
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 116
    :sswitch_68
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_6d

    return v2

    :cond_6d
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 94
    :sswitch_78
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_7d

    return v2

    :cond_7d
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_84

    return v1

    :cond_84
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    nop

    :sswitch_data_8e
    .sparse-switch
        0xb -> :sswitch_78
        0xf -> :sswitch_68
        0x11 -> :sswitch_58
        0x12 -> :sswitch_48
        0x16 -> :sswitch_33
        0x18 -> :sswitch_28
        0x1f -> :sswitch_1d
        0x21 -> :sswitch_12
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 11

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x4

    sparse-switch v0, :sswitch_data_40

    .line 129
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 156
    :sswitch_f
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 139
    :sswitch_1c
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_21

    return v1

    :cond_21
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 129
    :sswitch_2e
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_33

    return v1

    :cond_33
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_40
    .sparse-switch
        0x12 -> :sswitch_2e
        0x14 -> :sswitch_1c
        0x18 -> :sswitch_f
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 25
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 27
    nop

    .line 28
    nop

    .line 37
    nop

    .line 38
    nop

    .line 46
    nop

    .line 48
    nop

    .line 52
    nop

    .line 60
    nop

    .line 64
    nop

    .line 68
    nop

    .line 72
    nop

    .line 76
    nop

    .line 78
    nop

    .line 82
    nop

    .line 86
    nop

    .line 94
    nop

    .line 116
    nop

    .line 125
    nop

    .line 129
    nop

    .line 139
    nop

    .line 146
    nop

    .line 151
    nop

    .line 156
    nop

    .line 170
    nop

    .line 173
    nop

    .line 176
    nop

    .line 182
    nop

    .line 185
    return-void
.end method

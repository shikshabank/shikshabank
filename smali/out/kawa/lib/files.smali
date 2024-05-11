.class public Lkawa/lib/files;
.super Lgnu/expr/ModuleBody;
.source "files.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nfiles.scm\nScheme\n*S Scheme\n*F\n+ 1 files.scm\n/u2/home/jis/ai2-kawa/kawa/lib/files.scm\n*L\n1#1,129:1\n*E\n"
.end annotation


# static fields
.field public static final $Mn$Grpathname:Lgnu/expr/ModuleMethod;

.field public static final $Pcfile$Mnseparator:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/files;

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

.field static final Lit23:Lgnu/mapping/SimpleSymbol;

.field static final Lit24:Lgnu/mapping/SimpleSymbol;

.field static final Lit25:Lgnu/mapping/SimpleSymbol;

.field static final Lit26:Lgnu/mapping/SimpleSymbol;

.field static final Lit27:Lgnu/mapping/SimpleSymbol;

.field static final Lit28:Lgnu/mapping/SimpleSymbol;

.field static final Lit29:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final URI$Qu:Lgnu/expr/ModuleMethod;

.field public static final absolute$Mnpath$Qu:Lgnu/expr/ModuleMethod;

.field public static final copy$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final create$Mndirectory:Lgnu/expr/ModuleMethod;

.field public static final delete$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final directory$Mnfiles:Lgnu/expr/ModuleMethod;

.field public static final file$Mndirectory$Qu:Lgnu/expr/ModuleMethod;

.field public static final file$Mnexists$Qu:Lgnu/expr/ModuleMethod;

.field public static final file$Mnreadable$Qu:Lgnu/expr/ModuleMethod;

.field public static final file$Mnwritable$Qu:Lgnu/expr/ModuleMethod;

.field public static final filepath$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mntemporary$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final path$Mnauthority:Lgnu/expr/ModuleMethod;

.field public static final path$Mndirectory:Lgnu/expr/ModuleMethod;

.field public static final path$Mnextension:Lgnu/expr/ModuleMethod;

.field public static final path$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final path$Mnfragment:Lgnu/expr/ModuleMethod;

.field public static final path$Mnhost:Lgnu/expr/ModuleMethod;

.field public static final path$Mnlast:Lgnu/expr/ModuleMethod;

.field public static final path$Mnparent:Lgnu/expr/ModuleMethod;

.field public static final path$Mnport:Lgnu/expr/ModuleMethod;

.field public static final path$Mnquery:Lgnu/expr/ModuleMethod;

.field public static final path$Mnscheme:Lgnu/expr/ModuleMethod;

.field public static final path$Mnuser$Mninfo:Lgnu/expr/ModuleMethod;

.field public static final path$Qu:Lgnu/expr/ModuleMethod;

.field public static final rename$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final resolve$Mnuri:Lgnu/expr/ModuleMethod;

.field public static final system$Mntmpdir:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcFileSeparator()Ljava/lang/String;
    .registers 1

    .line 109
    nop

    .line 110
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static $To$Pathname(Ljava/lang/Object;)Lgnu/text/Path;
    .registers 2
    .param p0, "filename"    # Ljava/lang/Object;

    .line 106
    nop

    .line 107
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 34

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-temporary-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit29:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "resolve-uri"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/files;->Lit28:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "system-tmpdir"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/files;->Lit27:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "%file-separator"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/files;->Lit26:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "->pathname"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/files;->Lit25:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "directory-files"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/files;->Lit24:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "create-directory"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/files;->Lit23:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "copy-file"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/files;->Lit22:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "rename-file"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/files;->Lit21:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "delete-file"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/files;->Lit20:Lgnu/mapping/SimpleSymbol;

    new-instance v10, Lgnu/mapping/SimpleSymbol;

    const-string v11, "file-writable?"

    invoke-direct {v10, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/files;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v11, Lgnu/mapping/SimpleSymbol;

    const-string v12, "file-readable?"

    invoke-direct {v11, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/files;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v12, Lgnu/mapping/SimpleSymbol;

    const-string v13, "file-directory?"

    invoke-direct {v12, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/files;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v13, Lgnu/mapping/SimpleSymbol;

    const-string v14, "file-exists?"

    invoke-direct {v13, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/files;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v14, Lgnu/mapping/SimpleSymbol;

    const-string v15, "path-fragment"

    invoke-direct {v14, v15}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/files;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v16, v0

    const-string v0, "path-query"

    invoke-direct {v15, v0}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/files;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v17, v1

    const-string v1, "path-port"

    invoke-direct {v15, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/files;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v18, v2

    const-string v2, "path-extension"

    invoke-direct {v15, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/files;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v19, v3

    const-string v3, "path-last"

    invoke-direct {v15, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/files;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v20, v4

    const-string v4, "path-parent"

    invoke-direct {v15, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/files;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v21, v5

    const-string v5, "path-directory"

    invoke-direct {v15, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/files;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v22, v6

    const-string v6, "path-file"

    invoke-direct {v15, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/files;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v23, v7

    const-string v7, "path-host"

    invoke-direct {v15, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/files;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v24, v8

    const-string v8, "path-user-info"

    invoke-direct {v15, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/files;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v25, v9

    const-string v9, "path-authority"

    invoke-direct {v15, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/files;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v26, v10

    const-string v10, "path-scheme"

    invoke-direct {v15, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgnu/mapping/SimpleSymbol;

    sput-object v10, Lkawa/lib/files;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v27, v11

    const-string v11, "absolute-path?"

    invoke-direct {v15, v11}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgnu/mapping/SimpleSymbol;

    sput-object v11, Lkawa/lib/files;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v28, v12

    const-string v12, "URI?"

    invoke-direct {v15, v12}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgnu/mapping/SimpleSymbol;

    sput-object v12, Lkawa/lib/files;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v29, v13

    const-string v13, "filepath?"

    invoke-direct {v15, v13}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lgnu/mapping/SimpleSymbol;

    sput-object v13, Lkawa/lib/files;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lgnu/mapping/SimpleSymbol;

    move-object/from16 v30, v14

    const-string v14, "path?"

    invoke-direct {v15, v14}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgnu/mapping/SimpleSymbol;

    sput-object v14, Lkawa/lib/files;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v15, Lkawa/lib/files;

    invoke-direct {v15}, Lkawa/lib/files;-><init>()V

    sput-object v15, Lkawa/lib/files;->$instance:Lkawa/lib/files;

    move-object/from16 v31, v0

    new-instance v0, Lgnu/expr/ModuleMethod;

    move-object/from16 v32, v1

    const/4 v1, 0x1

    move-object/from16 v33, v2

    const/16 v2, 0x1001

    invoke-direct {v0, v15, v1, v14, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x2

    invoke-direct {v0, v15, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->filepath$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x3

    invoke-direct {v0, v15, v1, v12, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->URI$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x4

    invoke-direct {v0, v15, v1, v11, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->absolute$Mnpath$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x5

    invoke-direct {v0, v15, v1, v10, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnscheme:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x6

    invoke-direct {v0, v15, v1, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnauthority:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v1, 0x7

    invoke-direct {v0, v15, v1, v8, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnuser$Mninfo:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    invoke-direct {v0, v15, v1, v7, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnhost:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x9

    invoke-direct {v0, v15, v1, v6, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xa

    invoke-direct {v0, v15, v1, v5, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mndirectory:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    invoke-direct {v0, v15, v1, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnparent:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xc

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnlast:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xd

    move-object/from16 v3, v33

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnextension:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xe

    move-object/from16 v3, v32

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnport:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xf

    move-object/from16 v3, v31

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnquery:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x10

    move-object/from16 v14, v30

    invoke-direct {v0, v15, v1, v14, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->path$Mnfragment:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x11

    move-object/from16 v13, v29

    invoke-direct {v0, v15, v1, v13, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mnexists$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x12

    move-object/from16 v12, v28

    invoke-direct {v0, v15, v1, v12, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mndirectory$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x13

    move-object/from16 v11, v27

    invoke-direct {v0, v15, v1, v11, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mnreadable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x14

    move-object/from16 v10, v26

    invoke-direct {v0, v15, v1, v10, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->file$Mnwritable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x15

    move-object/from16 v9, v25

    invoke-direct {v0, v15, v1, v9, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->delete$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x16

    const/16 v3, 0x2002

    move-object/from16 v8, v24

    invoke-direct {v0, v15, v1, v8, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->rename$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x17

    move-object/from16 v7, v23

    invoke-direct {v0, v15, v1, v7, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->copy$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x18

    move-object/from16 v6, v22

    invoke-direct {v0, v15, v1, v6, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->create$Mndirectory:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x19

    move-object/from16 v5, v21

    invoke-direct {v0, v15, v1, v5, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->directory$Mnfiles:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1a

    move-object/from16 v4, v20

    invoke-direct {v0, v15, v1, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->$Mn$Grpathname:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    move-object/from16 v4, v19

    invoke-direct {v0, v15, v1, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->$Pcfile$Mnseparator:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1c

    move-object/from16 v4, v18

    invoke-direct {v0, v15, v1, v4, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->system$Mntmpdir:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1d

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->resolve$Mnuri:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1e

    const/16 v2, 0x1000

    move-object/from16 v3, v16

    invoke-direct {v0, v15, v1, v3, v2}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/files;->make$Mntemporary$Mnfile:Lgnu/expr/ModuleMethod;

    invoke-virtual {v15}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static URI$Qu(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/Object;

    .line 11
    nop

    .line 12
    instance-of v0, p0, Lgnu/text/URIPath;

    return v0
.end method

.method public static copyFile(Lgnu/text/Path;Lgnu/text/Path;)V
    .registers 6
    .param p0, "from"    # Lgnu/text/Path;
    .param p1, "to"    # Lgnu/text/Path;

    .line 84
    nop

    .line 85
    invoke-static {p0}, Lkawa/lib/ports;->openInputFile(Lgnu/text/Path;)Lgnu/mapping/InPort;

    move-result-object v0

    .line 86
    invoke-static {p1}, Lkawa/lib/ports;->openOutputFile(Lgnu/text/Path;)Lgnu/mapping/OutPort;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 87
    .local v0, "in":Lgnu/mapping/InPort;
    .local v1, "out":Lgnu/mapping/OutPort;
    sget-object v2, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "ch":Ljava/lang/Object;
    :goto_11
    invoke-static {v2}, Lkawa/lib/ports;->isEofObject(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 92
    invoke-static {v2, v1}, Lkawa/lib/ports;->writeChar(Ljava/lang/Object;Lgnu/mapping/OutPort;)V

    .line 87
    sget-object v3, Lkawa/standard/readchar;->readChar:Lkawa/standard/readchar;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_11

    .line 89
    :cond_21
    invoke-static {v1}, Lkawa/lib/ports;->closeOutputPort(Lgnu/mapping/OutPort;)Ljava/lang/Object;

    .line 90
    invoke-static {v0}, Lkawa/lib/ports;->closeInputPort(Lgnu/mapping/InPort;)Ljava/lang/Object;

    return-void
.end method

.method public static createDirectory(Lgnu/text/FilePath;)Z
    .registers 2
    .param p0, "dirname"    # Lgnu/text/FilePath;

    .line 94
    nop

    .line 95
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public static deleteFile(Lgnu/text/FilePath;)V
    .registers 5
    .param p0, "file"    # Lgnu/text/FilePath;

    .line 76
    nop

    .line 77
    invoke-virtual {p0}, Lgnu/text/FilePath;->delete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 78
    return-void

    :cond_8
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cannot delete ~a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v3, v1}, Lgnu/kawa/functions/Format;->formatToString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public static directoryFiles(Lgnu/text/FilePath;)Ljava/lang/Object;
    .registers 4
    .param p0, "dir"    # Lgnu/text/FilePath;

    .line 98
    nop

    .line 99
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move-object v1, v2

    goto :goto_10

    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    .line 100
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_1d

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_22

    .line 101
    :cond_1d
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgnu/lists/LList;->makeList([Ljava/lang/Object;I)Lgnu/lists/LList;

    move-result-object v1

    .end local v0    # "files":[Ljava/lang/String;
    :goto_22
    return-object v1
.end method

.method public static isAbsolutePath(Lgnu/text/Path;)Z
    .registers 2
    .param p0, "path"    # Lgnu/text/Path;

    .line 13
    nop

    .line 14
    invoke-virtual {p0}, Lgnu/text/Path;->isAbsolute()Z

    move-result v0

    return v0
.end method

.method public static isFileDirectory(Lgnu/text/Path;)Z
    .registers 2
    .param p0, "file"    # Lgnu/text/Path;

    .line 64
    nop

    .line 65
    invoke-virtual {p0}, Lgnu/text/Path;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public static isFileExists(Lgnu/text/Path;)Z
    .registers 2
    .param p0, "file"    # Lgnu/text/Path;

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Lgnu/text/Path;->exists()Z

    move-result v0

    return v0
.end method

.method public static isFileReadable(Lgnu/text/FilePath;)Z
    .registers 2
    .param p0, "file"    # Lgnu/text/FilePath;

    .line 67
    nop

    .line 68
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public static isFileWritable(Lgnu/text/FilePath;)Z
    .registers 2
    .param p0, "file"    # Lgnu/text/FilePath;

    .line 70
    nop

    .line 71
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public static isFilepath(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/Object;

    .line 9
    nop

    .line 10
    instance-of v0, p0, Lgnu/text/FilePath;

    return v0
.end method

.method public static isPath(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/Object;

    .line 7
    nop

    .line 8
    instance-of v0, p0, Lgnu/text/Path;

    return v0
.end method

.method public static makeTemporaryFile()Lgnu/text/FilePath;
    .registers 1

    const-string v0, "kawa~d.tmp"

    invoke-static {v0}, Lkawa/lib/files;->makeTemporaryFile(Ljava/lang/CharSequence;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public static makeTemporaryFile(Ljava/lang/CharSequence;)Lgnu/text/FilePath;
    .registers 2
    .param p0, "fmt"    # Ljava/lang/CharSequence;

    .line 127
    nop

    .line 129
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/functions/FileUtils;->createTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    return-object v0
.end method

.method public static pathAuthority(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Lgnu/text/Path;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 20
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathDirectory(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lgnu/text/Path;->getDirectory()Lgnu/text/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 31
    .local v0, "s":Lgnu/text/Path;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "s":Lgnu/text/Path;
    :goto_f
    return-object v1
.end method

.method public static pathExtension(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 38
    nop

    .line 39
    invoke-virtual {p0}, Lgnu/text/Path;->getExtension()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathFile(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 26
    nop

    .line 27
    invoke-virtual {p0}, Lgnu/text/Path;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 28
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathFragment(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Lgnu/text/Path;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathHost(Lgnu/text/Path;)Ljava/lang/String;
    .registers 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 24
    nop

    .line 25
    invoke-virtual {p0}, Lgnu/text/Path;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pathLast(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 35
    nop

    .line 36
    invoke-virtual {p0}, Lgnu/text/Path;->getLast()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathParent(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 32
    nop

    .line 33
    invoke-virtual {p0}, Lgnu/text/Path;->getParent()Lgnu/text/Path;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    .local v0, "s":Lgnu/text/Path;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lgnu/text/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0    # "s":Lgnu/text/Path;
    :goto_f
    return-object v1
.end method

.method public static pathPort(Lgnu/text/Path;)I
    .registers 2
    .param p0, "p"    # Lgnu/text/Path;

    .line 41
    nop

    .line 42
    invoke-virtual {p0}, Lgnu/text/Path;->getPort()I

    move-result v0

    return v0
.end method

.method public static pathQuery(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 43
    nop

    .line 44
    invoke-virtual {p0}, Lgnu/text/Path;->getQuery()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 45
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathScheme(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 15
    nop

    .line 16
    invoke-virtual {p0}, Lgnu/text/Path;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 17
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static pathUserInfo(Lgnu/text/Path;)Ljava/lang/Object;
    .registers 3
    .param p0, "p"    # Lgnu/text/Path;

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Lgnu/text/Path;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    :cond_b
    return-object v0
.end method

.method public static renameFile(Lgnu/text/FilePath;Lgnu/text/FilePath;)Z
    .registers 4
    .param p0, "oldname"    # Lgnu/text/FilePath;
    .param p1, "newname"    # Lgnu/text/FilePath;

    .line 81
    nop

    .line 82
    invoke-virtual {p0}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static resolveUri(Lgnu/text/Path;Lgnu/text/Path;)Lgnu/text/Path;
    .registers 3
    .param p0, "uri"    # Lgnu/text/Path;
    .param p1, "base"    # Lgnu/text/Path;

    .line 123
    nop

    .line 124
    invoke-virtual {p1, p0}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static systemTmpdir()Ljava/lang/String;
    .registers 3

    .line 112
    nop

    .line 113
    nop

    .line 114
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 115
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_d

    goto :goto_20

    .line 117
    :cond_d
    invoke-static {}, Lkawa/lib/files;->$PcFileSeparator()Ljava/lang/String;

    move-result-object v2

    .local v1, "sep":Ljava/lang/String;
    move-object v1, v2

    .line 118
    const-string v2, "\\"

    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "C:\\temp"

    goto :goto_1f

    :cond_1d
    const-string v2, "/tmp"

    :goto_1f
    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "sep":Ljava/lang/String;
    :goto_20
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1a

    .line 127
    :pswitch_5
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {}, Lkawa/lib/files;->makeTemporaryFile()Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    .line 112
    :pswitch_f
    invoke-static {}, Lkawa/lib/files;->systemTmpdir()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :pswitch_14
    invoke-static {}, Lkawa/lib/files;->$PcFileSeparator()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_1a
    .packed-switch 0x1b
        :pswitch_14
        :pswitch_f
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1dc

    .line 127
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lkawa/lib/files;->makeTemporaryFile(Ljava/lang/CharSequence;)Lgnu/text/FilePath;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-temporary-file"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 106
    :pswitch_1b
    invoke-static {p2}, Lkawa/lib/files;->$To$Pathname(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1

    return-object p1

    .line 98
    :pswitch_20
    :try_start_20
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_24} :catch_29

    invoke-static {p1}, Lkawa/lib/files;->directoryFiles(Lgnu/text/FilePath;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_29
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "directory-files"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 94
    :pswitch_32
    :try_start_32
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_36} :catch_42

    invoke-static {p1}, Lkawa/lib/files;->createDirectory(Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_3f

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_41

    :cond_3f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_41
    return-object p1

    :catch_42
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "create-directory"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 76
    :pswitch_4b
    :try_start_4b
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_4f
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_4f} :catch_55

    invoke-static {p1}, Lkawa/lib/files;->deleteFile(Lgnu/text/FilePath;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_55
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "delete-file"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 70
    :pswitch_5e
    :try_start_5e
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_5e .. :try_end_62} :catch_6e

    invoke-static {p1}, Lkawa/lib/files;->isFileWritable(Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_6b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6d

    :cond_6b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6d
    return-object p1

    :catch_6e
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-writable?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 67
    :pswitch_77
    :try_start_77
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_7b
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_7b} :catch_87

    invoke-static {p1}, Lkawa/lib/files;->isFileReadable(Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_84

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_86

    :cond_84
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_86
    return-object p1

    :catch_87
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-readable?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 64
    :pswitch_90
    :try_start_90
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_94
    .catch Ljava/lang/ClassCastException; {:try_start_90 .. :try_end_94} :catch_a0

    invoke-static {p1}, Lkawa/lib/files;->isFileDirectory(Lgnu/text/Path;)Z

    move-result p1

    if-eqz p1, :cond_9d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9f

    :cond_9d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9f
    return-object p1

    :catch_a0
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-directory?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 61
    :pswitch_a9
    :try_start_a9
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_ad
    .catch Ljava/lang/ClassCastException; {:try_start_a9 .. :try_end_ad} :catch_b9

    invoke-static {p1}, Lkawa/lib/files;->isFileExists(Lgnu/text/Path;)Z

    move-result p1

    if-eqz p1, :cond_b6

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b8

    :cond_b6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b8
    return-object p1

    :catch_b9
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "file-exists?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 46
    :pswitch_c2
    :try_start_c2
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_c6
    .catch Ljava/lang/ClassCastException; {:try_start_c2 .. :try_end_c6} :catch_cb

    invoke-static {p1}, Lkawa/lib/files;->pathFragment(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_cb
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-fragment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 43
    :pswitch_d4
    :try_start_d4
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_d8
    .catch Ljava/lang/ClassCastException; {:try_start_d4 .. :try_end_d8} :catch_dd

    invoke-static {p1}, Lkawa/lib/files;->pathQuery(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_dd
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-query"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 41
    :pswitch_e6
    :try_start_e6
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_ea
    .catch Ljava/lang/ClassCastException; {:try_start_e6 .. :try_end_ea} :catch_f3

    invoke-static {p1}, Lkawa/lib/files;->pathPort(Lgnu/text/Path;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_f3
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-port"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 38
    :pswitch_fc
    :try_start_fc
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_100
    .catch Ljava/lang/ClassCastException; {:try_start_fc .. :try_end_100} :catch_105

    invoke-static {p1}, Lkawa/lib/files;->pathExtension(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_105
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-extension"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 35
    :pswitch_10e
    :try_start_10e
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_112
    .catch Ljava/lang/ClassCastException; {:try_start_10e .. :try_end_112} :catch_117

    invoke-static {p1}, Lkawa/lib/files;->pathLast(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_117
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-last"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 32
    :pswitch_120
    :try_start_120
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_124
    .catch Ljava/lang/ClassCastException; {:try_start_120 .. :try_end_124} :catch_129

    invoke-static {p1}, Lkawa/lib/files;->pathParent(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_129
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-parent"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 29
    :pswitch_132
    :try_start_132
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_136
    .catch Ljava/lang/ClassCastException; {:try_start_132 .. :try_end_136} :catch_13b

    invoke-static {p1}, Lkawa/lib/files;->pathDirectory(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_13b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-directory"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 26
    :pswitch_144
    :try_start_144
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_148
    .catch Ljava/lang/ClassCastException; {:try_start_144 .. :try_end_148} :catch_14d

    invoke-static {p1}, Lkawa/lib/files;->pathFile(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_14d
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-file"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 24
    :pswitch_156
    :try_start_156
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_15a
    .catch Ljava/lang/ClassCastException; {:try_start_156 .. :try_end_15a} :catch_15f

    invoke-static {p1}, Lkawa/lib/files;->pathHost(Lgnu/text/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_15f
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-host"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 21
    :pswitch_168
    :try_start_168
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_16c
    .catch Ljava/lang/ClassCastException; {:try_start_168 .. :try_end_16c} :catch_171

    invoke-static {p1}, Lkawa/lib/files;->pathUserInfo(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_171
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-user-info"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 18
    :pswitch_17a
    :try_start_17a
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_17e
    .catch Ljava/lang/ClassCastException; {:try_start_17a .. :try_end_17e} :catch_183

    invoke-static {p1}, Lkawa/lib/files;->pathAuthority(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_183
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-authority"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 15
    :pswitch_18c
    :try_start_18c
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_190
    .catch Ljava/lang/ClassCastException; {:try_start_18c .. :try_end_190} :catch_195

    invoke-static {p1}, Lkawa/lib/files;->pathScheme(Lgnu/text/Path;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_195
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "path-scheme"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :pswitch_19e
    :try_start_19e
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_1a2
    .catch Ljava/lang/ClassCastException; {:try_start_19e .. :try_end_1a2} :catch_1ae

    invoke-static {p1}, Lkawa/lib/files;->isAbsolutePath(Lgnu/text/Path;)Z

    move-result p1

    if-eqz p1, :cond_1ab

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1ad

    :cond_1ab
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1ad
    return-object p1

    :catch_1ae
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "absolute-path?"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 11
    :pswitch_1b7
    invoke-static {p2}, Lkawa/lib/files;->URI$Qu(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1c2

    :cond_1c0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1c2
    return-object p1

    .line 9
    :pswitch_1c3
    invoke-static {p2}, Lkawa/lib/files;->isFilepath(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1cc

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1ce

    :cond_1cc
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1ce
    return-object p1

    .line 7
    :pswitch_1cf
    invoke-static {p2}, Lkawa/lib/files;->isPath(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d8

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1da

    :cond_1d8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1da
    return-object p1

    nop

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_1cf
        :pswitch_1c3
        :pswitch_1b7
        :pswitch_19e
        :pswitch_18c
        :pswitch_17a
        :pswitch_168
        :pswitch_156
        :pswitch_144
        :pswitch_132
        :pswitch_120
        :pswitch_10e
        :pswitch_fc
        :pswitch_e6
        :pswitch_d4
        :pswitch_c2
        :pswitch_a9
        :pswitch_90
        :pswitch_77
        :pswitch_5e
        :pswitch_4b
        :pswitch_6
        :pswitch_6
        :pswitch_32
        :pswitch_20
        :pswitch_1b
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const-string v0, "resolve-uri"

    const-string v1, "copy-file"

    const-string v2, "rename-file"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_6c

    .line 123
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_12
    :try_start_12
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_16} :catch_26

    :try_start_16
    invoke-static {p3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1a} :catch_1f

    invoke-static {p1, p2}, Lkawa/lib/files;->resolveUri(Lgnu/text/Path;Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object p1

    return-object p1

    :catch_1f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_26
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 84
    :sswitch_2d
    :try_start_2d
    invoke-static {p2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p1
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_31} :catch_42

    :try_start_31
    invoke-static {p3}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_35} :catch_3b

    invoke-static {p1, p2}, Lkawa/lib/files;->copyFile(Lgnu/text/Path;Lgnu/text/Path;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_3b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_42
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 81
    :sswitch_49
    :try_start_49
    invoke-static {p2}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p1
    :try_end_4d
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_4d} :catch_64

    :try_start_4d
    invoke-static {p3}, Lgnu/text/FilePath;->makeFilePath(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p2
    :try_end_51
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_51} :catch_5d

    invoke-static {p1, p2}, Lkawa/lib/files;->renameFile(Lgnu/text/FilePath;Lgnu/text/FilePath;)Z

    move-result p1

    if-eqz p1, :cond_5a

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5c

    :cond_5a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5c
    return-object p1

    :catch_5d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_64
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_6c
    .sparse-switch
        0x16 -> :sswitch_49
        0x17 -> :sswitch_2d
        0x1d -> :sswitch_12
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1a

    .line 109
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 127
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 112
    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 109
    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1a
    .packed-switch 0x1b
        :pswitch_15
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

    packed-switch v0, :pswitch_data_150

    .line 7
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 127
    :pswitch_f
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1a
    return v1

    .line 106
    :pswitch_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 98
    :pswitch_22
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_2f

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2f
    return v1

    .line 94
    :pswitch_30
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_3d

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_3d
    return v1

    .line 76
    :pswitch_3e
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_4b

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_4b
    return v1

    .line 70
    :pswitch_4c
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_59

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_59
    return v1

    .line 67
    :pswitch_5a
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_67

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_67
    return v1

    .line 64
    :pswitch_68
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_75

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_75
    return v1

    .line 61
    :pswitch_76
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_83

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_83
    return v1

    .line 46
    :pswitch_84
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_91

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_91
    return v1

    .line 43
    :pswitch_92
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_9f

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_9f
    return v1

    .line 41
    :pswitch_a0
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_ad

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_ad
    return v1

    .line 38
    :pswitch_ae
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_bb

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_bb
    return v1

    .line 35
    :pswitch_bc
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_c9

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_c9
    return v1

    .line 32
    :pswitch_ca
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_d7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_d7
    return v1

    .line 29
    :pswitch_d8
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_e5

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_e5
    return v1

    .line 26
    :pswitch_e6
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_f3

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_f3
    return v1

    .line 24
    :pswitch_f4
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_101

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_101
    return v1

    .line 21
    :pswitch_102
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_10f

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_10f
    return v1

    .line 18
    :pswitch_110
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_11d

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_11d
    return v1

    .line 15
    :pswitch_11e
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_12b

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_12b
    return v1

    .line 13
    :pswitch_12c
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_139

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_139
    return v1

    .line 11
    :pswitch_13a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 9
    :pswitch_141
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 7
    :pswitch_148
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_148
        :pswitch_141
        :pswitch_13a
        :pswitch_12c
        :pswitch_11e
        :pswitch_110
        :pswitch_102
        :pswitch_f4
        :pswitch_e6
        :pswitch_d8
        :pswitch_ca
        :pswitch_bc
        :pswitch_ae
        :pswitch_a0
        :pswitch_92
        :pswitch_84
        :pswitch_76
        :pswitch_68
        :pswitch_5a
        :pswitch_4c
        :pswitch_3e
        :pswitch_a
        :pswitch_a
        :pswitch_30
        :pswitch_22
        :pswitch_1b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const v3, -0xbfffe

    const v4, -0xbffff

    sparse-switch v0, :sswitch_data_58

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 123
    :sswitch_12
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_28

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2

    if-eqz p2, :cond_27

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_27
    return v3

    :cond_28
    return v4

    .line 84
    :sswitch_29
    invoke-static {p2}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    if-eqz v0, :cond_3f

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/text/Path;->coerceToPathOrNull(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object p2

    if-eqz p2, :cond_3e

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_3e
    return v3

    :cond_3f
    return v4

    .line 81
    :sswitch_40
    invoke-static {p2}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object v0

    if-eqz v0, :cond_56

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/text/FilePath;->coerceToFilePathOrNull(Ljava/lang/Object;)Lgnu/text/FilePath;

    move-result-object p2

    if-eqz p2, :cond_55

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_55
    return v3

    :cond_56
    return v4

    nop

    :sswitch_data_58
    .sparse-switch
        0x16 -> :sswitch_40
        0x17 -> :sswitch_29
        0x1d -> :sswitch_12
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 7
    nop

    .line 9
    nop

    .line 11
    nop

    .line 13
    nop

    .line 15
    nop

    .line 18
    nop

    .line 21
    nop

    .line 24
    nop

    .line 26
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

    .line 43
    nop

    .line 46
    nop

    .line 61
    nop

    .line 64
    nop

    .line 67
    nop

    .line 70
    nop

    .line 76
    nop

    .line 81
    nop

    .line 84
    nop

    .line 94
    nop

    .line 98
    nop

    .line 106
    nop

    .line 109
    nop

    .line 112
    nop

    .line 123
    nop

    .line 127
    return-void
.end method

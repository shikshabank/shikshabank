.class public Lkawa/standard/require;
.super Lkawa/lang/Syntax;
.source "require.java"


# static fields
.field private static final SLIB_PREFIX:Ljava/lang/String; = "gnu.kawa.slib."

.field static featureMap:Ljava/util/Hashtable;

.field public static final require:Lkawa/standard/require;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lkawa/standard/require;

    invoke-direct {v0}, Lkawa/standard/require;-><init>()V

    sput-object v0, Lkawa/standard/require;->require:Lkawa/standard/require;

    .line 19
    const-string v1, "require"

    invoke-virtual {v0, v1}, Lkawa/standard/require;->setName(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    .line 70
    const-string v0, "generic-write"

    const-string v1, "gnu.kawa.slib.genwrite"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "pretty-print"

    const-string v1, "gnu.kawa.slib.pp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "pprint-file"

    const-string v1, "gnu.kawa.slib.ppfile"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "printf"

    const-string v1, "gnu.kawa.slib.printf"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "xml"

    const-string v1, "gnu.kawa.slib.XML"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "readtable"

    const-string v1, "gnu.kawa.slib.readtable"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "srfi-10"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "http"

    const-string v1, "gnu.kawa.servlet.HTTP"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "servlets"

    const-string v1, "gnu.kawa.servlet.servlets"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "srfi-1"

    const-string v1, "gnu.kawa.slib.srfi1"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v0, "list-lib"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "srfi-2"

    const-string v1, "gnu.kawa.slib.srfi2"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "and-let*"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "srfi-13"

    const-string v1, "gnu.kawa.slib.srfi13"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v0, "string-lib"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "srfi-34"

    const-string v1, "gnu.kawa.slib.srfi34"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "srfi-35"

    const-string v1, "gnu.kawa.slib.conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "condition"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "conditions"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "srfi-37"

    const-string v1, "gnu.kawa.slib.srfi37"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "args-fold"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "srfi-64"

    const-string v1, "gnu.kawa.slib.testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "testing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "srfi-69"

    const-string v1, "gnu.kawa.slib.srfi69"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "hash-table"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "basic-hash-tables"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "srfi-95"

    const-string v1, "kawa.lib.srfi95"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "sorting-and-merging"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "regex"

    const-string v1, "kawa.lib.kawa.regex"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v0, "pregexp"

    const-string v1, "gnu.kawa.slib.pregexp"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "gui"

    const-string v1, "gnu.kawa.slib.gui"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "swing-gui"

    const-string v1, "gnu.kawa.slib.swing"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "android-defs"

    const-string v1, "gnu.kawa.android.defs"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "syntax-utils"

    const-string v1, "gnu.kawa.slib.syntaxutils"

    invoke-static {v0, v1}, Lkawa/standard/require;->map(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static find(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "typeName"    # Ljava/lang/String;

    .line 113
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z
    .registers 28

    .line 229
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v5

    .line 231
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    const/16 v8, 0x65

    const/4 v9, 0x0

    if-nez v6, :cond_b3

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    if-nez v6, :cond_b3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v5, v10, v11}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v5

    if-nez v5, :cond_b3

    .line 235
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v5

    .line 236
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v6

    .line 240
    :try_start_31
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getSourceAbsPath()Lgnu/text/Path;

    move-result-object v10

    invoke-static {v10}, Lgnu/mapping/InPort;->openFile(Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v10

    .line 241
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->clearClass()V

    .line 242
    move-object/from16 v11, p0

    invoke-virtual {v0, v11}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    .line 243
    const/16 v11, 0x8

    .line 244
    iget-boolean v12, v4, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v12, :cond_49

    .line 245
    const/16 v11, 0x9

    .line 246
    :cond_49
    invoke-virtual {v6, v10, v5, v11, v0}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v5
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_4d} :catch_97
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4d} :catch_7f
    .catch Lgnu/text/SyntaxException; {:try_start_31 .. :try_end_4d} :catch_5e

    .line 264
    nop

    .line 265
    invoke-virtual {v5}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lgnu/expr/ModuleExp;->classFor(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v5

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/expr/ModuleInfo;->setClassName(Ljava/lang/String;)V

    goto :goto_b3

    .line 258
    :catch_5e
    move-exception v0

    .line 260
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    if-ne v1, v5, :cond_66

    .line 263
    return v9

    .line 261
    :cond_66
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confussing syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :catch_7f
    move-exception v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 256
    return v9

    .line 248
    :catch_97
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 251
    return v9

    .line 268
    :cond_b3
    :goto_b3
    iget-object v5, v4, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    const/4 v6, 0x6

    if-eqz v5, :cond_da

    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getState()I

    move-result v5

    const/4 v10, 0x4

    if-ge v5, v10, :cond_da

    .line 270
    iget-object v5, v4, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    invoke-virtual {v5, v0}, Lgnu/expr/ModuleInfo;->addDependency(Lgnu/expr/ModuleInfo;)V

    .line 272
    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v5

    if-nez v5, :cond_da

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v5

    if-ge v5, v6, :cond_da

    .line 276
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v4, v0, v3, v1}, Lgnu/expr/Compilation;->pushPendingImport(Lgnu/expr/ModuleInfo;Lgnu/expr/ScopeExp;I)V

    .line 277
    return v7

    .line 281
    :cond_da
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getClassType()Lgnu/bytecode/ClassType;

    move-result-object v5

    .line 282
    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v10

    .line 283
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->sharedModuleDefs()Z

    move-result v11

    .line 284
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v12

    if-ge v12, v6, :cond_f5

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/expr/Compilation;->makeRunnable()Z

    move-result v6

    goto :goto_fb

    :cond_f5
    sget-object v6, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    invoke-virtual {v5, v6}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v6

    .line 287
    :goto_fb
    nop

    .line 288
    const-string v12, "kawa.standard.require"

    invoke-static {v12}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v12

    .line 289
    new-array v13, v7, [Lgnu/expr/Expression;

    new-instance v14, Lgnu/expr/QuoteExp;

    invoke-direct {v14, v10}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v14, v13, v9

    .line 290
    const-string v14, "find"

    invoke-static {v12, v14, v13}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v12

    .line 291
    nop

    .line 292
    invoke-virtual/range {p5 .. p5}, Lgnu/expr/Compilation;->getLanguage()Lgnu/expr/Language;

    move-result-object v13

    .line 293
    invoke-virtual {v12, v4}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v14

    .line 296
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ModuleInfo;->setupModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 298
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 299
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    const/16 v16, 0x0

    move-object/from16 v9, v16

    move-object/from16 v17, v9

    move/from16 v16, v14

    move-object v14, v0

    .line 300
    :goto_133
    const-string v7, "$instance"

    if-eqz v14, :cond_30b

    .line 302
    invoke-virtual {v14}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 303
    goto :goto_175

    .line 305
    :cond_13e
    invoke-virtual {v14}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Symbol;

    .line 306
    if-eqz v1, :cond_184

    .line 311
    :try_start_146
    invoke-virtual {v1, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14a
    .catchall {:try_start_146 .. :try_end_14a} :catchall_14b

    .line 316
    goto :goto_14d

    .line 313
    :catchall_14b
    move-exception v0

    .line 315
    nop

    .line 317
    :goto_14d
    if-nez v0, :cond_150

    .line 318
    goto :goto_175

    .line 319
    :cond_150
    instance-of v8, v0, Lgnu/mapping/Symbol;

    if-nez v8, :cond_180

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "internal error - import name mapper returned non-symbol: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x65

    invoke-virtual {v4, v8, v0}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    .line 322
    nop

    .line 300
    :goto_175
    move-object/from16 v21, v10

    move v8, v11

    move-object/from16 v20, v13

    move/from16 v10, v16

    move-object/from16 v16, v12

    goto/16 :goto_2f7

    .line 324
    :cond_180
    const/16 v8, 0x65

    check-cast v0, Lgnu/mapping/Symbol;

    .line 326
    :cond_184
    move-object/from16 v18, v9

    const-wide/16 v8, 0x800

    invoke-virtual {v14, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v19

    .line 327
    if-nez v19, :cond_1eb

    if-nez v18, :cond_1eb

    .line 329
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2e

    const/16 v9, 0x24

    invoke-virtual {v10, v1, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v9, Lgnu/expr/Declaration;

    invoke-static {v1}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v1

    invoke-direct {v9, v1, v5}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 332
    move-object v1, v10

    move v8, v11

    const-wide/32 v10, 0x40004000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 334
    invoke-virtual {v3, v9}, Lgnu/expr/ScopeExp;->addDeclaration(Lgnu/expr/Declaration;)V

    .line 336
    invoke-virtual {v9, v12}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 337
    new-instance v10, Lgnu/expr/SetExp;

    invoke-direct {v10, v9, v12}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 338
    invoke-virtual {v10, v4}, Lgnu/expr/SetExp;->setLine(Lgnu/expr/Compilation;)V

    .line 339
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 340
    invoke-virtual {v2, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Ljava/util/Vector;->size()I

    move-result v16

    .line 342
    const-wide/32 v10, 0x20000000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 345
    if-eqz v6, :cond_1e3

    .line 346
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 348
    :cond_1e3
    const-wide/16 v10, 0x2000

    invoke-virtual {v9, v10, v11}, Lgnu/expr/Declaration;->setFlag(J)V

    move/from16 v10, v16

    goto :goto_1f1

    .line 327
    :cond_1eb
    move-object v1, v10

    move v8, v11

    .line 351
    move/from16 v10, v16

    move-object/from16 v9, v18

    :goto_1f1
    iget-object v11, v14, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_20d

    .line 353
    iget-object v11, v14, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v11

    .line 354
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20d

    .line 356
    iget-object v0, v14, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 357
    move-object/from16 v17, v0

    move-object/from16 v21, v1

    move-object/from16 v16, v12

    move-object/from16 v20, v13

    goto/16 :goto_2f7

    .line 368
    :cond_20d
    iget-object v11, v14, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v11, :cond_21f

    iget-object v11, v14, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v11}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21f

    const/4 v7, 0x1

    goto :goto_220

    :cond_21f
    const/4 v7, 0x0

    .line 372
    :goto_220
    invoke-virtual {v13, v14}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v11

    invoke-virtual {v3, v0, v13, v11}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;

    move-result-object v11

    .line 373
    if-eqz v7, :cond_24e

    .line 375
    if-eqz v11, :cond_231

    .line 376
    move-object/from16 v16, v12

    move-object/from16 v20, v13

    goto :goto_267

    .line 377
    :cond_231
    invoke-virtual {v3, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 378
    move-object/from16 v16, v12

    const-wide/32 v11, 0x40004000

    invoke-virtual {v0, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 380
    invoke-virtual {v14}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v11

    invoke-virtual {v0, v11}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    .line 381
    const-wide/16 v11, 0x2000

    invoke-virtual {v0, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    move-object/from16 v21, v1

    move-object/from16 v20, v13

    goto :goto_293

    .line 383
    :cond_24e
    move-object/from16 v16, v12

    if-eqz v11, :cond_26b

    move-object/from16 v20, v13

    const-wide/16 v12, 0x200

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v12

    if-nez v12, :cond_26d

    invoke-static {v11}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v12

    invoke-static {v14}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v13

    if-ne v12, v13, :cond_26d

    .line 387
    nop

    .line 300
    :goto_267
    move-object/from16 v21, v1

    goto/16 :goto_2f7

    .line 383
    :cond_26b
    move-object/from16 v20, v13

    .line 390
    :cond_26d
    if-eqz v11, :cond_27f

    const-wide/32 v12, 0x10200

    invoke-virtual {v11, v12, v13}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v18

    if-eqz v18, :cond_27f

    .line 393
    move-object/from16 v21, v1

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v12, v13}, Lgnu/expr/Declaration;->setFlag(ZJ)V

    .line 394
    goto :goto_28b

    .line 390
    :cond_27f
    move-object/from16 v21, v1

    .line 398
    invoke-virtual {v3, v0}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 399
    if-eqz v11, :cond_28a

    .line 400
    invoke-static {v11, v0, v4}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 402
    :cond_28a
    move-object v11, v0

    :goto_28b
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 403
    invoke-virtual {v11, v1}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    move-object v0, v11

    .line 405
    :goto_293
    invoke-virtual {v0, v4}, Lgnu/expr/Declaration;->setLocation(Lgnu/text/SourceLocator;)V

    .line 406
    new-instance v1, Lgnu/expr/ReferenceExp;

    invoke-direct {v1, v14}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 407
    invoke-virtual {v1, v9}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 408
    if-nez v7, :cond_2a9

    .line 410
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 411
    if-nez v8, :cond_2a9

    .line 412
    invoke-virtual {v0, v11}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 415
    :cond_2a9
    const-wide/16 v11, 0x4000

    invoke-virtual {v0, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 416
    const-wide/32 v11, 0x8000

    invoke-virtual {v14, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v13

    if-eqz v13, :cond_2ba

    .line 417
    invoke-virtual {v0, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 418
    :cond_2ba
    invoke-virtual {v14}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v11

    if-eqz v11, :cond_2c4

    .line 419
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 420
    :cond_2c4
    if-eqz v19, :cond_2cb

    .line 421
    const-wide/16 v11, 0x800

    invoke-virtual {v0, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 423
    :cond_2cb
    new-instance v11, Lgnu/expr/SetExp;

    invoke-direct {v11, v0, v1}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 424
    const-wide/32 v12, 0x20000000

    invoke-virtual {v0, v12, v13}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 425
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 426
    if-eqz v7, :cond_2e2

    .line 432
    invoke-virtual {v2, v11, v10}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 433
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e5

    .line 436
    :cond_2e2
    invoke-virtual {v2, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 438
    :goto_2e5
    invoke-virtual {v15, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v15, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v0, v1}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    .line 442
    const-wide/32 v11, 0x20000

    invoke-virtual {v0, v11, v12}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 443
    invoke-virtual {v4, v0}, Lgnu/expr/Compilation;->push(Lgnu/expr/Declaration;)V

    .line 300
    :goto_2f7
    invoke-virtual {v14}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v14

    move-object/from16 v1, p2

    move v11, v8

    move-object/from16 v12, v16

    move-object/from16 v13, v20

    const/4 v7, 0x1

    const/16 v8, 0x65

    move/from16 v16, v10

    move-object/from16 v10, v21

    goto/16 :goto_133

    .line 448
    :cond_30b
    move-object/from16 v18, v9

    move-object/from16 v16, v12

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v0

    .line 449
    const/4 v1, 0x0

    :goto_314
    if-ge v1, v0, :cond_387

    .line 451
    invoke-virtual {v15, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/expr/Declaration;

    .line 452
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v15, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/expr/Declaration;

    .line 453
    invoke-virtual {v9}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v10

    .line 454
    invoke-virtual {v9}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v9

    if-eqz v9, :cond_380

    instance-of v9, v10, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_380

    .line 456
    invoke-virtual {v8}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v8

    check-cast v8, Lgnu/expr/ReferenceExp;

    .line 457
    check-cast v10, Lgnu/expr/ReferenceExp;

    invoke-virtual {v10}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v9

    .line 458
    invoke-virtual {v8, v9}, Lgnu/expr/ReferenceExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 459
    invoke-virtual {v9}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v10

    if-eqz v10, :cond_37b

    .line 461
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v9}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v9

    invoke-virtual {v9}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x24

    const/16 v12, 0x2e

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 464
    invoke-static {v9}, Lgnu/mapping/SimpleSymbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v9

    invoke-virtual {v3, v9}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v9

    .line 465
    const-wide/16 v13, 0x400

    invoke-virtual {v9, v13, v14}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 466
    invoke-virtual {v8, v9}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    goto :goto_384

    .line 459
    :cond_37b
    const/16 v11, 0x24

    const/16 v12, 0x2e

    goto :goto_384

    .line 454
    :cond_380
    const/16 v11, 0x24

    const/16 v12, 0x2e

    .line 449
    :goto_384
    add-int/lit8 v1, v1, 0x2

    goto :goto_314

    .line 471
    :cond_387
    if-eqz v6, :cond_3ce

    .line 473
    sget-object v0, Lgnu/expr/Compilation;->typeRunnable:Lgnu/bytecode/ClassType;

    const-string v1, "run"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    .line 474
    if-eqz v18, :cond_39d

    .line 475
    new-instance v12, Lgnu/expr/ReferenceExp;

    move-object/from16 v9, v18

    invoke-direct {v12, v9}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    const/4 v5, 0x1

    goto :goto_3bd

    .line 478
    :cond_39d
    if-eqz v17, :cond_3ba

    .line 480
    const/4 v1, 0x2

    new-array v1, v1, [Lgnu/expr/Expression;

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v3, v1, v5

    new-instance v3, Lgnu/expr/QuoteExp;

    invoke-direct {v3, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v3, v1, v5

    .line 482
    new-instance v12, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/reflect/SlotGet;->staticField:Lgnu/kawa/reflect/SlotGet;

    invoke-direct {v12, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    goto :goto_3bd

    .line 478
    :cond_3ba
    const/4 v5, 0x1

    move-object/from16 v12, v16

    .line 485
    :goto_3bd
    new-instance v1, Lgnu/expr/ApplyExp;

    new-array v3, v5, [Lgnu/expr/Expression;

    const/4 v6, 0x0

    aput-object v12, v3, v6

    invoke-direct {v1, v0, v3}, Lgnu/expr/ApplyExp;-><init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V

    .line 486
    invoke-virtual {v1, v4}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Compilation;)V

    .line 487
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3cf

    .line 471
    :cond_3ce
    const/4 v5, 0x1

    .line 490
    :goto_3cf
    return v5
.end method

.method public static lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;
    .registers 5
    .param p0, "sourceName"    # Ljava/lang/String;
    .param p1, "defs"    # Lgnu/expr/ScopeExp;

    .line 214
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    .line 215
    .local v0, "manager":Lgnu/expr/ModuleManager;
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "baseName":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 217
    invoke-static {v1}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2, p0}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 218
    :cond_16
    invoke-virtual {v0, p0}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    return-object v2
.end method

.method static map(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static mapFeature(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "featureName"    # Ljava/lang/String;

    .line 108
    sget-object v0, Lkawa/standard/require;->featureMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "form"    # Lgnu/lists/Pair;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .registers 16

    .line 120
    invoke-virtual {p4}, Lkawa/lang/Translator;->getState()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_e

    .line 122
    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lkawa/lang/Translator;->setState(I)V

    .line 123
    iput-object p1, p4, Lkawa/lang/Translator;->pendingForm:Ljava/lang/Object;

    .line 126
    return v7

    .line 128
    :cond_e
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 129
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 130
    const/4 v3, 0x0

    .line 132
    instance-of v4, v2, Lgnu/lists/Pair;

    const/16 v5, 0x65

    const/4 v8, 0x0

    if-eqz v4, :cond_88

    move-object v4, v2

    check-cast v4, Lgnu/lists/Pair;

    invoke-virtual {v4}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "quote"

    invoke-virtual {p4, v9, v10}, Lkawa/lang/Translator;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 135
    invoke-virtual {v4}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 136
    instance-of v2, v1, Lgnu/lists/Pair;

    if-eqz v2, :cond_82

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v2, v3, :cond_82

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/mapping/Symbol;

    if-nez v2, :cond_4a

    goto :goto_82

    .line 143
    :cond_4a
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/standard/require;->mapFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    if-nez v2, :cond_79

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown feature name \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' for \'require\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 147
    return v8

    .line 149
    :cond_79
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    goto/16 :goto_113

    .line 140
    :cond_82
    :goto_82
    const-string v0, "invalid quoted symbol for \'require\'"

    invoke-virtual {p4, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 141
    return v8

    .line 151
    :cond_88
    instance-of v4, v2, Ljava/lang/CharSequence;

    const-string v9, "malformed URL: "

    if-eqz v4, :cond_b7

    .line 158
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1, p3}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    .line 160
    if-nez v2, :cond_ad

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 163
    return v8

    .line 165
    :cond_ad
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v0

    return v0

    .line 167
    :cond_b7
    instance-of v4, v2, Lgnu/mapping/Symbol;

    if-eqz v4, :cond_113

    invoke-virtual {p4, v2}, Lkawa/lang/Translator;->selfEvaluatingSymbol(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_113

    .line 169
    invoke-virtual {p4}, Lkawa/lang/Translator;->getLanguage()Lgnu/expr/Language;

    move-result-object v3

    invoke-virtual {p4, v2, v8}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;Z)Lgnu/expr/Expression;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 170
    instance-of v2, v3, Lgnu/bytecode/ClassType;

    if-eqz v2, :cond_113

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lgnu/lists/Pair;

    if-eqz v2, :cond_113

    .line 172
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .line 173
    instance-of v2, v1, Ljava/lang/CharSequence;

    if-eqz v2, :cond_113

    .line 180
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {v1, p3}, Lkawa/standard/require;->lookupModuleFromSourcePath(Ljava/lang/String;Lgnu/expr/ScopeExp;)Lgnu/expr/ModuleInfo;

    move-result-object v2

    .line 182
    if-nez v2, :cond_106

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 185
    return v8

    .line 187
    :cond_106
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    move-result v0

    return v0

    .line 192
    :cond_113
    :goto_113
    instance-of v1, v3, Lgnu/bytecode/ClassType;

    if-nez v1, :cond_11d

    .line 194
    const-string v0, "invalid specifier for \'require\'"

    invoke-virtual {p4, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 195
    return v8

    .line 200
    :cond_11d
    :try_start_11d
    move-object v1, v3

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-static {v1}, Lgnu/expr/ModuleInfo;->find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;

    move-result-object v2
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_124} :catch_12e

    .line 206
    nop

    .line 207
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lkawa/standard/require;->importDefinitions(Ljava/lang/String;Lgnu/expr/ModuleInfo;Lgnu/mapping/Procedure;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lgnu/expr/Compilation;)Z

    .line 209
    return v7

    .line 202
    :catch_12e
    move-exception v0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v5, v0}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 205
    return v8
.end method

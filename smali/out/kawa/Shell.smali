.class public Lkawa/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# static fields
.field private static boolClasses:[Ljava/lang/Class;

.field public static currentLoadPath:Ljava/lang/ThreadLocal;

.field public static defaultFormatInfo:[Ljava/lang/Object;

.field public static defaultFormatMethod:Ljava/lang/reflect/Method;

.field public static defaultFormatName:Ljava/lang/String;

.field static formats:[[Ljava/lang/Object;

.field private static httpPrinterClasses:[Ljava/lang/Class;

.field private static noClasses:[Ljava/lang/Class;

.field private static portArg:Ljava/lang/Object;

.field private static xmlPrinterClasses:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 19
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    .line 25
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    .line 26
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    sput-object v2, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    .line 27
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lgnu/mapping/OutPort;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v1

    sput-object v4, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    .line 29
    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Lgnu/mapping/OutPort;

    aput-object v5, v4, v0

    sput-object v4, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    .line 31
    const-string v4, "(port)"

    sput-object v4, Lkawa/Shell;->portArg:Ljava/lang/Object;

    .line 41
    const/16 v4, 0xe

    new-array v4, v4, [[Ljava/lang/Object;

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "scheme"

    aput-object v7, v6, v0

    const-string v7, "gnu.kawa.functions.DisplayFormat"

    aput-object v7, v6, v1

    const-string v8, "getSchemeFormat"

    aput-object v8, v6, v3

    const/4 v9, 0x3

    aput-object v2, v6, v9

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v10, 0x4

    aput-object v2, v6, v10

    aput-object v6, v4, v0

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "readable-scheme"

    aput-object v6, v2, v0

    aput-object v7, v2, v1

    aput-object v8, v2, v3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v2, v9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v10

    aput-object v2, v4, v1

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "elisp"

    aput-object v6, v2, v0

    aput-object v7, v2, v1

    const-string v6, "getEmacsLispFormat"

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    aput-object v2, v4, v3

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "readable-elisp"

    aput-object v8, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v2, v9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v10

    aput-object v2, v4, v9

    new-array v2, v5, [Ljava/lang/Object;

    const-string v6, "clisp"

    aput-object v6, v2, v0

    aput-object v7, v2, v1

    const-string v6, "getCommonLispFormat"

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    aput-object v2, v4, v10

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "readable-clisp"

    aput-object v8, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    aput-object v2, v4, v5

    new-array v2, v5, [Ljava/lang/Object;

    const-string v8, "commonlisp"

    aput-object v8, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v8, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v8, v2, v9

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v8, v2, v10

    const/4 v8, 0x6

    aput-object v2, v4, v8

    new-array v2, v5, [Ljava/lang/Object;

    const-string v11, "readable-commonlisp"

    aput-object v11, v2, v0

    aput-object v7, v2, v1

    aput-object v6, v2, v3

    sget-object v6, Lkawa/Shell;->boolClasses:[Ljava/lang/Class;

    aput-object v6, v2, v9

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v2, v10

    const/4 v6, 0x7

    aput-object v2, v4, v6

    new-array v2, v8, [Ljava/lang/Object;

    const-string v6, "xml"

    aput-object v6, v2, v0

    const-string v6, "gnu.xml.XMLPrinter"

    aput-object v6, v2, v1

    const-string v7, "make"

    aput-object v7, v2, v3

    sget-object v11, Lkawa/Shell;->xmlPrinterClasses:[Ljava/lang/Class;

    aput-object v11, v2, v9

    sget-object v12, Lkawa/Shell;->portArg:Ljava/lang/Object;

    aput-object v12, v2, v10

    const/4 v13, 0x0

    aput-object v13, v2, v5

    const/16 v14, 0x8

    aput-object v2, v4, v14

    new-array v2, v8, [Ljava/lang/Object;

    const-string v14, "html"

    aput-object v14, v2, v0

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    aput-object v11, v2, v9

    aput-object v12, v2, v10

    aput-object v14, v2, v5

    const/16 v14, 0x9

    aput-object v2, v4, v14

    new-array v2, v8, [Ljava/lang/Object;

    const-string v8, "xhtml"

    aput-object v8, v2, v0

    aput-object v6, v2, v1

    aput-object v7, v2, v3

    aput-object v11, v2, v9

    aput-object v12, v2, v10

    aput-object v8, v2, v5

    const/16 v6, 0xa

    aput-object v2, v4, v6

    new-array v2, v5, [Ljava/lang/Object;

    const-string v5, "cgi"

    aput-object v5, v2, v0

    const-string v5, "gnu.kawa.xml.HttpPrinter"

    aput-object v5, v2, v1

    aput-object v7, v2, v3

    sget-object v5, Lkawa/Shell;->httpPrinterClasses:[Ljava/lang/Class;

    aput-object v5, v2, v9

    aput-object v12, v2, v10

    const/16 v5, 0xb

    aput-object v2, v4, v5

    new-array v2, v10, [Ljava/lang/Object;

    const-string v5, "ignore"

    aput-object v5, v2, v0

    const-string v5, "gnu.lists.VoidConsumer"

    aput-object v5, v2, v1

    const-string v5, "getInstance"

    aput-object v5, v2, v3

    sget-object v3, Lkawa/Shell;->noClasses:[Ljava/lang/Class;

    aput-object v3, v2, v9

    const/16 v3, 0xc

    aput-object v2, v4, v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v13, v1, v0

    const/16 v0, 0xd

    aput-object v1, v4, v0

    sput-object v4, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;
    .registers 11
    .param p0, "fs"    # Ljava/io/InputStream;
    .param p1, "path"    # Lgnu/text/Path;
    .param p2, "env"    # Lgnu/mapping/Environment;
    .param p3, "language"    # Lgnu/expr/Language;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    const/4 v0, 0x5

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 355
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x50

    if-ne v0, v2, :cond_25

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v2, 0x4b

    if-ne v0, v2, :cond_25

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_25

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 357
    .local v0, "isZip":Z
    :goto_26
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_29} :catch_ee

    .line 358
    if-nez v0, :cond_2c

    .line 359
    return-object v1

    .line 364
    .end local v0    # "isZip":Z
    :cond_2c
    nop

    .line 365
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 366
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 367
    .local v0, "orig_env":Lgnu/mapping/Environment;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "name":Ljava/lang/String;
    const-string v2, "load: "

    if-eq p2, v0, :cond_3f

    .line 371
    :try_start_3c
    invoke-static {p2}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    .line 372
    :cond_3f
    instance-of v3, p1, Lgnu/text/FilePath;

    if-eqz v3, :cond_a3

    .line 374
    move-object v3, p1

    check-cast v3, Lgnu/text/FilePath;

    invoke-virtual {v3}, Lgnu/text/FilePath;->toFile()Ljava/io/File;

    move-result-object v3

    .line 375
    .local v3, "zfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_86

    .line 377
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 379
    new-instance v4, Lgnu/bytecode/ZipLoader;

    invoke-direct {v4, v1}, Lgnu/bytecode/ZipLoader;-><init>(Ljava/lang/String;)V

    .line 380
    .local v4, "loader":Lgnu/bytecode/ZipLoader;
    invoke-virtual {v4}, Lgnu/bytecode/ZipLoader;->loadAllClasses()Ljava/lang/Class;

    move-result-object v5

    .line 381
    .local v5, "clas":Ljava/lang/Class;
    invoke-static {v5, p3}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v2
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_63} :catch_c2
    .catchall {:try_start_3c .. :try_end_63} :catchall_c0

    .line 389
    if-eq p2, v0, :cond_68

    .line 390
    invoke-static {v0}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_68
    return-object v2

    .line 378
    .end local v4    # "loader":Lgnu/bytecode/ZipLoader;
    .end local v5    # "clas":Ljava/lang/Class;
    :cond_69
    :try_start_69
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "orig_env":Lgnu/mapping/Environment;
    .end local v1    # "name":Ljava/lang/String;
    .end local p0    # "fs":Ljava/io/InputStream;
    .end local p1    # "path":Lgnu/text/Path;
    .end local p2    # "env":Lgnu/mapping/Environment;
    .end local p3    # "language":Lgnu/expr/Language;
    throw v4

    .line 376
    .restart local v0    # "orig_env":Lgnu/mapping/Environment;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local p0    # "fs":Ljava/io/InputStream;
    .restart local p1    # "path":Lgnu/text/Path;
    .restart local p2    # "env":Lgnu/mapping/Environment;
    .restart local p3    # "language":Lgnu/expr/Language;
    :cond_86
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "orig_env":Lgnu/mapping/Environment;
    .end local v1    # "name":Ljava/lang/String;
    .end local p0    # "fs":Ljava/io/InputStream;
    .end local p1    # "path":Lgnu/text/Path;
    .end local p2    # "env":Lgnu/mapping/Environment;
    .end local p3    # "language":Lgnu/expr/Language;
    throw v4

    .line 373
    .end local v3    # "zfile":Ljava/io/File;
    .restart local v0    # "orig_env":Lgnu/mapping/Environment;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local p0    # "fs":Ljava/io/InputStream;
    .restart local p1    # "path":Lgnu/text/Path;
    .restart local p2    # "env":Lgnu/mapping/Environment;
    .restart local p3    # "language":Lgnu/expr/Language;
    :cond_a3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - not a file path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "orig_env":Lgnu/mapping/Environment;
    .end local v1    # "name":Ljava/lang/String;
    .end local p0    # "fs":Ljava/io/InputStream;
    .end local p1    # "path":Lgnu/text/Path;
    .end local p2    # "env":Lgnu/mapping/Environment;
    .end local p3    # "language":Lgnu/expr/Language;
    throw v3
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_c0} :catch_c2
    .catchall {:try_start_69 .. :try_end_c0} :catchall_c0

    .line 389
    .restart local v0    # "orig_env":Lgnu/mapping/Environment;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local p0    # "fs":Ljava/io/InputStream;
    .restart local p1    # "path":Lgnu/text/Path;
    .restart local p2    # "env":Lgnu/mapping/Environment;
    .restart local p3    # "language":Lgnu/expr/Language;
    :catchall_c0
    move-exception v2

    goto :goto_e8

    .line 383
    :catch_c2
    move-exception v3

    .line 385
    .local v3, "ex":Ljava/io/IOException;
    :try_start_c3
    new-instance v4, Lgnu/mapping/WrappedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "orig_env":Lgnu/mapping/Environment;
    .end local v1    # "name":Ljava/lang/String;
    .end local p0    # "fs":Ljava/io/InputStream;
    .end local p1    # "path":Lgnu/text/Path;
    .end local p2    # "env":Lgnu/mapping/Environment;
    .end local p3    # "language":Lgnu/expr/Language;
    throw v4
    :try_end_e8
    .catchall {:try_start_c3 .. :try_end_e8} :catchall_c0

    .line 389
    .end local v3    # "ex":Ljava/io/IOException;
    .restart local v0    # "orig_env":Lgnu/mapping/Environment;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local p0    # "fs":Ljava/io/InputStream;
    .restart local p1    # "path":Lgnu/text/Path;
    .restart local p2    # "env":Lgnu/mapping/Environment;
    .restart local p3    # "language":Lgnu/expr/Language;
    :goto_e8
    if-eq p2, v0, :cond_ed

    .line 390
    invoke-static {v0}, Lgnu/mapping/Environment;->setCurrent(Lgnu/mapping/Environment;)V

    :cond_ed
    throw v2

    .line 361
    .end local v0    # "orig_env":Lgnu/mapping/Environment;
    .end local v1    # "name":Ljava/lang/String;
    :catch_ee
    move-exception v0

    .line 363
    .local v0, "ex":Ljava/io/IOException;
    return-object v1
.end method

.method static compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;
    .registers 12
    .param p0, "port"    # Lgnu/mapping/InPort;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "language"    # Lgnu/expr/Language;
    .param p4, "messages"    # Lgnu/text/SourceMessages;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/text/SyntaxException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    .line 525
    .local v0, "manager":Lgnu/expr/ModuleManager;
    invoke-virtual {p0}, Lgnu/mapping/InPort;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->findWithSourcePath(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v1

    .line 526
    .local v1, "minfo":Lgnu/expr/ModuleInfo;
    const/4 v2, 0x1

    invoke-virtual {p3, p0, p4, v2, v1}, Lgnu/expr/Language;->parse(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v2

    .line 528
    .local v2, "comp":Lgnu/expr/Compilation;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v3

    .line 529
    .local v3, "ctx":Lgnu/mapping/CallContext;
    sget-object v4, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v4, v3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    .line 530
    const/4 v4, 0x0

    invoke-static {p1, v2, p2, v4}, Lgnu/expr/ModuleExp;->evalModule1(Lgnu/mapping/Environment;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Ljava/lang/Object;

    move-result-object v5

    .line 531
    .local v5, "inst":Ljava/lang/Object;
    if-eqz v5, :cond_31

    invoke-virtual {p4}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v6

    if-eqz v6, :cond_27

    goto :goto_31

    .line 533
    :cond_27
    new-instance v4, Lgnu/expr/CompiledModule;

    invoke-virtual {v2}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v6

    invoke-direct {v4, v6, v5, p3}, Lgnu/expr/CompiledModule;-><init>(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/expr/Language;)V

    return-object v4

    .line 532
    :cond_31
    :goto_31
    return-object v4
.end method

.method public static getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;
    .registers 6
    .param p0, "out"    # Lgnu/mapping/OutPort;

    .line 132
    sget-object v0, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 133
    .local v0, "info":[Ljava/lang/Object;
    if-nez p0, :cond_9

    .line 134
    invoke-static {}, Lgnu/lists/VoidConsumer;->getInstance()Lgnu/lists/VoidConsumer;

    move-result-object v1

    return-object v1

    .line 135
    :cond_9
    if-nez v0, :cond_14

    .line 136
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgnu/expr/Language;->getOutputConsumer(Ljava/io/Writer;)Lgnu/lists/Consumer;

    move-result-object v1

    return-object v1

    .line 139
    :cond_14
    :try_start_14
    array-length v1, v0

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 140
    .local v1, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    array-length v2, v1

    .local v2, "i":I
    :cond_1f
    :goto_1f
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2c

    .line 142
    aget-object v3, v1, v2

    sget-object v4, Lkawa/Shell;->portArg:Ljava/lang/Object;

    if-ne v3, v4, :cond_1f

    .line 143
    aput-object p0, v1, v2

    goto :goto_1f

    .line 144
    .end local v2    # "i":I
    :cond_2c
    sget-object v2, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    .local v2, "format":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/lists/AbstractFormat;

    if-eqz v3, :cond_3d

    .line 147
    move-object v3, v2

    check-cast v3, Lgnu/lists/AbstractFormat;

    iput-object v3, p0, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 148
    return-object p0

    .line 151
    :cond_3d
    move-object v3, v2

    check-cast v3, Lgnu/lists/Consumer;
    :try_end_40
    .catchall {:try_start_14 .. :try_end_40} :catchall_41

    return-object v3

    .line 153
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v2    # "format":Ljava/lang/Object;
    :catchall_41
    move-exception v1

    .line 155
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get output-format \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' - caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_68

    :goto_67
    throw v2

    :goto_68
    goto :goto_67
.end method

.method public static printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    .registers 6
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "messages"    # Lgnu/text/SourceMessages;
    .param p2, "perr"    # Lgnu/mapping/OutPort;

    .line 308
    instance-of v0, p0, Lgnu/mapping/WrongArguments;

    const/16 v1, 0x14

    if-eqz v0, :cond_2c

    .line 310
    move-object v0, p0

    check-cast v0, Lgnu/mapping/WrongArguments;

    .line 311
    .local v0, "e":Lgnu/mapping/WrongArguments;
    invoke-virtual {p1, p2, v1}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 312
    iget-object v1, v0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    if-eqz v1, :cond_28

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 314
    :cond_28
    invoke-virtual {v0, p2}, Lgnu/mapping/WrongArguments;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 315
    .end local v0    # "e":Lgnu/mapping/WrongArguments;
    goto :goto_6c

    .line 316
    :cond_2c
    instance-of v0, p0, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_51

    .line 318
    invoke-virtual {p1, p2, v1}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter, was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/mapping/OutPort;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_6c

    .line 335
    :cond_51
    instance-of v0, p0, Lgnu/text/SyntaxException;

    if-eqz v0, :cond_66

    move-object v0, p0

    check-cast v0, Lgnu/text/SyntaxException;

    move-object v2, v0

    .local v2, "se":Lgnu/text/SyntaxException;
    invoke-virtual {v0}, Lgnu/text/SyntaxException;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    if-ne v0, p1, :cond_66

    .line 338
    invoke-virtual {v2, p2, v1}, Lgnu/text/SyntaxException;->printAll(Ljava/io/PrintWriter;I)V

    .line 339
    invoke-virtual {v2}, Lgnu/text/SyntaxException;->clear()V

    goto :goto_6c

    .line 343
    .end local v2    # "se":Lgnu/text/SyntaxException;
    :cond_66
    invoke-virtual {p1, p2, v1}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V

    .line 344
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 347
    :goto_6c
    return-void
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .registers 25
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "inp"    # Lgnu/mapping/InPort;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .param p4, "perr"    # Lgnu/mapping/OutPort;
    .param p5, "url"    # Ljava/net/URL;
    .param p6, "messages"    # Lgnu/text/SourceMessages;

    .line 218
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-static/range {p0 .. p0}, Lgnu/expr/Language;->setSaveCurrent(Lgnu/expr/Language;)Lgnu/expr/Language;

    move-result-object v5

    .line 219
    .local v5, "saveLanguage":Lgnu/expr/Language;
    move-object/from16 v6, p2

    invoke-virtual {v1, v6, v4}, Lgnu/expr/Language;->getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;

    move-result-object v7

    .line 222
    .local v7, "lexer":Lgnu/text/Lexer;
    if-eqz v3, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    move v9, v0

    .line 223
    .local v9, "interactive":Z
    invoke-virtual {v7, v9}, Lgnu/text/Lexer;->setInteractive(Z)V

    .line 224
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v10

    .line 225
    .local v10, "ctx":Lgnu/mapping/CallContext;
    const/4 v0, 0x0

    .line 226
    .local v0, "saveConsumer":Lgnu/lists/Consumer;
    if-eqz v2, :cond_28

    .line 228
    iget-object v0, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 229
    iput-object v2, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    move-object v11, v0

    goto :goto_29

    .line 226
    :cond_28
    move-object v11, v0

    .line 233
    .end local v0    # "saveConsumer":Lgnu/lists/Consumer;
    .local v11, "saveConsumer":Lgnu/lists/Consumer;
    :goto_29
    :try_start_29
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 234
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 238
    .local v12, "parentLoader":Ljava/lang/ClassLoader;
    instance-of v13, v12, Lgnu/bytecode/ArrayClassLoader;

    if-nez v13, :cond_3d

    .line 239
    new-instance v13, Lgnu/bytecode/ArrayClassLoader;

    invoke-direct {v13, v12}, Lgnu/bytecode/ArrayClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, v13}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_3d
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_3d} :catch_3e

    .line 244
    .end local v0    # "thread":Ljava/lang/Thread;
    .end local v12    # "parentLoader":Ljava/lang/ClassLoader;
    :cond_3d
    goto :goto_3f

    .line 241
    :catch_3e
    move-exception v0

    .line 249
    :goto_3f
    const/4 v12, 0x7

    .line 252
    .local v12, "opts":I
    const/4 v0, 0x0

    :try_start_41
    invoke-virtual {v1, v7, v12, v0}, Lgnu/expr/Language;->parse(Lgnu/text/Lexer;ILgnu/expr/ModuleInfo;)Lgnu/expr/Compilation;

    move-result-object v13

    .line 254
    .local v13, "comp":Lgnu/expr/Compilation;
    if-eqz v9, :cond_4e

    .line 255
    const/16 v14, 0x14

    invoke-virtual {v4, v3, v14}, Lgnu/text/SourceMessages;->checkErrors(Ljava/io/PrintWriter;I)Z

    move-result v14

    .local v14, "sawError":Z
    goto :goto_55

    .line 256
    .end local v14    # "sawError":Z
    :cond_4e
    invoke-virtual/range {p6 .. p6}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v14

    if-nez v14, :cond_c4

    .line 259
    const/4 v14, 0x0

    .line 260
    .restart local v14    # "sawError":Z
    :goto_55
    if-nez v13, :cond_5c

    .line 261
    move-object/from16 v8, p1

    move-object/from16 v15, p5

    goto :goto_b3

    .line 262
    :cond_5c
    if-eqz v14, :cond_5f

    .line 263
    goto :goto_3f

    .line 264
    :cond_5f
    invoke-virtual {v13}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "atInteractiveLevel$"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v8, Lgnu/expr/ModuleExp;->interactiveCounter:I
    :try_end_70
    .catchall {:try_start_41 .. :try_end_70} :catchall_d2

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    :try_start_74
    sput v8, Lgnu/expr/ModuleExp;->interactiveCounter:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 271
    :cond_81
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->read()I

    move-result v0

    .line 272
    .local v0, "ch":I
    if-ltz v0, :cond_9b

    const/16 v8, 0xd

    if-eq v0, v8, :cond_9b

    const/16 v8, 0xa

    if-ne v0, v8, :cond_90

    .line 273
    goto :goto_9b

    .line 274
    :cond_90
    const/16 v8, 0x20

    if-eq v0, v8, :cond_81

    const/16 v8, 0x9

    if-eq v0, v8, :cond_81

    .line 276
    invoke-virtual/range {p2 .. p2}, Lgnu/mapping/InPort;->unread()V
    :try_end_9b
    .catchall {:try_start_74 .. :try_end_9b} :catchall_be

    .line 281
    :cond_9b
    :goto_9b
    move-object/from16 v8, p1

    move-object/from16 v15, p5

    :try_start_9f
    invoke-static {v8, v10, v13, v15, v3}, Lgnu/expr/ModuleExp;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/CallContext;Lgnu/expr/Compilation;Ljava/net/URL;Lgnu/mapping/OutPort;)Z

    move-result v17

    if-nez v17, :cond_a6

    .line 282
    goto :goto_3f

    .line 283
    :cond_a6
    instance-of v1, v2, Ljava/io/Writer;

    if-eqz v1, :cond_b0

    .line 284
    move-object v1, v2

    check-cast v1, Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_d0

    .line 285
    :cond_b0
    if-gez v0, :cond_bd

    .line 286
    nop

    .line 298
    .end local v0    # "ch":I
    .end local v12    # "opts":I
    .end local v13    # "comp":Lgnu/expr/Compilation;
    .end local v14    # "sawError":Z
    :goto_b3
    if-eqz v2, :cond_b7

    .line 299
    iput-object v11, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_b7
    invoke-static {v5}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    .line 301
    nop

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 293
    .restart local v12    # "opts":I
    :cond_bd
    goto :goto_e7

    .line 288
    :catchall_be
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v15, p5

    goto :goto_d9

    .line 257
    .restart local v13    # "comp":Lgnu/expr/Compilation;
    :cond_c4
    move-object/from16 v8, p1

    move-object/from16 v15, p5

    const/16 v16, 0x1

    :try_start_ca
    new-instance v0, Lgnu/text/SyntaxException;

    invoke-direct {v0, v4}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    .end local v5    # "saveLanguage":Lgnu/expr/Language;
    .end local v7    # "lexer":Lgnu/text/Lexer;
    .end local v9    # "interactive":Z
    .end local v10    # "ctx":Lgnu/mapping/CallContext;
    .end local v11    # "saveConsumer":Lgnu/lists/Consumer;
    .end local v12    # "opts":I
    .end local p0    # "language":Lgnu/expr/Language;
    .end local p1    # "env":Lgnu/mapping/Environment;
    .end local p2    # "inp":Lgnu/mapping/InPort;
    .end local p3    # "out":Lgnu/lists/Consumer;
    .end local p4    # "perr":Lgnu/mapping/OutPort;
    .end local p5    # "url":Ljava/net/URL;
    .end local p6    # "messages":Lgnu/text/SourceMessages;
    throw v0
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_d0

    .line 288
    .end local v13    # "comp":Lgnu/expr/Compilation;
    .restart local v5    # "saveLanguage":Lgnu/expr/Language;
    .restart local v7    # "lexer":Lgnu/text/Lexer;
    .restart local v9    # "interactive":Z
    .restart local v10    # "ctx":Lgnu/mapping/CallContext;
    .restart local v11    # "saveConsumer":Lgnu/lists/Consumer;
    .restart local v12    # "opts":I
    .restart local p0    # "language":Lgnu/expr/Language;
    .restart local p1    # "env":Lgnu/mapping/Environment;
    .restart local p2    # "inp":Lgnu/mapping/InPort;
    .restart local p3    # "out":Lgnu/lists/Consumer;
    .restart local p4    # "perr":Lgnu/mapping/OutPort;
    .restart local p5    # "url":Ljava/net/URL;
    .restart local p6    # "messages":Lgnu/text/SourceMessages;
    :catchall_d0
    move-exception v0

    goto :goto_d9

    :catchall_d2
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v15, p5

    const/16 v16, 0x1

    .line 290
    .local v0, "e":Ljava/lang/Throwable;
    :goto_d9
    if-nez v9, :cond_e4

    .line 291
    nop

    .line 298
    if-eqz v2, :cond_e0

    .line 299
    iput-object v11, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_e0
    invoke-static {v5}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    return-object v0

    .line 292
    :cond_e4
    :try_start_e4
    invoke-static {v0, v4, v3}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_eb

    .line 294
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v12    # "opts":I
    :goto_e7
    move-object/from16 v1, p0

    goto/16 :goto_3f

    .line 298
    :catchall_eb
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_f1

    .line 299
    iput-object v11, v10, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 300
    :cond_f1
    invoke-static {v5}, Lgnu/expr/Language;->restoreCurrent(Lgnu/expr/Language;)V

    goto :goto_f6

    :goto_f5
    throw v1

    :goto_f6
    goto :goto_f5
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;
    .registers 15
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "inp"    # Lgnu/mapping/InPort;
    .param p3, "pout"    # Lgnu/mapping/OutPort;
    .param p4, "perr"    # Lgnu/mapping/OutPort;
    .param p5, "messages"    # Lgnu/text/SourceMessages;

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "saveFormat":Lgnu/lists/AbstractFormat;
    if-eqz p3, :cond_5

    .line 190
    iget-object v0, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    .line 191
    :cond_5
    invoke-static {p3}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v8

    .line 194
    .local v8, "out":Lgnu/lists/Consumer;
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object v5, p4

    move-object v7, p5

    :try_start_10
    invoke-static/range {v1 .. v7}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v1
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19

    .line 198
    if-eqz p3, :cond_18

    .line 199
    iput-object v0, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_18
    return-object v1

    .line 198
    :catchall_19
    move-exception v1

    if-eqz p3, :cond_1e

    .line 199
    iput-object v0, p3, Lgnu/mapping/OutPort;->objectFormat:Lgnu/lists/AbstractFormat;

    :cond_1e
    throw v1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;)Z
    .registers 11
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 162
    invoke-static {}, Lgnu/mapping/InPort;->inDefault()Lgnu/mapping/InPort;

    move-result-object v6

    .line 163
    .local v6, "inp":Lgnu/mapping/InPort;
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    move-object v7, v0

    .line 165
    .local v7, "messages":Lgnu/text/SourceMessages;
    instance-of v0, v6, Lgnu/mapping/TtyInPort;

    if-eqz v0, :cond_20

    .line 167
    invoke-virtual {p0}, Lgnu/expr/Language;->getPrompter()Lgnu/mapping/Procedure;

    move-result-object v0

    .line 168
    .local v0, "prompter":Lgnu/mapping/Procedure;
    if-eqz v0, :cond_1a

    .line 169
    move-object v1, v6

    check-cast v1, Lgnu/mapping/TtyInPort;

    invoke-virtual {v1, v0}, Lgnu/mapping/TtyInPort;->setPrompter(Lgnu/mapping/Procedure;)V

    .line 170
    :cond_1a
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    .line 171
    .local v0, "perr":Lgnu/mapping/OutPort;
    move-object v8, v0

    goto :goto_22

    .line 173
    .end local v0    # "perr":Lgnu/mapping/OutPort;
    :cond_20
    const/4 v0, 0x0

    move-object v8, v0

    .line 175
    .local v8, "perr":Lgnu/mapping/OutPort;
    :goto_22
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v4, v8

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/mapping/OutPort;Lgnu/mapping/OutPort;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v0

    .line 177
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_33

    .line 178
    const/4 v1, 0x1

    return v1

    .line 179
    :cond_33
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v1

    invoke-static {v0, v7, v1}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 180
    const/4 v1, 0x0

    return v1
.end method

.method public static run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;)Z
    .registers 14
    .param p0, "language"    # Lgnu/expr/Language;
    .param p1, "env"    # Lgnu/mapping/Environment;
    .param p2, "inp"    # Lgnu/mapping/InPort;
    .param p3, "out"    # Lgnu/lists/Consumer;
    .param p4, "perr"    # Lgnu/mapping/OutPort;
    .param p5, "url"    # Ljava/net/URL;

    .line 207
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 208
    .local v0, "messages":Lgnu/text/SourceMessages;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v1

    .line 209
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_15

    .line 210
    invoke-static {v1, v0, p4}, Lkawa/Shell;->printError(Ljava/lang/Throwable;Lgnu/text/SourceMessages;Lgnu/mapping/OutPort;)V

    .line 211
    :cond_15
    if-nez v1, :cond_19

    const/4 v2, 0x1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2
.end method

.method public static final runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z
    .registers 22
    .param p0, "fs"    # Ljava/io/InputStream;
    .param p1, "path"    # Lgnu/text/Path;
    .param p2, "env"    # Lgnu/mapping/Environment;
    .param p3, "lineByLine"    # Z
    .param p4, "skipLines"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    instance-of v2, v0, Ljava/io/BufferedInputStream;

    if-nez v2, :cond_12

    .line 469
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    move-object v10, v0

    .end local p0    # "fs":Ljava/io/InputStream;
    .local v0, "fs":Ljava/io/InputStream;
    goto :goto_13

    .line 468
    .end local v0    # "fs":Ljava/io/InputStream;
    .restart local p0    # "fs":Ljava/io/InputStream;
    :cond_12
    move-object v10, v0

    .line 470
    .end local p0    # "fs":Ljava/io/InputStream;
    .local v10, "fs":Ljava/io/InputStream;
    :goto_13
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v11

    .line 471
    .local v11, "language":Lgnu/expr/Language;
    sget-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lgnu/text/Path;

    .line 474
    .local v12, "savePath":Lgnu/text/Path;
    :try_start_20
    sget-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 475
    invoke-static {v10, v1, v9, v11}, Lkawa/Shell;->checkCompiledZip(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object v0

    move-object v13, v0

    .line 476
    .local v13, "cmodule":Lgnu/expr/CompiledModule;
    if-nez v13, :cond_94

    .line 478
    invoke-static {v10, v1}, Lgnu/mapping/InPort;->openFile(Ljava/io/InputStream;Ljava/lang/Object;)Lgnu/mapping/InPort;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_aa

    move-object v14, v0

    move/from16 v0, p4

    .line 479
    .end local p4    # "skipLines":I
    .local v0, "skipLines":I
    .local v14, "src":Lgnu/mapping/InPort;
    :goto_33
    add-int/lit8 v15, v0, -0x1

    .end local v0    # "skipLines":I
    .local v15, "skipLines":I
    if-ltz v15, :cond_3c

    .line 480
    :try_start_37
    invoke-virtual {v14}, Lgnu/mapping/InPort;->skipRestOfLine()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_a0

    move v0, v15

    goto :goto_33

    .line 483
    :cond_3c
    :try_start_3c
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    .line 484
    .local v0, "messages":Lgnu/text/SourceMessages;
    invoke-virtual/range {p1 .. p1}, Lgnu/text/Path;->toURL()Ljava/net/URL;

    move-result-object v2

    move-object v8, v2

    .line 485
    .local v8, "url":Ljava/net/URL;
    if-eqz p3, :cond_70

    .line 487
    invoke-static {}, Lgnu/expr/ModuleBody;->getMainPrintValues()Z

    move-result v2

    move/from16 v16, v2

    .line 488
    .local v16, "print":Z
    if-eqz v16, :cond_59

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    invoke-static {v2}, Lkawa/Shell;->getOutputConsumer(Lgnu/mapping/OutPort;)Lgnu/lists/Consumer;

    move-result-object v2

    goto :goto_5e

    :cond_59
    new-instance v2, Lgnu/lists/VoidConsumer;

    invoke-direct {v2}, Lgnu/lists/VoidConsumer;-><init>()V

    :goto_5e
    move-object v5, v2

    .line 490
    .local v5, "out":Lgnu/lists/Consumer;
    const/4 v6, 0x0

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v7, v8

    move-object v1, v8

    .end local v8    # "url":Ljava/net/URL;
    .local v1, "url":Ljava/net/URL;
    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lkawa/Shell;->run(Lgnu/expr/Language;Lgnu/mapping/Environment;Lgnu/mapping/InPort;Lgnu/lists/Consumer;Lgnu/mapping/OutPort;Ljava/net/URL;Lgnu/text/SourceMessages;)Ljava/lang/Throwable;

    move-result-object v2

    .line 492
    .local v2, "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_6e

    .line 494
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v5    # "out":Lgnu/lists/Consumer;
    .end local v16    # "print":Z
    goto :goto_8b

    .line 493
    .restart local v2    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "out":Lgnu/lists/Consumer;
    .restart local v16    # "print":Z
    :cond_6e
    nop

    .end local v10    # "fs":Ljava/io/InputStream;
    .end local v11    # "language":Lgnu/expr/Language;
    .end local v12    # "savePath":Lgnu/text/Path;
    .end local v13    # "cmodule":Lgnu/expr/CompiledModule;
    .end local v14    # "src":Lgnu/mapping/InPort;
    .end local v15    # "skipLines":I
    .end local p1    # "path":Lgnu/text/Path;
    .end local p2    # "env":Lgnu/mapping/Environment;
    .end local p3    # "lineByLine":Z
    throw v2

    .line 497
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .end local v5    # "out":Lgnu/lists/Consumer;
    .end local v16    # "print":Z
    .restart local v8    # "url":Ljava/net/URL;
    .restart local v10    # "fs":Ljava/io/InputStream;
    .restart local v11    # "language":Lgnu/expr/Language;
    .restart local v12    # "savePath":Lgnu/text/Path;
    .restart local v13    # "cmodule":Lgnu/expr/CompiledModule;
    .restart local v14    # "src":Lgnu/mapping/InPort;
    .restart local v15    # "skipLines":I
    .restart local p1    # "path":Lgnu/text/Path;
    .restart local p2    # "env":Lgnu/mapping/Environment;
    .restart local p3    # "lineByLine":Z
    :cond_70
    move-object v1, v8

    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "url":Ljava/net/URL;
    invoke-static {v14, v9, v1, v11, v0}, Lkawa/Shell;->compileSource(Lgnu/mapping/InPort;Lgnu/mapping/Environment;Ljava/net/URL;Lgnu/expr/Language;Lgnu/text/SourceMessages;)Lgnu/expr/CompiledModule;

    move-result-object v2

    move-object v13, v2

    .line 498
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Lgnu/text/SourceMessages;->printAll(Ljava/io/PrintWriter;I)V
    :try_end_7f
    .catchall {:try_start_3c .. :try_end_7f} :catchall_8f

    .line 499
    if-nez v13, :cond_8b

    .line 500
    const/4 v2, 0x0

    .line 505
    :try_start_82
    invoke-virtual {v14}, Lgnu/mapping/InPort;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_a0

    .line 513
    sget-object v3, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return v2

    .line 505
    .end local v0    # "messages":Lgnu/text/SourceMessages;
    .end local v1    # "url":Ljava/net/URL;
    :cond_8b
    :goto_8b
    :try_start_8b
    invoke-virtual {v14}, Lgnu/mapping/InPort;->close()V

    .line 506
    goto :goto_96

    .line 505
    :catchall_8f
    move-exception v0

    invoke-virtual {v14}, Lgnu/mapping/InPort;->close()V

    .end local v10    # "fs":Ljava/io/InputStream;
    .end local v11    # "language":Lgnu/expr/Language;
    .end local v12    # "savePath":Lgnu/text/Path;
    .end local v15    # "skipLines":I
    .end local p1    # "path":Lgnu/text/Path;
    .end local p2    # "env":Lgnu/mapping/Environment;
    .end local p3    # "lineByLine":Z
    throw v0

    .line 476
    .end local v14    # "src":Lgnu/mapping/InPort;
    .restart local v10    # "fs":Ljava/io/InputStream;
    .restart local v11    # "language":Lgnu/expr/Language;
    .restart local v12    # "savePath":Lgnu/text/Path;
    .restart local p1    # "path":Lgnu/text/Path;
    .restart local p2    # "env":Lgnu/mapping/Environment;
    .restart local p3    # "lineByLine":Z
    .restart local p4    # "skipLines":I
    :cond_94
    move/from16 v15, p4

    .line 508
    .end local p4    # "skipLines":I
    .restart local v15    # "skipLines":I
    :goto_96
    if-eqz v13, :cond_a2

    .line 509
    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object v0

    invoke-virtual {v13, v9, v0}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_9f
    .catchall {:try_start_8b .. :try_end_9f} :catchall_a0

    goto :goto_a2

    .line 513
    .end local v13    # "cmodule":Lgnu/expr/CompiledModule;
    :catchall_a0
    move-exception v0

    goto :goto_ad

    :cond_a2
    :goto_a2
    sget-object v0, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 514
    nop

    .line 515
    const/4 v0, 0x1

    return v0

    .line 513
    .end local v15    # "skipLines":I
    .restart local p4    # "skipLines":I
    :catchall_aa
    move-exception v0

    move/from16 v15, p4

    .end local p4    # "skipLines":I
    .restart local v15    # "skipLines":I
    :goto_ad
    sget-object v1, Lkawa/Shell;->currentLoadPath:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v12}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_b4

    :goto_b3
    throw v0

    :goto_b4
    goto :goto_b3
.end method

.method public static runFileOrClass(Ljava/lang/String;ZI)Z
    .registers 8

    .line 410
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v0

    .line 415
    const/4 v1, 0x0

    :try_start_5
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 417
    const-string v2, "/dev/stdin"

    invoke-static {v2}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    .line 418
    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    goto :goto_1e

    .line 422
    :cond_16
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v2

    .line 423
    invoke-virtual {v2}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2e

    .line 427
    :goto_1e
    :try_start_1e
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v4

    .line 428
    invoke-static {v3, v2, v4, p1, p2}, Lkawa/Shell;->runFile(Ljava/io/InputStream;Lgnu/text/Path;Lgnu/mapping/Environment;ZI)Z

    move-result p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_27

    return p0

    .line 430
    :catchall_27
    move-exception p1

    .line 432
    :try_start_28
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2e

    .line 433
    return v1

    .line 436
    :catchall_2e
    move-exception p1

    .line 441
    :try_start_2f
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_4a

    .line 447
    nop

    .line 450
    :try_start_34
    invoke-static {p0, v0}, Lgnu/expr/CompiledModule;->make(Ljava/lang/Class;Lgnu/expr/Language;)Lgnu/expr/CompiledModule;

    move-result-object p0

    .line 451
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object p1

    invoke-static {}, Lgnu/mapping/OutPort;->outDefault()Lgnu/mapping/OutPort;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lgnu/expr/CompiledModule;->evalModule(Lgnu/mapping/Environment;Lgnu/mapping/OutPort;)V
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_45

    .line 452
    const/4 p0, 0x1

    return p0

    .line 454
    :catchall_45
    move-exception p0

    .line 456
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 457
    return v1

    .line 443
    :catchall_4a
    move-exception p0

    .line 445
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot read file "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    return v1
.end method

.method public static setDefaultFormat(Ljava/lang/String;)V
    .registers 11
    .param p0, "name"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 94
    sput-object p0, Lkawa/Shell;->defaultFormatName:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "i":I
    :goto_7
    sget-object v1, Lkawa/Shell;->formats:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 98
    .local v1, "info":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 99
    .local v2, "iname":Ljava/lang/Object;
    const/4 v3, -0x1

    const-string v4, "\'"

    if-nez v2, :cond_33

    .line 101
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kawa: unknown output format \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_8e

    .line 104
    :cond_33
    if-ne v2, p0, :cond_8e

    .line 106
    sput-object v1, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    .line 109
    const/4 v5, 0x1

    :try_start_38
    aget-object v6, v1, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 110
    .local v6, "formatClass":Ljava/lang/Class;
    const/4 v7, 0x2

    aget-object v7, v1, v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v8, v1, v8

    check-cast v8, [Ljava/lang/Class;

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lkawa/Shell;->defaultFormatMethod:Ljava/lang/reflect/Method;
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_53

    .line 118
    .end local v6    # "formatClass":Ljava/lang/Class;
    goto :goto_7e

    .line 114
    :catchall_53
    move-exception v6

    .line 116
    .local v6, "ex":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "kawa:  caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " while looking for format \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 119
    .end local v6    # "ex":Ljava/lang/Throwable;
    nop

    .line 122
    .end local v0    # "i":I
    .end local v1    # "info":[Ljava/lang/Object;
    .end local v2    # "iname":Ljava/lang/Object;
    :goto_7e
    sget-object v0, Lkawa/Shell;->defaultFormatInfo:[Ljava/lang/Object;

    aget-object v0, v0, v5

    const-string v1, "gnu.lists.VoidConsumer"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 123
    invoke-static {v5}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 124
    :cond_8d
    return-void

    .line 95
    .restart local v0    # "i":I
    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7
.end method

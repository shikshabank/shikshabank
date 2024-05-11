.class public Lgnu/expr/ModuleInfo;
.super Ljava/lang/Object;
.source "ModuleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/expr/ModuleInfo$ClassToInfoMap;
    }
.end annotation


# static fields
.field static mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;


# instance fields
.field private className:Ljava/lang/String;

.field comp:Lgnu/expr/Compilation;

.field dependencies:[Lgnu/expr/ModuleInfo;

.field exp:Lgnu/expr/ModuleExp;

.field public lastCheckedTime:J

.field public lastModifiedTime:J

.field moduleClass:Ljava/lang/Class;

.field numDependencies:I

.field sourceAbsPath:Lgnu/text/Path;

.field sourceAbsPathname:Ljava/lang/String;

.field public sourcePath:Ljava/lang/String;

.field uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-direct {v0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;-><init>()V

    sput-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method

.method public static absPath(Ljava/lang/String;)Lgnu/text/Path;
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lgnu/text/Path;->valueOf(Ljava/lang/Object;)Lgnu/text/Path;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/text/Path;->getCanonical()Lgnu/text/Path;

    move-result-object v0

    return-object v0
.end method

.method public static find(Lgnu/bytecode/ClassType;)Lgnu/expr/ModuleInfo;
    .registers 3
    .param p0, "type"    # Lgnu/bytecode/ClassType;

    .line 244
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 248
    :try_start_6
    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgnu/expr/ModuleManager;->findWithClass(Ljava/lang/Class;)Lgnu/expr/ModuleInfo;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    .line 250
    :catch_f
    move-exception v0

    .line 254
    :cond_10
    invoke-static {}, Lgnu/expr/ModuleManager;->getInstance()Lgnu/expr/ModuleManager;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/expr/ModuleManager;->findWithClassName(Ljava/lang/String;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method public static findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;
    .registers 2
    .param p0, "instance"    # Ljava/lang/Object;

    .line 239
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findFromInstance(Ljava/lang/Object;)Lgnu/expr/ModuleInfo;

    move-result-object v0

    return-object v0
.end method

.method static makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V
    .registers 11
    .param p0, "mod"    # Lgnu/expr/ModuleExp;
    .param p1, "fdecl"    # Lgnu/expr/Declaration;

    .line 277
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getConstantValue()Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "fvalue":Ljava/lang/Object;
    instance-of v1, v0, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v1, :cond_69

    .line 280
    move-object v1, v0

    check-cast v1, Lgnu/kawa/reflect/FieldLocation;

    .line 281
    .local v1, "floc":Lgnu/kawa/reflect/FieldLocation;
    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    move-result-object v2

    .line 282
    .local v2, "vdecl":Lgnu/expr/Declaration;
    new-instance v3, Lgnu/expr/ReferenceExp;

    invoke-direct {v3, v2}, Lgnu/expr/ReferenceExp;-><init>(Lgnu/expr/Declaration;)V

    .line 283
    .local v3, "fref":Lgnu/expr/ReferenceExp;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lgnu/expr/Declaration;->setAlias(Z)V

    .line 284
    invoke-virtual {v3, v4}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 285
    invoke-virtual {p1, v3}, Lgnu/expr/Declaration;->setValue(Lgnu/expr/Expression;)V

    .line 286
    invoke-virtual {v2}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 287
    invoke-virtual {p1, v4}, Lgnu/expr/Declaration;->setProcedureDecl(Z)V

    .line 288
    :cond_27
    const-wide/32 v4, 0x8000

    invoke-virtual {v2, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 289
    invoke-virtual {p1}, Lgnu/expr/Declaration;->setSyntax()V

    .line 290
    :cond_33
    const-wide/16 v4, 0x800

    invoke-virtual {p1, v4, v5}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v4

    if-nez v4, :cond_69

    .line 292
    invoke-virtual {v1}, Lgnu/kawa/reflect/FieldLocation;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 293
    .local v4, "vtype":Lgnu/bytecode/ClassType;
    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    .line 294
    .local v5, "vname":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v6

    .line 295
    .local v6, "xdecl":Lgnu/expr/Declaration;
    :goto_47
    if-eqz v6, :cond_69

    .line 297
    invoke-virtual {v6}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-virtual {v7}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    const-wide/32 v7, 0x40000000

    invoke-virtual {v6, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 300
    invoke-virtual {v3, v6}, Lgnu/expr/ReferenceExp;->setContextDecl(Lgnu/expr/Declaration;)V

    .line 301
    goto :goto_69

    .line 295
    :cond_64
    invoke-virtual {v6}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    goto :goto_47

    .line 306
    .end local v1    # "floc":Lgnu/kawa/reflect/FieldLocation;
    .end local v2    # "vdecl":Lgnu/expr/Declaration;
    .end local v3    # "fref":Lgnu/expr/ReferenceExp;
    .end local v4    # "vtype":Lgnu/bytecode/ClassType;
    .end local v5    # "vname":Ljava/lang/String;
    .end local v6    # "xdecl":Lgnu/expr/Declaration;
    :cond_69
    :goto_69
    return-void
.end method

.method public static register(Ljava/lang/Object;)V
    .registers 2
    .param p0, "instance"    # Ljava/lang/Object;

    .line 259
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->setInstance(Ljava/lang/Object;)V

    .line 260
    return-void
.end method


# virtual methods
.method public declared-synchronized addDependency(Lgnu/expr/ModuleInfo;)V
    .registers 6
    .param p1, "dep"    # Lgnu/expr/ModuleInfo;

    monitor-enter p0

    .line 104
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    if-nez v0, :cond_c

    .line 105
    const/16 v0, 0x8

    new-array v0, v0, [Lgnu/expr/ModuleInfo;

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    goto :goto_1b

    .line 106
    .end local p0    # "this":Lgnu/expr/ModuleInfo;
    :cond_c
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    array-length v2, v0

    if-ne v1, v2, :cond_1b

    .line 108
    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Lgnu/expr/ModuleInfo;

    .line 109
    .local v2, "deps":[Lgnu/expr/ModuleInfo;
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    iput-object v2, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 112
    .end local v2    # "deps":[Lgnu/expr/ModuleInfo;
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    aput-object p1, v0, v1
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    .line 113
    monitor-exit p0

    return-void

    .line 103
    .end local p1    # "dep":Lgnu/expr/ModuleInfo;
    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public checkCurrent(Lgnu/expr/ModuleManager;J)Z
    .registers 15
    .param p1, "manager"    # Lgnu/expr/ModuleManager;
    .param p2, "now"    # J

    .line 378
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 379
    return v1

    .line 380
    :cond_6
    iget-wide v2, p0, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    iget-wide v4, p1, Lgnu/expr/ModuleManager;->lastModifiedCacheTime:J

    add-long/2addr v2, v4

    const/4 v0, 0x0

    cmp-long v4, v2, p2

    if-ltz v4, :cond_17

    .line 381
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1

    .line 382
    :cond_17
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    invoke-virtual {v2}, Lgnu/text/Path;->getLastModified()J

    move-result-wide v2

    .line 383
    .local v2, "lastModifiedTime":J
    iget-wide v4, p0, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 384
    .local v4, "oldModifiedTime":J
    iput-wide v2, p0, Lgnu/expr/ModuleInfo;->lastModifiedTime:J

    .line 385
    iput-wide p2, p0, Lgnu/expr/ModuleInfo;->lastCheckedTime:J

    .line 386
    iget-object v6, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v6, :cond_28

    .line 387
    return v0

    .line 388
    :cond_28
    iget-object v7, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-nez v7, :cond_35

    .line 392
    :try_start_2c
    invoke-static {v6}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_32} :catch_33

    .line 397
    goto :goto_35

    .line 394
    :catch_33
    move-exception v1

    .line 396
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    return v0

    .line 399
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_35
    :goto_35
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_79

    iget-object v6, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v6, :cond_79

    .line 401
    iget-object v6, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 402
    .local v6, "classFilename":Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 403
    .local v7, "dot":I
    if-ltz v7, :cond_4f

    .line 404
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    :cond_4f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".class"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    iget-object v8, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 407
    .local v8, "resource":Ljava/net/URL;
    if-eqz v8, :cond_76

    .line 411
    :try_start_6a
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v9
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_72} :catch_74

    move-wide v4, v9

    .line 416
    goto :goto_76

    .line 413
    :catch_74
    move-exception v9

    .line 415
    .local v9, "ex":Ljava/io/IOException;
    const/4 v8, 0x0

    .line 418
    .end local v9    # "ex":Ljava/io/IOException;
    :cond_76
    :goto_76
    if-nez v8, :cond_79

    .line 422
    return v1

    .line 425
    .end local v6    # "classFilename":Ljava/lang/String;
    .end local v7    # "dot":I
    .end local v8    # "resource":Ljava/net/URL;
    :cond_79
    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-lez v7, :cond_81

    .line 427
    iput-object v6, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 428
    return v0

    .line 430
    :cond_81
    iget v7, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .local v7, "i":I
    :goto_83
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_99

    .line 432
    iget-object v8, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v8, v8, v7

    .line 433
    .local v8, "dep":Lgnu/expr/ModuleInfo;
    iget-object v9, v8, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v9, :cond_98

    invoke-virtual {v8, p1, p2, p3}, Lgnu/expr/ModuleInfo;->checkCurrent(Lgnu/expr/ModuleManager;J)Z

    move-result v9

    if-nez v9, :cond_98

    .line 435
    iput-object v6, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 436
    return v0

    .line 438
    .end local v8    # "dep":Lgnu/expr/ModuleInfo;
    :cond_98
    goto :goto_83

    .line 439
    .end local v7    # "i":I
    :cond_99
    return v1
.end method

.method public cleanupAfterCompilation()V
    .registers 2

    .line 53
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {v0}, Lgnu/expr/Compilation;->cleanupAfterCompilation()V

    .line 55
    :cond_7
    return-void
.end method

.method public clearClass()V
    .registers 3

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 367
    const/4 v1, 0x0

    iput v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 368
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    .line 369
    return-void
.end method

.method public declared-synchronized getClassName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 128
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_10

    .line 129
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    goto :goto_22

    .line 130
    .end local p0    # "this":Lgnu/expr/ModuleInfo;
    :cond_10
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_22

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_22

    .line 131
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 133
    :cond_22
    :goto_22
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v0

    .line 125
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClassType()Lgnu/bytecode/ClassType;
    .registers 2

    monitor-enter p0

    .line 117
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v0, :cond_d

    .line 118
    invoke-static {v0}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_23

    monitor-exit p0

    return-object v0

    .line 119
    .end local p0    # "this":Lgnu/expr/ModuleInfo;
    :cond_d
    :try_start_d
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_1b

    .line 120
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_23

    monitor-exit p0

    return-object v0

    .line 121
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_23

    monitor-exit p0

    return-object v0

    .line 116
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCompilation()Lgnu/expr/Compilation;
    .registers 2

    .line 34
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    return-object v0
.end method

.method public getInstance()Ljava/lang/Object;
    .registers 2

    .line 264
    invoke-static {}, Lgnu/expr/ModuleContext;->getContext()Lgnu/expr/ModuleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleContext;->findInstance(Lgnu/expr/ModuleInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getModuleClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 217
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    .line 218
    .local v0, "mclass":Ljava/lang/Class;
    if-eqz v0, :cond_7

    .line 219
    monitor-exit p0

    return-object v0

    .line 220
    :cond_7
    :try_start_7
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->getContextClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 221
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    .line 222
    monitor-exit p0

    return-object v0

    .line 216
    .end local v0    # "mclass":Ljava/lang/Class;
    .end local p0    # "this":Lgnu/expr/ModuleInfo;
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getModuleClassRaw()Ljava/lang/Class;
    .registers 2

    .line 227
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized getModuleExp()Lgnu/expr/ModuleExp;
    .registers 5

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 144
    .local v0, "m":Lgnu/expr/ModuleExp;
    if-nez v0, :cond_2d

    .line 146
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-eqz v1, :cond_d

    .line 147
    iget-object v1, v1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2f

    monitor-exit p0

    return-object v1

    .line 148
    .end local p0    # "this":Lgnu/expr/ModuleInfo;
    :cond_d
    :try_start_d
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 149
    .local v1, "ctype":Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/expr/ModuleExp;

    invoke-direct {v2}, Lgnu/expr/ModuleExp;-><init>()V

    move-object v0, v2

    .line 150
    iput-object v1, v0, Lgnu/expr/ModuleExp;->type:Lgnu/bytecode/ClassType;

    .line 151
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/expr/ModuleExp;->setName(Ljava/lang/String;)V

    .line 152
    iget v2, v0, Lgnu/expr/ModuleExp;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Lgnu/expr/ModuleExp;->flags:I

    .line 153
    iput-object p0, v0, Lgnu/expr/ModuleExp;->info:Lgnu/expr/ModuleInfo;

    .line 154
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;
    :try_end_2d
    .catchall {:try_start_d .. :try_end_2d} :catchall_2f

    .line 156
    .end local v1    # "ctype":Lgnu/bytecode/ClassType;
    :cond_2d
    monitor-exit p0

    return-object v0

    .line 142
    .end local v0    # "m":Lgnu/expr/ModuleExp;
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getRunInstance()Ljava/lang/Object;
    .registers 3

    .line 269
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, "inst":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_e

    .line 271
    move-object v1, v0

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 272
    :cond_e
    return-object v0
.end method

.method public getSourceAbsPath()Lgnu/text/Path;
    .registers 2

    .line 82
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    return-object v0
.end method

.method public getSourceAbsPathname()Ljava/lang/String;
    .registers 3

    .line 93
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 94
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_e

    iget-object v1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    if-eqz v1, :cond_e

    .line 96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 99
    :cond_e
    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 308
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    if-nez v0, :cond_7

    const/16 v0, 0xe

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getState()I

    move-result v0

    :goto_b
    return v0
.end method

.method public loadByStages(I)V
    .registers 6
    .param p1, "wantedState"    # I

    .line 312
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    .line 313
    .local v0, "state":I
    add-int/lit8 v1, v0, 0x1

    if-lt v1, p1, :cond_9

    .line 314
    return-void

    .line 315
    :cond_9
    add-int/lit8 v1, p1, -0x2

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 316
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    .line 317
    if-lt v0, p1, :cond_15

    .line 318
    return-void

    .line 319
    :cond_15
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->setState(I)V

    .line 320
    iget v1, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 321
    .local v1, "ndeps":I
    const/4 v2, 0x0

    .local v2, "idep":I
    :goto_1f
    if-ge v2, v1, :cond_2b

    .line 323
    iget-object v3, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v3, v3, v2

    .line 324
    .local v3, "dep":Lgnu/expr/ModuleInfo;
    invoke-virtual {v3, p1}, Lgnu/expr/ModuleInfo;->loadByStages(I)V

    .line 321
    .end local v3    # "dep":Lgnu/expr/ModuleInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 326
    .end local v2    # "idep":I
    :cond_2b
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    .line 327
    if-lt v0, p1, :cond_32

    .line 328
    return-void

    .line 329
    :cond_32
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    and-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->setState(I)V

    .line 330
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, p1}, Lgnu/expr/Compilation;->process(I)V

    .line 331
    return-void
.end method

.method public loadEager(I)Z
    .registers 9
    .param p1, "wantedState"    # I

    .line 339
    iget-object v0, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 340
    return v1

    .line 341
    :cond_a
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v0

    .line 342
    .local v0, "state":I
    const/4 v2, 0x1

    if-lt v0, p1, :cond_12

    .line 343
    return v2

    .line 344
    :cond_12
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_17

    .line 345
    return v1

    .line 346
    :cond_17
    iget-object v3, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lgnu/expr/Compilation;->setState(I)V

    .line 347
    iget v3, p0, Lgnu/expr/ModuleInfo;->numDependencies:I

    .line 348
    .local v3, "ndeps":I
    const/4 v4, 0x0

    .local v4, "idep":I
    :goto_21
    if-ge v4, v3, :cond_3e

    .line 350
    iget-object v5, p0, Lgnu/expr/ModuleInfo;->dependencies:[Lgnu/expr/ModuleInfo;

    aget-object v5, v5, v4

    .line 351
    .local v5, "dep":Lgnu/expr/ModuleInfo;
    invoke-virtual {v5, p1}, Lgnu/expr/ModuleInfo;->loadEager(I)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 353
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v2

    add-int/lit8 v6, v0, 0x1

    if-ne v2, v6, :cond_3a

    .line 354
    iget-object v2, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v2, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 355
    :cond_3a
    return v1

    .line 348
    .end local v5    # "dep":Lgnu/expr/ModuleInfo;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 358
    .end local v4    # "idep":I
    :cond_3e
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    if-ne v4, v5, :cond_4b

    .line 359
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 360
    :cond_4b
    iget-object v4, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v4, p1}, Lgnu/expr/Compilation;->process(I)V

    .line 361
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getState()I

    move-result v4

    if-ne v4, p1, :cond_57

    const/4 v1, 0x1

    :cond_57
    return v1
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCompilation(Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 38
    iput-object p0, p1, Lgnu/expr/Compilation;->minfo:Lgnu/expr/ModuleInfo;

    .line 39
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->comp:Lgnu/expr/Compilation;

    .line 40
    iget-object v0, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    .line 41
    .local v0, "mod":Lgnu/expr/ModuleExp;
    iput-object v0, p0, Lgnu/expr/ModuleInfo;->exp:Lgnu/expr/ModuleExp;

    .line 42
    if-eqz v0, :cond_16

    .line 44
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "fileName":Ljava/lang/String;
    iput-object v1, p0, Lgnu/expr/ModuleInfo;->sourcePath:Ljava/lang/String;

    .line 46
    invoke-static {v1}, Lgnu/expr/ModuleInfo;->absPath(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v2

    .line 47
    .local v2, "abs":Lgnu/text/Path;
    iput-object v2, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 49
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "abs":Lgnu/text/Path;
    :cond_16
    return-void
.end method

.method public setModuleClass(Ljava/lang/Class;)V
    .registers 3
    .param p1, "clas"    # Ljava/lang/Class;

    .line 232
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    .line 234
    sget-object v0, Lgnu/expr/ModuleInfo;->mapClassToInfo:Lgnu/expr/ModuleInfo$ClassToInfoMap;

    invoke-virtual {v0, p1, p0}, Lgnu/expr/ModuleInfo$ClassToInfoMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public setNamespaceUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->uri:Ljava/lang/String;

    return-void
.end method

.method public setSourceAbsPath(Lgnu/text/Path;)V
    .registers 3
    .param p1, "path"    # Lgnu/text/Path;

    .line 87
    iput-object p1, p0, Lgnu/expr/ModuleInfo;->sourceAbsPath:Lgnu/text/Path;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/ModuleInfo;->sourceAbsPathname:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public declared-synchronized setupModuleExp()Lgnu/expr/ModuleExp;
    .registers 11

    monitor-enter p0

    .line 162
    :try_start_1
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getModuleExp()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 163
    .local v0, "mod":Lgnu/expr/ModuleExp;
    iget v1, v0, Lgnu/expr/ModuleExp;->flags:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_90

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_e

    .line 164
    monitor-exit p0

    return-object v0

    .line 165
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {v0, v1, v2}, Lgnu/expr/ModuleExp;->setFlag(ZI)V

    .line 168
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_1e

    .line 170
    nop

    .line 171
    .local v1, "rclass":Ljava/lang/Class;
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .local v2, "type":Lgnu/bytecode/ClassType;
    goto :goto_29

    .line 175
    .end local v1    # "rclass":Ljava/lang/Class;
    .end local v2    # "type":Lgnu/bytecode/ClassType;
    .end local p0    # "this":Lgnu/expr/ModuleInfo;
    :cond_1e
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    move-object v2, v1

    .line 176
    .restart local v2    # "type":Lgnu/bytecode/ClassType;
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 178
    .restart local v1    # "rclass":Ljava/lang/Class;
    :goto_29
    const/4 v3, 0x0

    .line 180
    .local v3, "instance":Ljava/lang/Object;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 181
    .local v4, "language":Lgnu/expr/Language;
    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v5

    .local v5, "fld":Lgnu/bytecode/Field;
    :goto_32
    if-eqz v5, :cond_7f

    .line 183
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getFlags()I

    move-result v6
    :try_end_38
    .catchall {:try_start_f .. :try_end_38} :catchall_90

    .line 184
    .local v6, "flags":I
    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_3d

    .line 185
    goto :goto_72

    .line 188
    :cond_3d
    and-int/lit8 v7, v6, 0x8

    if-nez v7, :cond_48

    if-nez v3, :cond_48

    .line 189
    :try_start_43
    invoke-virtual {p0}, Lgnu/expr/ModuleInfo;->getInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 190
    :cond_48
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 192
    .local v7, "fvalue":Ljava/lang/Object;
    invoke-virtual {v4, v0, v7, v5}, Lgnu/expr/Language;->declFromField(Lgnu/expr/ModuleExp;Ljava/lang/Object;Lgnu/bytecode/Field;)Lgnu/expr/Declaration;

    move-result-object v8

    .line 193
    .local v8, "fdecl":Lgnu/expr/Declaration;
    and-int/lit8 v9, v6, 0x10

    if-eqz v9, :cond_6d

    instance-of v9, v7, Lgnu/mapping/Location;

    if-eqz v9, :cond_64

    instance-of v9, v7, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v9, :cond_6d

    .line 196
    :cond_64
    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    goto :goto_71

    .line 198
    :cond_6d
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_71} :catch_78
    .catchall {:try_start_43 .. :try_end_71} :catchall_90

    .line 203
    .end local v7    # "fvalue":Ljava/lang/Object;
    .end local v8    # "fdecl":Lgnu/expr/Declaration;
    :goto_71
    nop

    .line 181
    .end local v6    # "flags":I
    :goto_72
    :try_start_72
    invoke-virtual {v5}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v6

    move-object v5, v6

    goto :goto_32

    .line 200
    .restart local v6    # "flags":I
    :catch_78
    move-exception v7

    .line 202
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v8, Lgnu/mapping/WrappedException;

    invoke-direct {v8, v7}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 206
    .end local v5    # "fld":Lgnu/bytecode/Field;
    .end local v6    # "flags":I
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_7f
    invoke-virtual {v0}, Lgnu/expr/ModuleExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .line 207
    .local v5, "fdecl":Lgnu/expr/Declaration;
    :goto_83
    if-eqz v5, :cond_8e

    .line 209
    invoke-static {v0, v5}, Lgnu/expr/ModuleInfo;->makeDeclInModule2(Lgnu/expr/ModuleExp;Lgnu/expr/Declaration;)V

    .line 207
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6
    :try_end_8c
    .catchall {:try_start_72 .. :try_end_8c} :catchall_90

    move-object v5, v6

    goto :goto_83

    .line 211
    .end local v5    # "fdecl":Lgnu/expr/Declaration;
    :cond_8e
    monitor-exit p0

    return-object v0

    .line 161
    .end local v0    # "mod":Lgnu/expr/ModuleExp;
    .end local v1    # "rclass":Ljava/lang/Class;
    .end local v2    # "type":Lgnu/bytecode/ClassType;
    .end local v3    # "instance":Ljava/lang/Object;
    .end local v4    # "language":Lgnu/expr/Language;
    :catchall_90
    move-exception v0

    monitor-exit p0

    goto :goto_94

    :goto_93
    throw v0

    :goto_94
    goto :goto_93
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 444
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "ModuleInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    if-eqz v1, :cond_19

    .line 448
    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_27

    .line 451
    :cond_19
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 453
    const-string v1, "class-name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    iget-object v1, p0, Lgnu/expr/ModuleInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    :cond_27
    :goto_27
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lkawa/lib/system;
.super Lgnu/expr/ModuleBody;
.source "system.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsystem.scm\nScheme\n*S Scheme\n*F\n+ 1 system.scm\n/u2/home/jis/ai2-kawa/kawa/lib/system.scm\n*L\n1#1,108:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/system;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final catch:Lgnu/expr/ModuleMethod;

.field public static command$Mnparse:Lgnu/mapping/Procedure;

.field public static final compile$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final make$Mnprocess:Lgnu/expr/ModuleMethod;

.field public static final open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

.field public static final process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

.field public static final system:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "process-command-line-assignments"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "catch"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "compile-file"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "tokenize-string-using-shell"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "tokenize-string-to-string-array"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "convert-list-to-string-array"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "convert-vector-to-string-array"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "system"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "open-input-pipe"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v9, Lgnu/mapping/SimpleSymbol;

    const-string v10, "make-process"

    invoke-direct {v9, v10}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/mapping/SimpleSymbol;

    sput-object v9, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    const/4 v10, 0x1

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    sput-object v11, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    const/4 v11, 0x0

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v12

    sput-object v12, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    new-instance v12, Lkawa/lib/system;

    invoke-direct {v12}, Lkawa/lib/system;-><init>()V

    sput-object v12, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    new-instance v13, Lgnu/expr/ModuleMethod;

    const/16 v14, 0x2002

    invoke-direct {v13, v12, v10, v9, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v13, Lkawa/lib/system;->make$Mnprocess:Lgnu/expr/ModuleMethod;

    new-instance v9, Lgnu/expr/ModuleMethod;

    const/4 v10, 0x2

    const/16 v13, 0x1001

    invoke-direct {v9, v12, v10, v8, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v9, Lkawa/lib/system;->open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x3

    invoke-direct {v8, v12, v9, v7, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lkawa/lib/system;->system:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x4

    invoke-direct {v7, v12, v8, v6, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/system;->convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x5

    invoke-direct {v6, v12, v7, v5, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/system;->convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x6

    invoke-direct {v5, v12, v6, v4, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x7

    invoke-direct {v4, v12, v5, v3, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x8

    invoke-direct {v3, v12, v4, v2, v14}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/system;->compile$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x9

    const/16 v4, 0x3003

    invoke-direct {v2, v12, v3, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/system;->catch:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    invoke-direct {v1, v12, v2, v0, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/system;->process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

    invoke-virtual {v12}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .registers 5
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "thunk"    # Lgnu/mapping/Procedure;
    .param p2, "handler"    # Lgnu/mapping/Procedure;

    .line 102
    nop

    .line 103
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catch Lkawa/lang/NamedException; {:try_start_2 .. :try_end_6} :catch_7

    .local v0, "ex":Lkawa/lang/NamedException;
    goto :goto_d

    .end local v0    # "ex":Lkawa/lang/NamedException;
    :catch_7
    move-exception v1

    .restart local v0    # "ex":Lkawa/lang/NamedException;
    move-object v0, v1

    .line 105
    invoke-virtual {v0, p0, p2}, Lkawa/lang/NamedException;->applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "ex":Lkawa/lang/NamedException;
    :goto_d
    return-object v1
.end method

.method public static compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "output"    # Ljava/lang/String;

    .line 86
    nop

    .line 89
    nop

    .line 90
    new-instance v0, Lgnu/text/SourceMessages;

    invoke-direct {v0}, Lgnu/text/SourceMessages;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 89
    .local v0, "messages":Lgnu/text/SourceMessages;
    nop

    .line 92
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkawa/lang/CompileFile;->read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object v2

    .local v1, "comp":Lgnu/expr/Compilation;
    move-object v1, v2

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, v1, Lgnu/expr/Compilation;->explicit:Z

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-nez v2, :cond_32

    .line 96
    invoke-virtual {v1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lgnu/expr/Compilation;->compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 100
    .end local v0    # "messages":Lgnu/text/SourceMessages;
    .end local v1    # "comp":Lgnu/expr/Compilation;
    return-void

    .restart local v0    # "messages":Lgnu/text/SourceMessages;
    .restart local v1    # "comp":Lgnu/expr/Compilation;
    :cond_2a
    new-instance v2, Lgnu/text/SyntaxException;

    invoke-direct {v2, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    .line 95
    :cond_32
    new-instance v2, Lgnu/text/SyntaxException;

    invoke-direct {v2, v0}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
.end method

.method public static convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "lst"    # Ljava/lang/Object;

    .line 43
    nop

    .line 44
    :try_start_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/LList;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_4} :catch_3a

    invoke-static {v0}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v0

    const/4 v1, 0x0

    .line 45
    .local v0, "count":I
    new-array v1, v0, [Ljava/lang/String;

    move-object v2, p0

    .line 46
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v3, p0

    .local v3, "p":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v5, v4

    .line 47
    :goto_10
    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 50
    .end local v0    # "count":I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/Object;
    return-object v1

    .line 48
    .restart local v0    # "count":I
    .restart local v1    # "arr":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/Object;
    :cond_17
    :try_start_17
    move-object v6, v3

    check-cast v6, Lgnu/lists/Pair;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1a} :catch_30

    .local v5, "pp":Lgnu/lists/Pair;
    move-object v5, v6

    .line 49
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_23

    move-object v6, v4

    goto :goto_27

    :cond_23
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_27
    aput-object v6, v1, v2

    .line 50
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 48
    .end local v0    # "count":I
    .end local v1    # "arr":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/Object;
    .end local v5    # "pp":Lgnu/lists/Pair;
    .end local p0    # "lst":Ljava/lang/Object;
    :catch_30
    move-exception p0

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "pp"

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 44
    :catch_3a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "length"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_45

    :goto_44
    throw v1

    :goto_45
    goto :goto_44
.end method

.method public static convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0, "vec"    # Ljava/lang/Object;

    const-string v0, "vector-ref"

    .line 36
    nop

    .line 37
    const/4 v1, 0x1

    :try_start_4
    move-object v2, p0

    check-cast v2, Lgnu/lists/FVector;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_57

    invoke-static {v2}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v2

    const/4 v3, 0x0

    .line 38
    .local v2, "count":I
    new-array v3, v2, [Ljava/lang/String;

    move-object v4, p0

    .line 39
    .local v3, "arr":[Ljava/lang/String;
    sget-object v4, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    .local v4, "i":Ljava/lang/Object;
    :goto_11
    sget-object v5, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v5, v6, :cond_56

    .line 41
    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    :try_start_26
    move-object v6, p0

    check-cast v6, Lgnu/lists/FVector;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_26 .. :try_end_29} :catch_4f

    :try_start_29
    move-object v7, v4

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_30
    .catch Ljava/lang/ClassCastException; {:try_start_29 .. :try_end_30} :catch_47

    invoke-static {v6, v7}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_38

    const/4 v6, 0x0

    goto :goto_3c

    :cond_38
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3c
    aput-object v6, v3, v5

    .line 39
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v5, v4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_11

    .line 41
    .end local v2    # "count":I
    .end local v3    # "arr":[Ljava/lang/String;
    .end local v4    # "i":Ljava/lang/Object;
    .end local p0    # "vec":Ljava/lang/Object;
    :catch_47
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_4f
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, v2, v0, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .line 40
    .restart local p0    # "vec":Ljava/lang/Object;
    :cond_56
    return-object v3

    .line 37
    .end local p0    # "vec":Ljava/lang/Object;
    :catch_57
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "vector-length"

    invoke-direct {v2, v0, v3, v1, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_61

    :goto_60
    throw v2

    :goto_61
    goto :goto_60
.end method

.method public static makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;
    .registers 7
    .param p0, "args"    # Ljava/lang/Object;
    .param p1, "env"    # Ljava/lang/Object;

    const-string v0, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])"

    .line 6
    nop

    .line 7
    nop

    .line 8
    invoke-static {p0}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-static {p0}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .local v3, "arargs":Ljava/lang/Object;
    goto :goto_3c

    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_11
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 9
    invoke-static {p0}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .restart local v3    # "arargs":Ljava/lang/Object;
    goto :goto_3c

    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_1d
    invoke-static {p0}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 10
    sget-object v1, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .restart local v3    # "arargs":Ljava/lang/Object;
    goto :goto_3c

    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_2b
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 11
    move-object v3, v2

    move-object v1, p0

    .restart local v3    # "arargs":Ljava/lang/Object;
    goto :goto_3c

    .line 12
    .end local v3    # "arargs":Ljava/lang/Object;
    :cond_32
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "invalid arguments to make-process"

    invoke-static {v3, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v2

    .restart local v3    # "arargs":Ljava/lang/Object;
    :goto_3c
    nop

    .line 7
    .end local v3    # "arargs":Ljava/lang/Object;
    .local v1, "arargs":Ljava/lang/Object;
    nop

    .line 13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .local v2, "runtime":Ljava/lang/Runtime;
    move-object v2, v3

    :try_start_43
    move-object v3, v1

    check-cast v3, [Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_46} :catch_56

    :try_start_46
    move-object v4, p1

    check-cast v4, [Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_49} :catch_4e

    invoke-virtual {v2, v3, v4}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .end local v1    # "arargs":Ljava/lang/Object;
    .end local v2    # "runtime":Ljava/lang/Runtime;
    return-object v0

    .line 18
    .end local p0    # "args":Ljava/lang/Object;
    .end local p1    # "env":Ljava/lang/Object;
    :catch_4e
    move-exception p0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_56
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;
    .registers 2
    .param p0, "command"    # Ljava/lang/Object;

    .line 21
    nop

    .line 22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static processCommandLineAssignments()V
    .registers 0

    .line 107
    nop

    .line 108
    invoke-static {}, Lgnu/expr/ApplicationMainSupport;->processSetProperties()V

    return-void
.end method

.method public static system(Ljava/lang/Object;)I
    .registers 2
    .param p0, "command"    # Ljava/lang/Object;

    .line 28
    nop

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    return v0
.end method

.method public static tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 52
    nop

    .line 53
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 55
    sget-object p0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 64
    nop

    .line 55
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p0

    goto :goto_8

    .line 63
    :cond_18
    nop

    .line 53
    nop

    .line 65
    const/4 v0, 0x1

    :try_start_1b
    move-object v1, p0

    check-cast v1, Lgnu/lists/LList;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1e} :catch_4e

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    .line 53
    nop

    .line 66
    new-array v2, v1, [Ljava/lang/String;

    .line 67
    sub-int/2addr v1, v0

    .line 68
    :goto_26
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 71
    return-object v2

    .line 69
    :cond_2d
    :try_start_2d
    check-cast p0, Lgnu/lists/Pair;
    :try_end_2f
    .catch Ljava/lang/ClassCastException; {:try_start_2d .. :try_end_2f} :catch_44

    .line 70
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_37

    const/4 v0, 0x0

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    aput-object v0, v2, v1

    .line 71
    invoke-virtual {p0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p0

    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 69
    :catch_44
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "pp"

    invoke-direct {v1, v0, v3, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 65
    :catch_4e
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "length"

    invoke-direct {v2, v1, v3, v0, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_58

    :goto_57
    throw v2

    :goto_58
    goto :goto_57
.end method

.method public static tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/Object;

    .line 73
    nop

    .line 74
    nop

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 76
    .local v0, "arr":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "/bin/sh"

    aput-object v3, v0, v2

    .line 77
    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    .line 78
    if-nez p0, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_18
    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 79
    nop

    .end local v0    # "arr":[Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 107
    invoke-static {}, Lkawa/lib/system;->processCommandLineAssignments()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :cond_c
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_34

    .line 73
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2}, Lkawa/lib/system;->tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_f
    if-nez p2, :cond_13

    const/4 p1, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_17
    invoke-static {p1}, Lkawa/lib/system;->tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :pswitch_1c
    invoke-static {p2}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_21
    invoke-static {p2}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_26
    invoke-static {p2}, Lkawa/lib/system;->system(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_2f
    invoke-static {p2}, Lkawa/lib/system;->openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_26
        :pswitch_21
        :pswitch_1c
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_2a

    .line 86
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    :try_start_a
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_1a

    if-nez p3, :cond_10

    const/4 p1, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_14
    invoke-static {p2, p1}, Lkawa/lib/system;->compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1a
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 v0, 0x1

    const-string v1, "compile-file"

    invoke-direct {p3, p1, v1, v0, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 6
    :sswitch_24
    invoke-static {p2, p3}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_24
        0x8 -> :sswitch_a
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "catch"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_21

    .line 102
    :try_start_8
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_19

    :try_start_a
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_11

    invoke-static {p2, p3, p4}, Lkawa/lib/system;->catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_11
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_19
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :cond_21
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_c

    .line 107
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
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_36

    .line 21
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 73
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 52
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 43
    :pswitch_1a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 36
    :pswitch_21
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 28
    :pswitch_28
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 21
    :pswitch_2f
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_36
    .packed-switch 0x2
        :pswitch_2f
        :pswitch_28
        :pswitch_21
        :pswitch_1a
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_26

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 86
    :sswitch_c
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_19

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_19
    const p1, -0xbffff

    return p1

    .line 6
    :sswitch_1d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_1d
        0x8 -> :sswitch_c
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_23

    .line 102
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_10

    const p1, -0xbfffe

    return p1

    :cond_10
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1a

    const p1, -0xbfffd

    return p1

    :cond_1a
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_23
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    nop

    .line 21
    nop

    .line 28
    nop

    .line 36
    nop

    .line 43
    nop

    .line 52
    nop

    .line 73
    nop

    .line 81
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 82
    sget-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    goto :goto_1d

    :cond_1b
    sget-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    :goto_1d
    sput-object v1, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    .line 86
    nop

    .line 102
    nop

    .line 107
    return-void
.end method

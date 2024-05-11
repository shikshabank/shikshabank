.class public Lkawa/standard/location;
.super Lkawa/lang/Syntax;
.source "location.java"


# static fields
.field public static final location:Lkawa/standard/location;

.field private static thisType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lkawa/standard/location;

    invoke-direct {v0}, Lkawa/standard/location;-><init>()V

    sput-object v0, Lkawa/standard/location;->location:Lkawa/standard/location;

    .line 18
    const-string v1, "location"

    invoke-virtual {v0, v1}, Lkawa/standard/location;->setName(Ljava/lang/String;)V

    .line 32
    const-string v0, "kawa.standard.location"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static makeLocationProc(Lgnu/mapping/Location;)Lgnu/mapping/Procedure;
    .registers 2
    .param p0, "loc"    # Lgnu/mapping/Location;

    .line 84
    new-instance v0, Lgnu/mapping/LocationProc;

    invoke-direct {v0, p0}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    return-object v0
.end method

.method public static makeProcLocation$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/mapping/Location;
    .registers 7
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 64
    array-length v0, p1

    .line 65
    .local v0, "nargs":I
    instance-of v1, p0, Lgnu/kawa/functions/ApplyToArgs;

    if-eqz v1, :cond_30

    if-lez v0, :cond_30

    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_30

    .line 69
    aget-object v2, p1, v1

    move-object p0, v2

    check-cast p0, Lgnu/mapping/Procedure;

    .line 70
    instance-of v2, p0, Lgnu/mapping/LocationProc;

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    if-ne v0, v3, :cond_22

    .line 71
    move-object v1, p0

    check-cast v1, Lgnu/mapping/LocationProc;

    invoke-virtual {v1}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v1

    return-object v1

    .line 72
    :cond_22
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 73
    .local v2, "rargs":[Ljava/lang/Object;
    array-length v4, v2

    invoke-static {p1, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    new-instance v1, Lgnu/mapping/ProcLocation;

    invoke-direct {v1, p0, v2}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    return-object v1

    .line 76
    .end local v2    # "rargs":[Ljava/lang/Object;
    :cond_30
    instance-of v1, p0, Lgnu/mapping/LocationProc;

    if-eqz v1, :cond_3e

    if-nez v0, :cond_3e

    .line 77
    move-object v1, p0

    check-cast v1, Lgnu/mapping/LocationProc;

    invoke-virtual {v1}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v1

    return-object v1

    .line 78
    :cond_3e
    new-instance v1, Lgnu/mapping/ProcLocation;

    invoke-direct {v1, p0, p1}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public static rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 8
    .param p0, "arg"    # Lgnu/expr/Expression;
    .param p1, "tr"    # Lkawa/lang/Translator;

    .line 36
    instance-of v0, p0, Lgnu/expr/ReferenceExp;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    .line 38
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 39
    .local v0, "rexp":Lgnu/expr/ReferenceExp;
    invoke-virtual {v0, v1}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 40
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 41
    .local v2, "decl":Lgnu/expr/Declaration;
    if-eqz v2, :cond_1e

    .line 43
    invoke-virtual {v2, p1}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 44
    invoke-static {v2}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 46
    invoke-virtual {v2, v1}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 48
    :cond_1e
    return-object v0

    .line 50
    .end local v0    # "rexp":Lgnu/expr/ReferenceExp;
    .end local v2    # "decl":Lgnu/expr/Declaration;
    :cond_1f
    instance-of v0, p0, Lgnu/expr/ApplyExp;

    if-eqz v0, :cond_47

    .line 52
    move-object v0, p0

    check-cast v0, Lgnu/expr/ApplyExp;

    .line 53
    .local v0, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v1

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 54
    .local v2, "args":[Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 55
    invoke-virtual {v0}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    array-length v5, v2

    sub-int/2addr v5, v1

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    sget-object v1, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string v3, "makeProcLocation"

    invoke-static {v1, v3, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v1

    return-object v1

    .line 58
    .end local v0    # "aexp":Lgnu/expr/ApplyExp;
    .end local v2    # "args":[Lgnu/expr/Expression;
    :cond_47
    const-string v0, "invalid argument to location"

    invoke-virtual {p1, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "tr"    # Lkawa/lang/Translator;

    .line 22
    instance-of v0, p1, Lgnu/lists/Pair;

    if-nez v0, :cond_b

    .line 23
    const-string v0, "missing argument to location"

    invoke-virtual {p2, v0}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 24
    :cond_b
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    .line 25
    .local v0, "pair":Lgnu/lists/Pair;
    invoke-virtual {v0}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_1d

    .line 26
    const-string v1, "extra arguments to location"

    invoke-virtual {p2, v1}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 28
    :cond_1d
    const/4 v1, 0x1

    new-array v1, v1, [Lgnu/expr/Expression;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    invoke-static {v3, p2}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v3

    aput-object v3, v1, v2

    .line 29
    .local v1, "args":[Lgnu/expr/Expression;
    sget-object v2, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string v3, "makeLocationProc"

    invoke-static {v2, v3, v1}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v2

    return-object v2
.end method

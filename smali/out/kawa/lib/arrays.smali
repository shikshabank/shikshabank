.class public Lkawa/lib/arrays;
.super Lgnu/expr/ModuleBody;
.source "arrays.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\narrays.scm\nScheme\n*S Scheme\n*F\n+ 1 arrays.scm\n/u2/home/jis/ai2-kawa/kawa/lib/arrays.scm\n*L\n3#1,29:3\n*E\n"
.end annotation


# static fields
.field public static final $Lsarray$Gr:Ljava/lang/Class;

.field public static final $instance:Lkawa/lib/arrays;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field public static final array:Lgnu/expr/ModuleMethod;

.field public static final array$Mnend:Lgnu/expr/ModuleMethod;

.field public static final array$Mnrank:Lgnu/expr/ModuleMethod;

.field public static final array$Mnstart:Lgnu/expr/ModuleMethod;

.field public static final array$Qu:Lgnu/expr/ModuleMethod;

.field public static final make$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final shape:Lgnu/expr/ModuleMethod;

.field public static final share$Mnarray:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "share-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/arrays;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "array-end"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/arrays;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "array-start"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/arrays;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "array-rank"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/arrays;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "array"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/arrays;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "make-array"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/arrays;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "shape"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/arrays;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "array?"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/arrays;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v8, Lgnu/lists/Array;

    sput-object v8, Lkawa/lib/arrays;->$Lsarray$Gr:Ljava/lang/Class;

    new-instance v8, Lkawa/lib/arrays;

    invoke-direct {v8}, Lkawa/lib/arrays;-><init>()V

    sput-object v8, Lkawa/lib/arrays;->$instance:Lkawa/lib/arrays;

    new-instance v9, Lgnu/expr/ModuleMethod;

    const/4 v10, 0x1

    const/16 v11, 0x1001

    invoke-direct {v9, v8, v10, v7, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v9, Lkawa/lib/arrays;->array$Qu:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x2

    const/16 v10, -0x1000

    invoke-direct {v7, v8, v9, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/arrays;->shape:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x3

    const/16 v9, 0x2001

    invoke-direct {v6, v8, v7, v5, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/arrays;->make$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x5

    const/16 v7, -0xfff

    invoke-direct {v5, v8, v6, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/arrays;->array:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x6

    invoke-direct {v4, v8, v5, v3, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/arrays;->array$Mnrank:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x7

    const/16 v5, 0x2002

    invoke-direct {v3, v8, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/arrays;->array$Mnstart:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x8

    invoke-direct {v2, v8, v3, v1, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/arrays;->array$Mnend:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    const/16 v3, 0x3003

    invoke-direct {v1, v8, v2, v0, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/arrays;->share$Mnarray:Lgnu/expr/ModuleMethod;

    invoke-virtual {v8}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs array(Lgnu/lists/Array;[Ljava/lang/Object;)Lgnu/lists/Array;
    .registers 3
    .param p0, "shape"    # Lgnu/lists/Array;
    .param p1, "vals"    # [Ljava/lang/Object;

    .line 16
    nop

    .line 17
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p1}, Lgnu/lists/FVector;-><init>([Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lgnu/kawa/functions/Arrays;->makeSimple(Lgnu/lists/Array;Lgnu/lists/SimpleVector;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static arrayEnd(Lgnu/lists/Array;I)I
    .registers 4
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "k"    # I

    .line 26
    nop

    .line 27
    invoke-interface {p0, p1}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v0

    invoke-interface {p0, p1}, Lgnu/lists/Array;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static arrayRank(Lgnu/lists/Array;)I
    .registers 2
    .param p0, "array"    # Lgnu/lists/Array;

    .line 20
    nop

    .line 21
    invoke-interface {p0}, Lgnu/lists/Array;->rank()I

    move-result v0

    return v0
.end method

.method public static arrayStart(Lgnu/lists/Array;I)I
    .registers 3
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "k"    # I

    .line 23
    nop

    .line 24
    invoke-interface {p0, p1}, Lgnu/lists/Array;->getLowBound(I)I

    move-result v0

    return v0
.end method

.method public static isArray(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 7
    nop

    .line 8
    instance-of v0, p0, Lgnu/lists/Array;

    return v0
.end method

.method public static makeArray(Lgnu/lists/Array;)Lgnu/lists/Array;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/arrays;->makeArray(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object p0

    return-object p0
.end method

.method public static makeArray(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;
    .registers 3
    .param p0, "shape"    # Lgnu/lists/Array;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 13
    nop

    .line 14
    invoke-static {p0, p1}, Lgnu/kawa/functions/Arrays;->make(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static varargs shape([Ljava/lang/Object;)Lgnu/lists/Array;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 10
    nop

    .line 11
    invoke-static {p0}, Lgnu/kawa/functions/Arrays;->shape([Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method

.method public static shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;
    .registers 4
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "shape"    # Lgnu/lists/Array;
    .param p2, "mapper"    # Lgnu/mapping/Procedure;

    .line 29
    nop

    .line 31
    invoke-static {p0, p1, p2}, Lgnu/kawa/functions/Arrays;->shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_3c

    .line 20
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    :try_start_b
    check-cast p2, Lgnu/lists/Array;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_16

    invoke-static {p2}, Lkawa/lib/arrays;->arrayRank(Lgnu/lists/Array;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_16
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "array-rank"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 13
    :sswitch_1f
    :try_start_1f
    check-cast p2, Lgnu/lists/Array;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1f .. :try_end_21} :catch_26

    invoke-static {p2}, Lkawa/lib/arrays;->makeArray(Lgnu/lists/Array;)Lgnu/lists/Array;

    move-result-object p1

    return-object p1

    :catch_26
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-array"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 7
    :sswitch_2f
    invoke-static {p2}, Lkawa/lib/arrays;->isArray(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3a

    :cond_38
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3a
    return-object p1

    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_2f
        0x3 -> :sswitch_1f
        0x6 -> :sswitch_b
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const-string v0, "array-end"

    const-string v1, "array-start"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_60

    .line 26
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_10
    :try_start_10
    check-cast p2, Lgnu/lists/Array;
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_12} :catch_29

    :try_start_12
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_19} :catch_22

    invoke-static {p2, p1}, Lkawa/lib/arrays;->arrayEnd(Lgnu/lists/Array;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_29
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 23
    :sswitch_30
    :try_start_30
    check-cast p2, Lgnu/lists/Array;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_32} :catch_49

    :try_start_32
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_32 .. :try_end_39} :catch_42

    invoke-static {p2, p1}, Lkawa/lib/arrays;->arrayStart(Lgnu/lists/Array;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_42
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_49
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 13
    :sswitch_50
    :try_start_50
    check-cast p2, Lgnu/lists/Array;
    :try_end_52
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_52} :catch_57

    invoke-static {p2, p3}, Lkawa/lib/arrays;->makeArray(Lgnu/lists/Array;Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object p1

    return-object p1

    :catch_57
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-array"

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_60
    .sparse-switch
        0x3 -> :sswitch_50
        0x7 -> :sswitch_30
        0x8 -> :sswitch_10
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "share-array"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2b

    .line 29
    :try_start_8
    check-cast p2, Lgnu/lists/Array;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_23

    :try_start_a
    check-cast p3, Lgnu/lists/Array;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_c} :catch_1b

    :try_start_c
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_e} :catch_13

    invoke-static {p2, p3, p4}, Lkawa/lib/arrays;->shareArray(Lgnu/lists/Array;Lgnu/lists/Array;Lgnu/mapping/Procedure;)Lgnu/lists/Array;

    move-result-object p1

    return-object p1

    .line 30
    :catch_13
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v0, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 29
    :catch_1b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_23
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_2b
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_34

    .line 16
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    const/4 p1, 0x0

    aget-object p1, p2, p1

    const/4 v0, 0x1

    :try_start_e
    move-object v1, p1

    check-cast v1, Lgnu/lists/Array;
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_e .. :try_end_11} :catch_25

    array-length p1, p2

    sub-int/2addr p1, v0

    new-array v2, p1, [Ljava/lang/Object;

    :goto_15
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1e

    invoke-static {v1, v2}, Lkawa/lib/arrays;->array(Lgnu/lists/Array;[Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object p1

    return-object p1

    :cond_1e
    add-int/lit8 v0, p1, 0x1

    aget-object v0, p2, v0

    aput-object v0, v2, p1

    goto :goto_15

    :catch_25
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "array"

    invoke-direct {v1, p2, v2, v0, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 10
    :sswitch_2e
    invoke-static {p2}, Lkawa/lib/arrays;->shape([Ljava/lang/Object;)Lgnu/lists/Array;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_34
    .sparse-switch
        0x2 -> :sswitch_2e
        0x5 -> :sswitch_a
    .end sparse-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_2e

    .line 7
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 20
    :sswitch_f
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 13
    :sswitch_1b
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 7
    :sswitch_27
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_27
        0x3 -> :sswitch_1b
        0x6 -> :sswitch_f
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_3a

    .line 13
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 26
    :sswitch_f
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 23
    :sswitch_1d
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_22

    return v1

    :cond_22
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 13
    :sswitch_2b
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_30

    return v1

    :cond_30
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :sswitch_data_3a
    .sparse-switch
        0x3 -> :sswitch_2b
        0x7 -> :sswitch_1d
        0x8 -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2b

    .line 29
    instance-of v0, p2, Lgnu/lists/Array;

    if-nez v0, :cond_e

    const p1, -0xbffff

    return p1

    :cond_e
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/lists/Array;

    if-nez p2, :cond_18

    const p1, -0xbfffe

    return p1

    :cond_18
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/mapping/Procedure;

    if-nez p2, :cond_22

    const p1, -0xbfffd

    return p1

    :cond_22
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_2b
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    sparse-switch v0, :sswitch_data_1a

    .line 10
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 16
    :sswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 10
    :sswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_1a
    .sparse-switch
        0x2 -> :sswitch_13
        0x5 -> :sswitch_c
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 3
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    nop

    .line 7
    nop

    .line 10
    nop

    .line 13
    nop

    .line 16
    nop

    .line 20
    nop

    .line 23
    nop

    .line 26
    nop

    .line 29
    return-void
.end method

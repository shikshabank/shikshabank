.class public Lkawa/lib/vectors;
.super Lgnu/expr/ModuleBody;
.source "vectors.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nvectors.scm\nScheme\n*S Scheme\n*F\n+ 1 vectors.scm\n/u2/home/jis/ai2-kawa/kawa/lib/vectors.scm\n*L\n1#1,34:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lkawa/lib/vectors;

.field static final Lit0:Lgnu/expr/Keyword;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field public static final list$Mn$Grvector:Lgnu/expr/ModuleMethod;

.field public static final make$Mnvector:Lgnu/expr/ModuleMethod;

.field public static final vector$Mn$Grlist:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnfill$Ex:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnlength:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnref:Lgnu/expr/GenericProc;

.field static final vector$Mnref$Fn1:Lgnu/expr/ModuleMethod;

.field public static final vector$Mnset$Ex:Lgnu/expr/ModuleMethod;

.field public static final vector$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "vector-fill!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/vectors;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "list->vector"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/vectors;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "vector->list"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/vectors;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "vector-ref"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/vectors;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "vector-set!"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/vectors;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "vector-length"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/vectors;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "make-vector"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/vectors;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "vector?"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/vectors;->Lit1:Lgnu/mapping/SimpleSymbol;

    const-string v8, "setter"

    invoke-static {v8}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v8

    sput-object v8, Lkawa/lib/vectors;->Lit0:Lgnu/expr/Keyword;

    new-instance v8, Lkawa/lib/vectors;

    invoke-direct {v8}, Lkawa/lib/vectors;-><init>()V

    sput-object v8, Lkawa/lib/vectors;->$instance:Lkawa/lib/vectors;

    new-instance v9, Lgnu/expr/ModuleMethod;

    const/4 v10, 0x1

    const/16 v11, 0x1001

    invoke-direct {v9, v8, v10, v7, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v9, Lkawa/lib/vectors;->vector$Qu:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x2

    const/16 v10, 0x2001

    invoke-direct {v7, v8, v9, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/vectors;->make$Mnvector:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x4

    invoke-direct {v6, v8, v7, v5, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/vectors;->vector$Mnlength:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x5

    const/16 v7, 0x3003

    invoke-direct {v5, v8, v6, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/vectors;->vector$Mnset$Ex:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x6

    const/16 v6, 0x2002

    invoke-direct {v4, v8, v5, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/vectors;->vector$Mnref$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x7

    invoke-direct {v3, v8, v4, v2, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/vectors;->vector$Mn$Grlist:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0x8

    invoke-direct {v2, v8, v3, v1, v11}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/vectors;->list$Mn$Grvector:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    invoke-direct {v1, v8, v2, v0, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/vectors;->vector$Mnfill$Ex:Lgnu/expr/ModuleMethod;

    invoke-virtual {v8}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static isVector(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "x"    # Ljava/lang/Object;

    .line 3
    nop

    .line 4
    instance-of v0, p0, Lgnu/lists/FVector;

    return v0
.end method

.method public static list$To$Vector(Lgnu/lists/LList;)Lgnu/lists/FVector;
    .registers 2
    .param p0, "x"    # Lgnu/lists/LList;

    .line 30
    nop

    .line 31
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0}, Lgnu/lists/FVector;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static makeVector(I)Lgnu/lists/FVector;
    .registers 2

    sget-object v0, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    invoke-static {p0, v0}, Lkawa/lib/vectors;->makeVector(ILjava/lang/Object;)Lgnu/lists/FVector;

    move-result-object p0

    return-object p0
.end method

.method public static makeVector(ILjava/lang/Object;)Lgnu/lists/FVector;
    .registers 3
    .param p0, "k"    # I
    .param p1, "fill"    # Ljava/lang/Object;

    .line 6
    nop

    .line 7
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0, p0, p1}, Lgnu/lists/FVector;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;
    .registers 5
    .param p0, "vec"    # Lgnu/lists/FVector;

    .line 22
    nop

    .line 23
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 24
    invoke-static {p0}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v1

    .line 25
    .local v0, "result":Lgnu/lists/LList;
    .local v1, "i":I
    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_d

    .line 26
    nop

    .line 28
    .end local v0    # "result":Lgnu/lists/LList;
    .end local v1    # "i":I
    return-object v0

    .restart local v0    # "result":Lgnu/lists/LList;
    .restart local v1    # "i":I
    :cond_d
    sget-object v2, Lkawa/lib/vectors;->vector$Mnref:Lgnu/expr/GenericProc;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_7
.end method

.method public static vectorFill$Ex(Lgnu/lists/FVector;Ljava/lang/Object;)V
    .registers 2
    .param p0, "vec"    # Lgnu/lists/FVector;
    .param p1, "fill"    # Ljava/lang/Object;

    .line 33
    nop

    .line 34
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->setAll(Ljava/lang/Object;)V

    return-void
.end method

.method public static vectorLength(Lgnu/lists/FVector;)I
    .registers 2
    .param p0, "x"    # Lgnu/lists/FVector;

    .line 9
    nop

    .line 10
    invoke-virtual {p0}, Lgnu/lists/FVector;->size()I

    move-result v0

    return v0
.end method

.method public static vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;
    .registers 3
    .param p0, "vector"    # Lgnu/lists/FVector;
    .param p1, "k"    # I

    .line 18
    nop

    .line 19
    invoke-virtual {p0, p1}, Lgnu/lists/FVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V
    .registers 3
    .param p0, "vector"    # Lgnu/lists/FVector;
    .param p1, "k"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 12
    nop

    .line 13
    invoke-virtual {p0, p1, p2}, Lgnu/lists/FVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_60

    .line 30
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/lists/LList;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lkawa/lib/vectors;->list$To$Vector(Lgnu/lists/LList;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "list->vector"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 22
    :pswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/lists/FVector;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "vector->list"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 9
    :pswitch_2b
    :try_start_2b
    check-cast p2, Lgnu/lists/FVector;
    :try_end_2d
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_2d} :catch_36

    invoke-static {p2}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catch_36
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "vector-length"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 6
    :pswitch_3f
    :try_start_3f
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_3f .. :try_end_46} :catch_4b

    invoke-static {p1}, Lkawa/lib/vectors;->makeVector(I)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_4b
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "make-vector"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_54
    invoke-static {p2}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5f

    :cond_5d
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5f
    return-object p1

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_3f
        :pswitch_6
        :pswitch_2b
        :pswitch_6
        :pswitch_6
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const-string v0, "vector-ref"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_50

    .line 33
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_d
    :try_start_d
    check-cast p2, Lgnu/lists/FVector;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_15

    invoke-static {p2, p3}, Lkawa/lib/vectors;->vectorFill$Ex(Lgnu/lists/FVector;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_15
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "vector-fill!"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 18
    :sswitch_1e
    :try_start_1e
    check-cast p2, Lgnu/lists/FVector;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_34

    :try_start_20
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_20 .. :try_end_27} :catch_2c

    invoke-static {p2, p1}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_34
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 6
    :sswitch_3b
    :try_start_3b
    move-object p1, p2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_3b .. :try_end_42} :catch_47

    invoke-static {p1, p3}, Lkawa/lib/vectors;->makeVector(ILjava/lang/Object;)Lgnu/lists/FVector;

    move-result-object p1

    return-object p1

    :catch_47
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "make-vector"

    invoke-direct {p3, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_50
    .sparse-switch
        0x2 -> :sswitch_3b
        0x6 -> :sswitch_1e
        0x9 -> :sswitch_d
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const-string v0, "vector-set!"

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_26

    .line 12
    :try_start_7
    check-cast p2, Lgnu/lists/FVector;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_9} :catch_1e

    :try_start_9
    move-object p1, p3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_10} :catch_16

    invoke-static {p2, p1, p4}, Lkawa/lib/vectors;->vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_16
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_1e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const/4 p4, 0x1

    invoke-direct {p3, p1, v0, p4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :cond_26
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_42

    .line 3
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 30
    :pswitch_f
    instance-of v0, p2, Lgnu/lists/LList;

    if-eqz v0, :cond_1a

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1a
    return v1

    .line 22
    :pswitch_1b
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_26

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_26
    return v1

    .line 9
    :pswitch_27
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_32

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_32
    return v1

    .line 6
    :pswitch_33
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 3
    :pswitch_3a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_33
        :pswitch_a
        :pswitch_27
        :pswitch_a
        :pswitch_a
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_34

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 33
    :sswitch_f
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_1c

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_1c
    return v1

    .line 18
    :sswitch_1d
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_2a

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2a
    return v1

    .line 6
    :sswitch_2b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_34
    .sparse-switch
        0x2 -> :sswitch_2b
        0x6 -> :sswitch_1d
        0x9 -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    .line 12
    instance-of v0, p2, Lgnu/lists/FVector;

    if-eqz v0, :cond_16

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_16
    const p1, -0xbffff

    return p1

    :cond_1a
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 3
    nop

    .line 6
    nop

    .line 9
    nop

    .line 12
    nop

    .line 15
    new-instance v1, Lgnu/expr/GenericProc;

    const-string v2, "vector-ref"

    invoke-direct {v1, v2}, Lgnu/expr/GenericProc;-><init>(Ljava/lang/String;)V

    sput-object v1, Lkawa/lib/vectors;->vector$Mnref:Lgnu/expr/GenericProc;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/vectors;->Lit0:Lgnu/expr/Keyword;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lkawa/lib/vectors;->vector$Mnset$Ex:Lgnu/expr/ModuleMethod;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 18
    sget-object v3, Lkawa/lib/vectors;->vector$Mnref$Fn1:Lgnu/expr/ModuleMethod;

    const/4 v4, 0x0

    .local v4, "vector$Mnref":Lgnu/mapping/Procedure;
    move-object v4, v3

    .line 20
    nop

    .end local v4    # "vector$Mnref":Lgnu/mapping/Procedure;
    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 22
    nop

    .line 30
    nop

    .line 33
    return-void
.end method

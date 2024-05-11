.class public Lkawa/lib/srfi95;
.super Lgnu/expr/ModuleBody;
.source "srfi95.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi95.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi95.scm\n/u2/home/jis/ai2-kawa/kawa/lib/srfi95.scm\n*L\n21#1,196:21\n*E\n"
.end annotation


# static fields
.field public static final $Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

.field public static final $Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

.field public static final $Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

.field public static final $instance:Lkawa/lib/srfi95;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/math/IntNum;

.field static final Lit3:Lgnu/math/IntNum;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field static final identity:Lgnu/expr/ModuleMethod;

.field public static final merge:Lgnu/expr/ModuleMethod;

.field public static final merge$Ex:Lgnu/expr/ModuleMethod;

.field public static final sort:Lgnu/expr/ModuleMethod;

.field public static final sort$Ex:Lgnu/expr/ModuleMethod;

.field public static final sorted$Qu:Lgnu/expr/ModuleMethod;


# direct methods
.method public static $PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "seq"    # Ljava/lang/Object;
    .param p1, "isLess"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 124
    new-instance v0, Lkawa/lib/srfi95$frame0;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame0;-><init>()V

    iput-object p0, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    iput-object p1, v0, Lkawa/lib/srfi95$frame0;->less$Qu:Ljava/lang/Object;

    .line 125
    sget-object v1, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    .line 126
    nop

    .line 146
    nop

    .line 150
    iput-object v1, v0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    .line 125
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_16

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    goto :goto_18

    :cond_16
    sget-object v1, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    :goto_18
    iput-object v1, v0, Lkawa/lib/srfi95$frame0;->keyer:Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "length"

    const/4 v3, 0x1

    if-eq p2, v1, :cond_98

    .line 155
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 146
    nop

    .local v1, "lst":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 147
    :goto_25
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    .local v4, "x":Z
    move v4, v5

    const-string v5, "set-car!"

    if-eqz v4, :cond_6e

    .line 156
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    :try_start_30
    check-cast v1, Lgnu/lists/LList;
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_32} :catch_67

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 157
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    .line 150
    nop

    .line 151
    .restart local v1    # "lst":Ljava/lang/Object;
    :goto_43
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    .restart local v4    # "x":Z
    move v4, v2

    if-eqz v4, :cond_4d

    .line 158
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    iget-object v0, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    goto :goto_a8

    .line 152
    .restart local v1    # "lst":Ljava/lang/Object;
    .restart local v4    # "x":Z
    :cond_4d
    :try_start_4d
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;
    :try_end_50
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_50} :catch_60

    sget-object v6, Lkawa/lib/lists;->cdar:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 153
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_43

    .line 152
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    .end local p0    # "seq":Ljava/lang/Object;
    .end local p1    # "isLess":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_60
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v5, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 156
    :catch_67
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 148
    .restart local v1    # "lst":Ljava/lang/Object;
    .restart local v4    # "x":Z
    .restart local p0    # "seq":Ljava/lang/Object;
    .restart local p1    # "isLess":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_6e
    :try_start_6e
    move-object v6, v1

    check-cast v6, Lgnu/lists/Pair;
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_6e .. :try_end_71} :catch_91

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, p2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    invoke-static {v6, v5}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 149
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_25

    .line 148
    .end local v1    # "lst":Ljava/lang/Object;
    .end local v4    # "x":Z
    .end local p0    # "seq":Ljava/lang/Object;
    .end local p1    # "isLess":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_91
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v5, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 160
    .restart local p0    # "seq":Ljava/lang/Object;
    .restart local p1    # "isLess":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_98
    iget-object v1, v0, Lkawa/lib/srfi95$frame0;->seq:Ljava/lang/Object;

    :try_start_9a
    check-cast v1, Lgnu/lists/LList;
    :try_end_9c
    .catch Ljava/lang/ClassCastException; {:try_start_9a .. :try_end_9c} :catch_a9

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkawa/lib/srfi95$frame0;->lambda2step(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a8
    return-object v0

    .end local p0    # "seq":Ljava/lang/Object;
    .end local p1    # "isLess":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_a9
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_b1

    :goto_b0
    throw p1

    :goto_b1
    goto :goto_b0
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static $PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 196
    nop

    .line 197
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 198
    .local v0, "dim":I
    invoke-static {v0}, Lkawa/lib/vectors;->makeVector(I)Lgnu/lists/FVector;

    move-result-object v1

    const/4 v2, 0x0

    .line 199
    .local v1, "newra":Lgnu/lists/FVector;
    invoke-static {p0}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "sorted":Ljava/lang/Object;
    sget-object v3, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    .local v3, "i":Ljava/lang/Object;
    :goto_15
    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 203
    :try_start_1b
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_22} :catch_3b

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lkawa/lib/vectors;->vectorSet$Ex(Lgnu/lists/FVector;ILjava/lang/Object;)V

    .line 200
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 201
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v5, v3, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v4

    goto :goto_15

    .line 203
    .end local v0    # "dim":I
    .end local v1    # "newra":Lgnu/lists/FVector;
    .end local v2    # "sorted":Ljava/lang/Object;
    .end local v3    # "i":Ljava/lang/Object;
    .end local p0    # "seq":Lgnu/lists/Sequence;
    .end local p1    # "less$Qu":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_3b
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x1

    const-string v0, "vector-set!"

    invoke-direct {p1, p0, v0, p2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 202
    .restart local p0    # "seq":Lgnu/lists/Sequence;
    .restart local p1    # "less$Qu":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_45
    return-void
.end method

.method public static $PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 189
    nop

    .line 190
    invoke-static {p0}, Lkawa/lib/srfi95;->rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "sorted":Ljava/lang/Object;
    sget-object v1, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    .local v1, "i":Ljava/lang/Object;
    :goto_b
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 194
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lgnu/lists/Sequence;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 192
    sget-object v3, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v2

    goto :goto_b

    .line 193
    :cond_31
    nop

    .end local v0    # "sorted":Ljava/lang/Object;
    .end local v1    # "i":Ljava/lang/Object;
    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 14

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "sort"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/srfi95;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "%sort-vector"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lkawa/lib/srfi95;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "%vector-sort!"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lkawa/lib/srfi95;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "sort!"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lkawa/lib/srfi95;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "%sort-list"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lkawa/lib/srfi95;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "merge!"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lkawa/lib/srfi95;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "merge"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lkawa/lib/srfi95;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/mapping/SimpleSymbol;

    const-string v8, "sorted?"

    invoke-direct {v7, v8}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgnu/mapping/SimpleSymbol;

    sput-object v7, Lkawa/lib/srfi95;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v8, Lgnu/mapping/SimpleSymbol;

    const-string v9, "identity"

    invoke-direct {v8, v9}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgnu/mapping/SimpleSymbol;

    sput-object v8, Lkawa/lib/srfi95;->Lit4:Lgnu/mapping/SimpleSymbol;

    const/4 v9, 0x0

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v9

    sput-object v9, Lkawa/lib/srfi95;->Lit3:Lgnu/math/IntNum;

    const/4 v9, 0x1

    invoke-static {v9}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v10

    sput-object v10, Lkawa/lib/srfi95;->Lit2:Lgnu/math/IntNum;

    const/4 v10, 0x2

    invoke-static {v10}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    sput-object v11, Lkawa/lib/srfi95;->Lit1:Lgnu/math/IntNum;

    const/4 v11, -0x1

    invoke-static {v11}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v11

    sput-object v11, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    new-instance v11, Lkawa/lib/srfi95;

    invoke-direct {v11}, Lkawa/lib/srfi95;-><init>()V

    sput-object v11, Lkawa/lib/srfi95;->$instance:Lkawa/lib/srfi95;

    new-instance v12, Lgnu/expr/ModuleMethod;

    const/16 v13, 0x1001

    invoke-direct {v12, v11, v9, v8, v13}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v12, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/16 v9, 0x3002

    invoke-direct {v8, v11, v10, v7, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lkawa/lib/srfi95;->sorted$Qu:Lgnu/expr/ModuleMethod;

    new-instance v7, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x4

    const/16 v10, 0x4003

    invoke-direct {v7, v11, v8, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v7, Lkawa/lib/srfi95;->merge:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v7, 0x6

    invoke-direct {v6, v11, v7, v5, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lkawa/lib/srfi95;->merge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/16 v6, 0x8

    const/16 v7, 0x3003

    invoke-direct {v5, v11, v6, v4, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lkawa/lib/srfi95;->$Pcsort$Mnlist:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/16 v5, 0x9

    invoke-direct {v4, v11, v5, v3, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lkawa/lib/srfi95;->sort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xb

    invoke-direct {v3, v11, v4, v2, v7}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lkawa/lib/srfi95;->$Pcvector$Mnsort$Ex:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xc

    invoke-direct {v2, v11, v3, v1, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lkawa/lib/srfi95;->$Pcsort$Mnvector:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xe

    invoke-direct {v1, v11, v2, v0, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lkawa/lib/srfi95;->sort:Lgnu/expr/ModuleMethod;

    invoke-virtual {v11}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static identity(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "x"    # Ljava/lang/Object;

    .line 34
    return-object p0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 44
    nop

    .line 45
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_ea

    .line 46
    :cond_b
    instance-of v0, p0, Lgnu/lists/Sequence;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_8f

    .line 47
    :try_start_12
    check-cast p0, Lgnu/lists/Sequence;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_14} :catch_86

    .line 48
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 49
    if-gt v0, v3, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    if-eqz v1, :cond_27

    if-eqz v1, :cond_24

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_71

    :cond_24
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_71

    .line 50
    :cond_27
    nop

    .line 49
    nop

    .line 50
    add-int/lit8 v1, v0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-interface {p0, v0}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p2, v0}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    :goto_39
    :try_start_39
    invoke-static {v1}, Lgnu/kawa/lispexpr/LangObjType;->coerceRealNum(Ljava/lang/Object;)Lgnu/math/RealNum;

    move-result-object v2
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_3d} :catch_7d

    invoke-static {v2}, Lkawa/lib/numbers;->isNegative(Lgnu/math/RealNum;)Z

    move-result v2

    if-eqz v2, :cond_4b

    if-eqz v2, :cond_48

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_71

    :cond_48
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_71

    .line 53
    :cond_4b
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    :try_start_4d
    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_4d .. :try_end_54} :catch_73

    invoke-interface {p0, v4}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 54
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v4, p1, v2, v0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v4, :cond_70

    .line 55
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v4, Lkawa/lib/srfi95;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v0, v4, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v2

    goto :goto_39

    .line 54
    :cond_70
    move-object p0, v0

    :goto_71
    goto/16 :goto_ea

    .line 53
    :catch_73
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, 0x2

    const-string v0, "gnu.lists.Sequence.get(int)"

    invoke-direct {p1, p0, v0, p2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 52
    :catch_7d
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "negative?"

    invoke-direct {p1, p0, p2, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 47
    :catch_86
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const-string v0, "arr"

    invoke-direct {p2, p1, v0, v2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 54
    :cond_8f
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 56
    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_ea

    .line 58
    :cond_9e
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    sget-object v4, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 60
    :goto_b0
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    if-eqz v4, :cond_bb

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_ea

    :cond_bb
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_ea

    .line 61
    :cond_be
    sget-object v4, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 62
    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v5, p1, v4, v0}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :try_start_d0
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_d2
    .catch Ljava/lang/ClassCastException; {:try_start_d0 .. :try_end_d2} :catch_eb

    if-eq v0, v5, :cond_d6

    const/4 v0, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v0, 0x0

    :goto_d7
    add-int/2addr v0, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_e3

    .line 63
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, v4

    goto :goto_b0

    .line 62
    :cond_e3
    if-eqz v0, :cond_e8

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_ea

    :cond_e8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_ea
    return-object p0

    :catch_eb
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const-string p2, "x"

    invoke-direct {p1, p0, p2, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_f5

    :goto_f4
    throw p1

    :goto_f5
    goto :goto_f4
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .param p2, "isLess"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 71
    new-instance v0, Lkawa/lib/srfi95$frame;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame;-><init>()V

    iput-object p2, v0, Lkawa/lib/srfi95$frame;->less$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    .line 72
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v0, p1

    goto :goto_51

    :cond_11
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 73
    move-object v0, p0

    goto :goto_51

    .line 75
    :cond_19
    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 76
    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v6, v0, Lkawa/lib/srfi95$frame;->key:Ljava/lang/Object;

    sget-object v7, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v7, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lkawa/lib/srfi95$frame;->lambda1loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_51
    return-object v0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lkawa/lib/srfi95;->identity:Lgnu/expr/ModuleMethod;

    invoke-static {p0, p1, p2, v0}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .param p2, "less$Qu"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 121
    nop

    .line 122
    invoke-static {p0, p1, p2, p3}, Lkawa/lib/srfi95;->sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static rank$Mn1Array$To$List(Lgnu/lists/Sequence;)Ljava/lang/Object;
    .registers 4
    .param p0, "seq"    # Lgnu/lists/Sequence;

    .line 162
    nop

    .line 163
    invoke-interface {p0}, Lgnu/lists/Sequence;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "idx":I
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 165
    .local v1, "lst":Ljava/lang/Object;
    :goto_9
    if-gez v0, :cond_c

    .line 166
    .end local v0    # "idx":I
    .end local v1    # "lst":Ljava/lang/Object;
    return-object v1

    .restart local v0    # "idx":I
    .restart local v1    # "lst":Ljava/lang/Object;
    :cond_c
    invoke-interface {p0, v0}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    .line 212
    nop

    .line 213
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 214
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    aput-object v2, v0, v1

    invoke-static {v0}, Lkawa/standard/append;->append$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    .line 216
    :cond_1b
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_20
    return-object v0
.end method

.method static sort$ClMerge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;
    .param p2, "isLess"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/Object;

    .line 88
    new-instance v0, Lkawa/lib/srfi95$frame1;

    invoke-direct {v0}, Lkawa/lib/srfi95$frame1;-><init>()V

    iput-object p2, v0, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    iput-object p3, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    .line 89
    invoke-static {p0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 100
    goto/16 :goto_7d

    :cond_11
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 101
    goto/16 :goto_b4

    .line 103
    :cond_19
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .local v3, "kcara":Ljava/lang/Object;
    .local v4, "kcarb":Ljava/lang/Object;
    move-object v6, v2

    .end local v4    # "kcarb":Ljava/lang/Object;
    .local v6, "kcarb":Ljava/lang/Object;
    move-object v7, v1

    .line 105
    .end local v3    # "kcara":Ljava/lang/Object;
    .local v7, "kcara":Ljava/lang/Object;
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 106
    iget-object v2, v0, Lkawa/lib/srfi95$frame1;->less$Qu:Ljava/lang/Object;

    invoke-virtual {v1, v2, v6, v7}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const-string v4, "set-cdr!"

    if-eq v1, v2, :cond_7f

    .line 107
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 108
    :try_start_54
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_54 .. :try_end_57} :catch_5b

    invoke-static {v0, p0}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto :goto_7c

    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    .end local p0    # "a":Ljava/lang/Object;
    .end local p1    # "b":Ljava/lang/Object;
    .end local p2    # "isLess":Ljava/lang/Object;
    .end local p3    # "key":Ljava/lang/Object;
    :catch_5b
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p0, v4, v3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 109
    .restart local v6    # "kcarb":Ljava/lang/Object;
    .restart local v7    # "kcara":Ljava/lang/Object;
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    .restart local p2    # "isLess":Ljava/lang/Object;
    .restart local p3    # "key":Ljava/lang/Object;
    :cond_62
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v3, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p1

    move-object v2, p0

    move-object v3, v7

    invoke-virtual/range {v0 .. v5}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_7c
    nop

    .line 115
    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    :goto_7d
    move-object v0, p1

    goto :goto_b5

    .line 112
    .restart local v6    # "kcarb":Ljava/lang/Object;
    .restart local v7    # "kcara":Ljava/lang/Object;
    :cond_7f
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 113
    :try_start_8b
    move-object v0, p0

    check-cast v0, Lgnu/lists/Pair;
    :try_end_8e
    .catch Ljava/lang/ClassCastException; {:try_start_8b .. :try_end_8e} :catch_92

    invoke-static {v0, p1}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    goto :goto_b3

    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    .end local p0    # "a":Ljava/lang/Object;
    .end local p1    # "b":Ljava/lang/Object;
    .end local p2    # "isLess":Ljava/lang/Object;
    .end local p3    # "key":Ljava/lang/Object;
    :catch_92
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v3, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 114
    .restart local v6    # "kcarb":Ljava/lang/Object;
    .restart local v7    # "kcara":Ljava/lang/Object;
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    .restart local p2    # "isLess":Ljava/lang/Object;
    .restart local p3    # "key":Ljava/lang/Object;
    :cond_99
    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v3, v0, Lkawa/lib/srfi95$frame1;->key:Ljava/lang/Object;

    sget-object v4, Lkawa/lib/lists;->cadr:Lgnu/expr/GenericProc;

    invoke-virtual {v4, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lkawa/lib/srfi95$frame1;->lambda3loop(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :goto_b3
    nop

    .end local v6    # "kcarb":Ljava/lang/Object;
    .end local v7    # "kcara":Ljava/lang/Object;
    :goto_b4
    move-object v0, p0

    :goto_b5
    return-object v0
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p0, "seq"    # Lgnu/lists/Sequence;
    .param p1, "less$Qu"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/Object;

    const-string v0, "set-car!"

    const-string v1, "set-cdr!"

    .line 175
    nop

    .line 176
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 177
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 178
    .local v2, "ret":Ljava/lang/Object;
    if-eq v2, p0, :cond_80

    .line 179
    move-object v4, v2

    .local v4, "crt":Ljava/lang/Object;
    :goto_14
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 180
    invoke-virtual {v5, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, p0, :cond_23

    .line 179
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_14

    .line 181
    :cond_23
    const/4 v5, 0x1

    :try_start_24
    move-object v6, v4

    check-cast v6, Lgnu/lists/Pair;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_27} :catch_79

    invoke-static {v6, v2}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 182
    sget-object v6, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v6, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v7, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v3, "scdr":Ljava/lang/Object;
    move-object v8, v4

    .local v8, "scar":Ljava/lang/Object;
    move-object v3, v7

    .line 183
    .end local v8    # "scar":Ljava/lang/Object;
    .local v6, "scar":Ljava/lang/Object;
    :try_start_38
    move-object v7, p0

    check-cast v7, Lgnu/lists/Pair;
    :try_end_3b
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_3b} :catch_72

    sget-object v8, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :try_start_44
    move-object v7, p0

    check-cast v7, Lgnu/lists/Pair;
    :try_end_47
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_47} :catch_6b

    sget-object v8, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v8, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .line 184
    :try_start_50
    move-object v7, v2

    check-cast v7, Lgnu/lists/Pair;
    :try_end_53
    .catch Ljava/lang/ClassCastException; {:try_start_50 .. :try_end_53} :catch_64

    invoke-static {v7, v6}, Lkawa/lib/lists;->setCar$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    :try_start_56
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;
    :try_end_59
    .catch Ljava/lang/ClassCastException; {:try_start_56 .. :try_end_59} :catch_5d

    invoke-static {v0, v3}, Lkawa/lib/lists;->setCdr$Ex(Lgnu/lists/Pair;Ljava/lang/Object;)V

    .end local v3    # "scdr":Ljava/lang/Object;
    .end local v4    # "crt":Ljava/lang/Object;
    .end local v6    # "scar":Ljava/lang/Object;
    goto :goto_80

    .end local v2    # "ret":Ljava/lang/Object;
    .end local p0    # "seq":Lgnu/lists/Sequence;
    .end local p1    # "less$Qu":Ljava/lang/Object;
    .end local p2    # "key":Ljava/lang/Object;
    :catch_5d
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v1, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    :catch_64
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v0, v5, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 183
    :catch_6b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_72
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 181
    :catch_79
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    invoke-direct {p1, p0, v1, v5, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 185
    .restart local v2    # "ret":Ljava/lang/Object;
    .restart local p0    # "seq":Lgnu/lists/Sequence;
    .restart local p1    # "less$Qu":Ljava/lang/Object;
    .restart local p2    # "key":Ljava/lang/Object;
    :cond_80
    :goto_80
    move-object v0, p0

    .end local v2    # "ret":Ljava/lang/Object;
    goto :goto_86

    .line 187
    :cond_82
    invoke-static {p0, p1, p2}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_86
    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 34
    invoke-static {p2}, Lkawa/lib/srfi95;->identity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_42

    .line 212
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    :try_start_b
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "sort"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 196
    :sswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_23

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_23
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "%sort-vector"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 175
    :sswitch_2c
    :try_start_2c
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_2c .. :try_end_2e} :catch_33

    invoke-static {p2, p3}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_33
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "sort!"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 44
    :sswitch_3c
    invoke-static {p2, p3}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_42
    .sparse-switch
        0x2 -> :sswitch_3c
        0x9 -> :sswitch_2c
        0xc -> :sswitch_1b
        0xe -> :sswitch_b
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_60

    .line 212
    :pswitch_6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->sort(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "sort"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 196
    :pswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_23

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcSortVector(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_23
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "%sort-vector"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 189
    :pswitch_2c
    :try_start_2c
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_2e
    .catch Ljava/lang/ClassCastException; {:try_start_2c .. :try_end_2e} :catch_33

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcVectorSort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_33
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "%vector-sort!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 175
    :pswitch_3c
    :try_start_3c
    check-cast p2, Lgnu/lists/Sequence;
    :try_end_3e
    .catch Ljava/lang/ClassCastException; {:try_start_3c .. :try_end_3e} :catch_43

    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->sort$Ex(Lgnu/lists/Sequence;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_43
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "sort!"

    invoke-direct {p3, p1, p4, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 124
    :pswitch_4c
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->$PcSortList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 121
    :pswitch_51
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_56
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :pswitch_5b
    invoke-static {p2, p3, p4}, Lkawa/lib/srfi95;->isSorted(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_6
        :pswitch_56
        :pswitch_6
        :pswitch_51
        :pswitch_6
        :pswitch_4c
        :pswitch_3c
        :pswitch_6
        :pswitch_2c
        :pswitch_1b
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_14

    .line 121
    :pswitch_5
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {p2, p3, p4, p5}, Lkawa/lib/srfi95;->merge$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 71
    :pswitch_f
    invoke-static {p2, p3, p4, p5}, Lkawa/lib/srfi95;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_f
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 34
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_d
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_42

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 212
    :sswitch_f
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 196
    :sswitch_1d
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_22

    return v1

    :cond_22
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 175
    :sswitch_2b
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_30

    return v1

    :cond_30
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 44
    :sswitch_39
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_42
    .sparse-switch
        0x2 -> :sswitch_39
        0x9 -> :sswitch_2b
        0xc -> :sswitch_1d
        0xe -> :sswitch_f
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_7c

    .line 44
    :pswitch_a
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 212
    :pswitch_f
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 196
    :pswitch_1f
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_24

    return v1

    :cond_24
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 189
    :pswitch_2f
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_34

    return v1

    :cond_34
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 175
    :pswitch_3f
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-nez v0, :cond_44

    return v1

    :cond_44
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 124
    :pswitch_4f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 121
    :pswitch_5a
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 71
    :pswitch_65
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 44
    :pswitch_70
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p5, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_70
        :pswitch_a
        :pswitch_65
        :pswitch_a
        :pswitch_5a
        :pswitch_a
        :pswitch_4f
        :pswitch_3f
        :pswitch_a
        :pswitch_2f
        :pswitch_1f
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_26

    .line 71
    :pswitch_7
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 121
    :pswitch_c
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 71
    :pswitch_19
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_26
    .packed-switch 0x4
        :pswitch_19
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 21
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 34
    nop

    .line 44
    nop

    .line 71
    nop

    .line 88
    nop

    .line 121
    nop

    .line 124
    nop

    .line 162
    nop

    .line 175
    nop

    .line 189
    nop

    .line 196
    nop

    .line 212
    return-void
.end method

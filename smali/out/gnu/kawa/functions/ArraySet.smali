.class public Lgnu/kawa/functions/ArraySet;
.super Lgnu/mapping/ProcedureN;
.source "ArraySet.java"


# static fields
.field public static final arraySet:Lgnu/kawa/functions/ArraySet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lgnu/kawa/functions/ArraySet;

    invoke-direct {v0}, Lgnu/kawa/functions/ArraySet;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArraySet;->arraySet:Lgnu/kawa/functions/ArraySet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V
    .registers 7
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "index"    # Lgnu/lists/Sequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    .line 15
    .local v0, "dims":I
    new-array v1, v0, [I

    .line 16
    .local v1, "indexes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 18
    invoke-interface {p1, v2}, Lgnu/lists/Sequence;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 20
    .end local v2    # "i":I
    :cond_18
    invoke-interface {p0, v1, p2}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-eqz v0, :cond_10

    .line 28
    move-object v0, p1

    check-cast v0, Lgnu/lists/Array;

    move-object v1, p2

    check-cast v1, Lgnu/lists/Sequence;

    invoke-static {v0, v1, p3}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0

    .line 32
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/ProcedureN;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lgnu/lists/Array;

    .line 40
    .local v0, "array":Lgnu/lists/Array;
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1c

    .line 42
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 43
    .local v1, "arg1":Ljava/lang/Object;
    instance-of v3, v1, Lgnu/lists/Sequence;

    if-eqz v3, :cond_1c

    .line 45
    move-object v3, v1

    check-cast v3, Lgnu/lists/Sequence;

    aget-object v2, p1, v2

    invoke-static {v0, v3, v2}, Lgnu/kawa/functions/ArraySet;->arraySet(Lgnu/lists/Array;Lgnu/lists/Sequence;Ljava/lang/Object;)V

    .line 46
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v2

    .line 49
    .end local v1    # "arg1":Ljava/lang/Object;
    :cond_1c
    array-length v1, p1

    sub-int/2addr v1, v2

    .line 50
    .local v1, "dim":I
    new-array v2, v1, [I

    .line 51
    .local v2, "indexes":[I
    move v3, v1

    .local v3, "i":I
    :goto_21
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_32

    .line 53
    add-int/lit8 v4, v3, 0x1

    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v2, v3

    goto :goto_21

    .line 55
    .end local v3    # "i":I
    :cond_32
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-interface {v0, v2, v3}, Lgnu/lists/Array;->set([ILjava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v3
.end method

.class public Lgnu/kawa/functions/ArrayRef;
.super Lgnu/mapping/ProcedureN;
.source "ArrayRef.java"


# static fields
.field public static final arrayRef:Lgnu/kawa/functions/ArrayRef;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lgnu/kawa/functions/ArrayRef;

    invoke-direct {v0}, Lgnu/kawa/functions/ArrayRef;-><init>()V

    sput-object v0, Lgnu/kawa/functions/ArrayRef;->arrayRef:Lgnu/kawa/functions/ArrayRef;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    return-void
.end method

.method public static arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;
    .registers 6
    .param p0, "array"    # Lgnu/lists/Array;
    .param p1, "index"    # Lgnu/lists/Sequence;

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
    invoke-interface {p0, v1}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    instance-of v0, p2, Lgnu/lists/Sequence;

    if-eqz v0, :cond_f

    .line 27
    move-object v0, p1

    check-cast v0, Lgnu/lists/Array;

    move-object v1, p2

    check-cast v1, Lgnu/lists/Sequence;

    invoke-static {v0, v1}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 28
    :cond_f
    invoke-super {p0, p1, p2}, Lgnu/mapping/ProcedureN;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lgnu/lists/Array;

    .line 36
    .local v0, "array":Lgnu/lists/Array;
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_18

    .line 38
    aget-object v1, p1, v2

    .line 39
    .local v1, "arg1":Ljava/lang/Object;
    instance-of v3, v1, Lgnu/lists/Sequence;

    if-eqz v3, :cond_18

    .line 40
    move-object v2, v1

    check-cast v2, Lgnu/lists/Sequence;

    invoke-static {v0, v2}, Lgnu/kawa/functions/ArrayRef;->arrayRef(Lgnu/lists/Array;Lgnu/lists/Sequence;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 42
    .end local v1    # "arg1":Ljava/lang/Object;
    :cond_18
    array-length v1, p1

    sub-int/2addr v1, v2

    new-array v1, v1, [I

    .line 43
    .local v1, "indexes":[I
    array-length v3, p1

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1e
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2f

    .line 45
    add-int/lit8 v2, v3, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v1, v3

    goto :goto_1e

    .line 47
    .end local v3    # "i":I
    :cond_2f
    invoke-interface {v0, v1}, Lgnu/lists/Array;->get([I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

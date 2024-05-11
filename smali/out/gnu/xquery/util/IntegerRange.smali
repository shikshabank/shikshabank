.class public Lgnu/xquery/util/IntegerRange;
.super Lgnu/mapping/MethodProc;
.source "IntegerRange.java"


# static fields
.field public static final MAX_INT:Lgnu/math/IntNum;

.field public static final MIN_INT:Lgnu/math/IntNum;

.field public static final integerRange:Lgnu/xquery/util/IntegerRange;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lgnu/xquery/util/IntegerRange;

    const-string v1, "to"

    invoke-direct {v0, v1}, Lgnu/xquery/util/IntegerRange;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/IntegerRange;->integerRange:Lgnu/xquery/util/IntegerRange;

    .line 20
    const/high16 v0, -0x80000000

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/IntegerRange;->MIN_INT:Lgnu/math/IntNum;

    .line 21
    const v0, 0x7fffffff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/xquery/util/IntegerRange;->MAX_INT:Lgnu/math/IntNum;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lgnu/xquery/util/IntegerRange;->setName(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static integerRange(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "first"    # Lgnu/math/IntNum;
    .param p1, "last"    # Lgnu/math/IntNum;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 39
    sget-object v0, Lgnu/xquery/util/IntegerRange;->MIN_INT:Lgnu/math/IntNum;

    invoke-static {p0, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-ltz v0, :cond_24

    sget-object v0, Lgnu/xquery/util/IntegerRange;->MAX_INT:Lgnu/math/IntNum;

    invoke-static {p1, v0}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-gtz v0, :cond_24

    .line 42
    invoke-virtual {p0}, Lgnu/math/IntNum;->intValue()I

    move-result v0

    .line 43
    .local v0, "fst":I
    invoke-virtual {p1}, Lgnu/math/IntNum;->intValue()I

    move-result v1

    .line 44
    .local v1, "lst":I
    if-gt v0, v1, :cond_23

    .line 48
    :goto_1a
    invoke-interface {p2, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 49
    if-ne v0, v1, :cond_20

    .line 50
    goto :goto_23

    .line 51
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 54
    :cond_23
    :goto_23
    return-void

    .line 56
    .end local v0    # "fst":I
    .end local v1    # "lst":I
    :cond_24
    :goto_24
    invoke-static {p0, p1}, Lgnu/math/IntNum;->compare(Lgnu/math/IntNum;Lgnu/math/IntNum;)I

    move-result v0

    if-gtz v0, :cond_33

    .line 58
    invoke-interface {p2, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lgnu/math/IntNum;->add(Lgnu/math/IntNum;I)Lgnu/math/IntNum;

    move-result-object p0

    goto :goto_24

    .line 61
    :cond_33
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 65
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "first":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "last":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 68
    invoke-static {v0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    invoke-static {v1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v0, v2, :cond_4e

    if-eqz v0, :cond_4e

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v1, v2, :cond_4e

    if-nez v1, :cond_20

    goto :goto_4e

    .line 73
    :cond_20
    instance-of v2, v0, Lgnu/kawa/xml/UntypedAtomic;

    const/16 v3, 0xa

    if-eqz v2, :cond_32

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v0

    .line 75
    :cond_32
    instance-of v2, v1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_42

    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lgnu/math/IntNum;->valueOf(Ljava/lang/String;I)Lgnu/math/IntNum;

    move-result-object v1

    .line 77
    :cond_42
    move-object v2, v0

    check-cast v2, Lgnu/math/IntNum;

    move-object v3, v1

    check-cast v3, Lgnu/math/IntNum;

    iget-object v4, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    invoke-static {v2, v3, v4}, Lgnu/xquery/util/IntegerRange;->integerRange(Lgnu/math/IntNum;Lgnu/math/IntNum;Lgnu/lists/Consumer;)V

    .line 78
    return-void

    .line 72
    :cond_4e
    :goto_4e
    return-void
.end method

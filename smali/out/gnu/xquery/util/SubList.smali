.class public Lgnu/xquery/util/SubList;
.super Lgnu/mapping/MethodProc;
.source "SubList.java"


# static fields
.field public static final subList:Lgnu/xquery/util/SubList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lgnu/xquery/util/SubList;

    invoke-direct {v0}, Lgnu/xquery/util/SubList;-><init>()V

    sput-object v0, Lgnu/xquery/util/SubList;->subList:Lgnu/xquery/util/SubList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V
    .registers 14
    .param p0, "seq"    # Ljava/lang/Object;
    .param p1, "start"    # D
    .param p3, "end"    # D
    .param p5, "out"    # Lgnu/lists/Consumer;

    .line 20
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_2e

    .line 22
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    .line 23
    .local v0, "vals":Lgnu/mapping/Values;
    const/4 v1, 0x0

    .line 24
    .local v1, "n":I
    const/4 v2, 0x0

    .line 25
    .local v2, "i":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    int-to-double v3, v1

    cmpg-double v5, v3, p1

    if-gez v5, :cond_17

    .line 27
    invoke-virtual {v0, v2}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v2

    .line 28
    if-gez v2, :cond_9

    .line 29
    return-void

    .line 31
    :cond_17
    move v3, v2

    .line 32
    .local v3, "startPosition":I
    move v4, v2

    .line 33
    .local v4, "endPosition":I
    :goto_19
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "n":I
    .local v5, "n":I
    int-to-double v6, v1

    cmpg-double v1, v6, p3

    if-gez v1, :cond_2a

    .line 35
    invoke-virtual {v0, v2}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v2

    .line 36
    if-gez v2, :cond_27

    .line 37
    goto :goto_2a

    .line 38
    :cond_27
    move v4, v2

    move v1, v5

    goto :goto_19

    .line 40
    :cond_2a
    :goto_2a
    invoke-virtual {v0, v3, v4, p5}, Lgnu/mapping/Values;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 41
    .end local v0    # "vals":Lgnu/mapping/Values;
    .end local v2    # "i":I
    .end local v3    # "startPosition":I
    .end local v4    # "endPosition":I
    .end local v5    # "n":I
    goto :goto_3d

    .line 44
    :cond_2e
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_3d

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double v2, p3, v0

    if-ltz v2, :cond_3d

    .line 45
    invoke-interface {p5, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 47
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 16
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 51
    iget-object v6, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 52
    .local v6, "consumer":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v7

    .line 53
    .local v7, "seq":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v8, v0

    .line 54
    .local v8, "d1":D
    sget-object v10, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    .line 55
    .local v10, "eof":Ljava/lang/Object;
    invoke-virtual {p1, v10}, Lgnu/mapping/CallContext;->getNextArg(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 56
    .local v11, "arg2":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 57
    if-eq v11, v10, :cond_28

    invoke-static {v11}, Lgnu/xquery/util/StringUtils;->asDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_2a

    :cond_28
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_2a
    move-wide v12, v0

    .line 59
    .local v12, "d2":D
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double v3, v8, v12

    move-object v0, v7

    move-wide v1, v8

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lgnu/xquery/util/SubList;->subList(Ljava/lang/Object;DDLgnu/lists/Consumer;)V

    .line 60
    return-void
.end method

.method public numArgs()I
    .registers 2

    .line 15
    const/16 v0, 0x3002

    return v0
.end method

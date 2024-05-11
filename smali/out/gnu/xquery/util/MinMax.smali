.class public Lgnu/xquery/util/MinMax;
.super Ljava/lang/Object;
.source "MinMax.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 88
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 89
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_15

    .line 90
    sget-object v0, Lgnu/kawa/xml/XDataType;->doubleType:Lgnu/kawa/xml/XDataType;

    invoke-static {p0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/xml/XDataType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/lang/Double;

    .line 92
    :cond_15
    return-object p0
.end method

.method public static max(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "collation"    # Lgnu/xquery/util/NamedCollator;

    .line 20
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static min(Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "collation"    # Lgnu/xquery/util/NamedCollator;

    .line 15
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lgnu/xquery/util/MinMax;->minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static minMax(Ljava/lang/Object;ZLgnu/xquery/util/NamedCollator;)Ljava/lang/Object;
    .registers 15
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "returnMax"    # Z
    .param p2, "collation"    # Lgnu/xquery/util/NamedCollator;

    .line 26
    instance-of v0, p0, Lgnu/mapping/Values;

    const/16 v1, 0x10

    if-eqz v0, :cond_79

    .line 28
    move-object v0, p0

    check-cast v0, Lgnu/lists/TreeList;

    .line 29
    .local v0, "tlist":Lgnu/lists/TreeList;
    const/4 v2, 0x0

    .line 30
    .local v2, "pos":I
    if-eqz p1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x4

    .line 31
    .local v1, "flags":I
    :goto_e
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 32
    .local v3, "cur":Ljava/lang/Object;
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_19

    .line 33
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v4

    .line 34
    :cond_19
    invoke-static {v3}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 37
    .local v4, "result":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v2

    .line 38
    invoke-virtual {v0, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 39
    sget-object v5, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v5, :cond_2a

    .line 40
    return-object v4

    .line 41
    :cond_2a
    invoke-static {v3}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    instance-of v5, v4, Ljava/lang/Number;

    if-nez v5, :cond_3f

    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_37

    goto :goto_3f

    .line 72
    :cond_37
    invoke-static {v1, v4, v3, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 73
    move-object v4, v3

    goto :goto_1d

    .line 45
    :cond_3f
    :goto_3f
    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v5

    .line 46
    .local v5, "code1":I
    invoke-static {v3}, Lgnu/kawa/functions/Arithmetic;->classifyValue(Ljava/lang/Object;)I

    move-result v6

    .line 47
    .local v6, "code2":I
    const/4 v7, 0x0

    invoke-static {v4, v5, v3, v6, v7}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;ILjava/lang/Object;IZ)I

    move-result v8

    .line 49
    .local v8, "rcode":I
    const/4 v9, -0x3

    if-eq v8, v9, :cond_71

    .line 51
    if-ge v5, v6, :cond_53

    move v9, v6

    goto :goto_54

    :cond_53
    move v9, v5

    .line 53
    .local v9, "code":I
    :goto_54
    const/4 v10, -0x2

    if-ne v8, v10, :cond_5b

    .line 55
    sget-object v4, Lgnu/xquery/util/NumberValue;->NaN:Ljava/lang/Double;

    .line 56
    const/4 v7, 0x1

    .local v7, "castNeeded":Z
    goto :goto_6a

    .line 58
    .end local v7    # "castNeeded":Z
    :cond_5b
    invoke-static {v8, v1}, Lgnu/kawa/functions/NumberCompare;->checkCompareCode(II)Z

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_67

    .line 60
    if-eq v9, v6, :cond_65

    const/4 v7, 0x1

    .line 61
    .restart local v7    # "castNeeded":Z
    :cond_65
    move-object v4, v3

    goto :goto_6a

    .line 65
    .end local v7    # "castNeeded":Z
    :cond_67
    if-eq v9, v5, :cond_6a

    const/4 v7, 0x1

    .line 67
    .restart local v7    # "castNeeded":Z
    :cond_6a
    :goto_6a
    if-eqz v7, :cond_70

    .line 68
    invoke-static {v4, v9}, Lgnu/kawa/functions/Arithmetic;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 69
    .end local v5    # "code1":I
    .end local v6    # "code2":I
    .end local v7    # "castNeeded":Z
    .end local v8    # "rcode":I
    .end local v9    # "code":I
    :cond_70
    goto :goto_1d

    .line 50
    .restart local v5    # "code1":I
    .restart local v6    # "code2":I
    .restart local v8    # "rcode":I
    :cond_71
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v9, "values cannot be compared"

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 79
    .end local v0    # "tlist":Lgnu/lists/TreeList;
    .end local v1    # "flags":I
    .end local v2    # "pos":I
    .end local v3    # "cur":Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    .end local v5    # "code1":I
    .end local v6    # "code2":I
    .end local v8    # "rcode":I
    :cond_79
    invoke-static {p0}, Lgnu/xquery/util/MinMax;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    invoke-static {v1, p0, p0, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    .line 82
    return-object p0
.end method

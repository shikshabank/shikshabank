.class public Lgnu/kawa/functions/IsEqual;
.super Lgnu/mapping/Procedure2;
.source "IsEqual.java"


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "name"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    .line 15
    invoke-virtual {p0, p2}, Lgnu/kawa/functions/IsEqual;->setName(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 30
    return v0

    .line 31
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_c7

    if-nez p1, :cond_b

    goto/16 :goto_c7

    .line 33
    :cond_b
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_1e

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1e

    .line 34
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v0, v1}, Lgnu/kawa/functions/IsEqual;->numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    return v0

    .line 38
    :cond_1e
    instance-of v2, p0, Ljava/lang/CharSequence;

    if-eqz v2, :cond_49

    .line 40
    instance-of v2, p1, Ljava/lang/CharSequence;

    if-nez v2, :cond_27

    .line 41
    return v1

    .line 42
    :cond_27
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    .line 43
    .local v2, "seq1":Ljava/lang/CharSequence;
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    .line 44
    .local v3, "seq2":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 45
    .local v4, "len1":I
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 46
    .local v5, "len2":I
    if-eq v4, v5, :cond_38

    .line 47
    return v1

    .line 48
    :cond_38
    move v6, v4

    .local v6, "i":I
    :cond_39
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_48

    .line 50
    invoke-interface {v2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {v3, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_39

    .line 51
    return v1

    .line 53
    .end local v6    # "i":I
    :cond_48
    return v0

    .line 87
    .end local v2    # "seq1":Ljava/lang/CharSequence;
    .end local v3    # "seq2":Ljava/lang/CharSequence;
    .end local v4    # "len1":I
    .end local v5    # "len2":I
    :cond_49
    instance-of v2, p0, Lgnu/lists/FVector;

    if-eqz v2, :cond_79

    .line 89
    instance-of v2, p1, Lgnu/lists/FVector;

    if-nez v2, :cond_52

    .line 90
    return v1

    .line 91
    :cond_52
    move-object v2, p0

    check-cast v2, Lgnu/lists/FVector;

    .line 92
    .local v2, "vec1":Lgnu/lists/FVector;
    move-object v3, p1

    check-cast v3, Lgnu/lists/FVector;

    .line 93
    .local v3, "vec2":Lgnu/lists/FVector;
    iget v4, v2, Lgnu/lists/FVector;->size:I

    .line 94
    .local v4, "n":I
    iget-object v5, v3, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    if-eqz v5, :cond_78

    iget v5, v3, Lgnu/lists/FVector;->size:I

    if-eq v5, v4, :cond_63

    goto :goto_78

    .line 96
    :cond_63
    iget-object v5, v2, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 97
    .local v5, "data1":[Ljava/lang/Object;
    iget-object v6, v3, Lgnu/lists/FVector;->data:[Ljava/lang/Object;

    .line 98
    .local v6, "data2":[Ljava/lang/Object;
    move v7, v4

    .local v7, "i":I
    :cond_68
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_77

    .line 100
    aget-object v8, v5, v7

    aget-object v9, v6, v7

    invoke-static {v8, v9}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 101
    return v1

    .line 103
    .end local v7    # "i":I
    :cond_77
    return v0

    .line 95
    .end local v5    # "data1":[Ljava/lang/Object;
    .end local v6    # "data2":[Ljava/lang/Object;
    :cond_78
    :goto_78
    return v1

    .line 105
    .end local v2    # "vec1":Lgnu/lists/FVector;
    .end local v3    # "vec2":Lgnu/lists/FVector;
    .end local v4    # "n":I
    :cond_79
    instance-of v2, p0, Lgnu/lists/LList;

    if-eqz v2, :cond_c2

    .line 107
    instance-of v2, p0, Lgnu/lists/Pair;

    if-eqz v2, :cond_c1

    instance-of v2, p1, Lgnu/lists/Pair;

    if-nez v2, :cond_86

    goto :goto_c1

    .line 109
    :cond_86
    move-object v2, p0

    check-cast v2, Lgnu/lists/Pair;

    .line 110
    .local v2, "pair1":Lgnu/lists/Pair;
    move-object v3, p1

    check-cast v3, Lgnu/lists/Pair;

    .line 113
    .local v3, "pair2":Lgnu/lists/Pair;
    :goto_8c
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    .line 114
    .local v4, "x1":Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v5

    .line 115
    .local v5, "x2":Ljava/lang/Object;
    invoke-static {v4, v5}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    .line 116
    return v1

    .line 117
    :cond_9b
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .line 118
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .line 119
    if-ne v4, v5, :cond_a6

    .line 120
    return v0

    .line 121
    :cond_a6
    if-eqz v4, :cond_c0

    if-nez v5, :cond_ab

    goto :goto_c0

    .line 123
    :cond_ab
    instance-of v6, v4, Lgnu/lists/Pair;

    if-eqz v6, :cond_bb

    instance-of v6, v5, Lgnu/lists/Pair;

    if-nez v6, :cond_b4

    goto :goto_bb

    .line 125
    :cond_b4
    move-object v2, v4

    check-cast v2, Lgnu/lists/Pair;

    .line 126
    move-object v3, v5

    check-cast v3, Lgnu/lists/Pair;

    .line 127
    .end local v4    # "x1":Ljava/lang/Object;
    .end local v5    # "x2":Ljava/lang/Object;
    goto :goto_8c

    .line 124
    .restart local v4    # "x1":Ljava/lang/Object;
    .restart local v5    # "x2":Ljava/lang/Object;
    :cond_bb
    :goto_bb
    invoke-static {v4, v5}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 122
    :cond_c0
    :goto_c0
    return v1

    .line 108
    .end local v2    # "pair1":Lgnu/lists/Pair;
    .end local v3    # "pair2":Lgnu/lists/Pair;
    .end local v4    # "x1":Ljava/lang/Object;
    .end local v5    # "x2":Ljava/lang/Object;
    :cond_c1
    :goto_c1
    return v1

    .line 129
    :cond_c2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 32
    :cond_c7
    :goto_c7
    return v1
.end method

.method public static numberEquals(Ljava/lang/Number;Ljava/lang/Number;)Z
    .registers 5
    .param p0, "num1"    # Ljava/lang/Number;
    .param p1, "num2"    # Ljava/lang/Number;

    .line 20
    invoke-static {p0}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v0

    .line 21
    .local v0, "exact1":Z
    invoke-static {p1}, Lgnu/kawa/functions/Arithmetic;->isExact(Ljava/lang/Number;)Z

    move-result v1

    .line 22
    .local v1, "exact2":Z
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    .line 23
    invoke-static {p0, p1}, Lgnu/kawa/functions/NumberCompare;->$Eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 24
    :cond_11
    if-ne v0, v1, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return v2
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lgnu/kawa/functions/IsEqual;->language:Lgnu/expr/Language;

    invoke-static {p1, p2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

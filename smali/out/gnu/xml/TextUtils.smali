.class public Lgnu/xml/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "node"    # Ljava/lang/Object;

    .line 12
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_20

    if-nez p0, :cond_7

    goto :goto_20

    .line 14
    :cond_7
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_1a

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 17
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-static {p0, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 15
    .end local v0    # "sbuf":Ljava/lang/StringBuffer;
    :cond_1a
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 13
    :cond_20
    :goto_20
    const-string v0, ""

    return-object v0
.end method

.method public static replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "collapse"    # Z

    .line 98
    const/4 v0, 0x0

    .line 102
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 105
    .local v1, "len":I
    move v2, p1

    .line 106
    .local v2, "prevSpace":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_7f

    .line 108
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 109
    .local v3, "ch":C
    const/16 v5, 0x20

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v5, :cond_17

    const/4 v8, 0x1

    goto :goto_27

    :cond_17
    const/16 v8, 0x9

    if-eq v3, v8, :cond_26

    const/16 v8, 0xd

    if-eq v3, v8, :cond_26

    const/16 v8, 0xa

    if-ne v3, v8, :cond_24

    goto :goto_26

    :cond_24
    const/4 v8, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v8, 0x2

    .line 111
    .local v8, "isSpace":I
    :goto_27
    if-nez v0, :cond_53

    if-eq v8, v6, :cond_37

    if-ne v8, v7, :cond_31

    if-lez v2, :cond_31

    if-nez p1, :cond_37

    :cond_31
    if-ne v8, v7, :cond_53

    if-ne v4, v1, :cond_53

    if-eqz p1, :cond_53

    .line 117
    :cond_37
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    .line 121
    if-lez v2, :cond_42

    add-int/lit8 v9, v4, -0x2

    goto :goto_44

    :cond_42
    add-int/lit8 v9, v4, -0x1

    .line 122
    .local v9, "k":I
    :goto_44
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_45
    if-ge v10, v9, :cond_51

    .line 123
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    .line 124
    .end local v10    # "j":I
    :cond_51
    const/16 v3, 0x20

    .line 126
    .end local v9    # "k":I
    :cond_53
    if-eqz p1, :cond_78

    .line 128
    if-lez v2, :cond_66

    if-nez v8, :cond_66

    .line 130
    if-eqz v0, :cond_64

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_64

    .line 131
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    :cond_64
    const/4 v2, 0x0

    goto :goto_74

    .line 134
    :cond_66
    if-eq v8, v6, :cond_73

    if-ne v8, v7, :cond_6d

    if-lez v2, :cond_6d

    goto :goto_73

    .line 136
    :cond_6d
    if-lez v8, :cond_71

    .line 137
    const/4 v2, 0x1

    goto :goto_74

    .line 139
    :cond_71
    const/4 v2, 0x0

    goto :goto_74

    .line 135
    :cond_73
    :goto_73
    const/4 v2, 0x2

    .line 140
    :goto_74
    if-lez v2, :cond_78

    .line 141
    move v3, v4

    goto :goto_7

    .line 143
    :cond_78
    if-eqz v0, :cond_7d

    .line 144
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .end local v3    # "ch":C
    .end local v8    # "isSpace":I
    :cond_7d
    move v3, v4

    goto :goto_7

    .line 146
    .end local v4    # "i":I
    :cond_7f
    if-eqz v0, :cond_86

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 149
    :cond_86
    return-object p0
.end method

.method public static stringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0, "node"    # Ljava/lang/Object;

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 24
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_2f

    .line 26
    move-object v1, p0

    check-cast v1, Lgnu/lists/TreeList;

    .line 27
    .local v1, "tlist":Lgnu/lists/TreeList;
    const/4 v2, 0x0

    .line 30
    .local v2, "index":I
    :goto_f
    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v3

    .line 31
    .local v3, "kind":I
    if-nez v3, :cond_17

    .line 32
    nop

    .line 39
    .end local v1    # "tlist":Lgnu/lists/TreeList;
    .end local v2    # "index":I
    .end local v3    # "kind":I
    goto :goto_32

    .line 33
    .restart local v1    # "tlist":Lgnu/lists/TreeList;
    .restart local v2    # "index":I
    .restart local v3    # "kind":I
    :cond_17
    const/16 v4, 0x20

    if-ne v3, v4, :cond_23

    .line 34
    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    goto :goto_2a

    .line 36
    :cond_23
    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->posToDataIndex(I)I

    move-result v4

    invoke-virtual {v1, v4, v0}, Lgnu/lists/TreeList;->stringValue(ILjava/lang/StringBuffer;)I

    .line 37
    :goto_2a
    invoke-virtual {v1, v2}, Lgnu/lists/TreeList;->nextPos(I)I

    move-result v2

    .line 38
    .end local v3    # "kind":I
    goto :goto_f

    .line 41
    .end local v1    # "tlist":Lgnu/lists/TreeList;
    .end local v2    # "index":I
    :cond_2f
    invoke-static {p0, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 42
    :goto_32
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .registers 5
    .param p0, "node"    # Ljava/lang/Object;
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 47
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_15

    .line 49
    move-object v0, p0

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 50
    .local v0, "pos":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    .line 51
    .local v1, "tlist":Lgnu/xml/NodeTree;
    iget v2, v0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->posToDataIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lgnu/xml/NodeTree;->stringValue(ILjava/lang/StringBuffer;)I

    .line 52
    return-void

    .line 54
    .end local v0    # "pos":Lgnu/kawa/xml/KNode;
    .end local v1    # "tlist":Lgnu/xml/NodeTree;
    :cond_15
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_21

    .line 55
    move-object v0, p0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 56
    :cond_21
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_3a

    instance-of v0, p0, Lgnu/math/DFloNum;

    if-eqz v0, :cond_2a

    goto :goto_3a

    .line 58
    :cond_2a
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_45

    .line 59
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object p0

    goto :goto_45

    .line 57
    :cond_3a
    :goto_3a
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object p0

    .line 60
    :cond_45
    :goto_45
    if-eqz p0, :cond_4e

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_4e

    .line 61
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 62
    :cond_4e
    return-void
.end method

.method public static textValue(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 6
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 66
    if-eqz p0, :cond_48

    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_48

    .line 69
    :cond_10
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 70
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .local v0, "str":Ljava/lang/String;
    goto :goto_44

    .line 73
    .end local v0    # "str":Ljava/lang/String;
    :cond_18
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 74
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-eqz v1, :cond_3c

    .line 76
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    invoke-virtual {v1}, Lgnu/mapping/Values;->getValues()[Ljava/lang/Object;

    move-result-object v1

    .line 77
    .local v1, "vals":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    array-length v3, v1

    if-ge v2, v3, :cond_3b

    .line 79
    if-lez v2, :cond_33

    .line 80
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    :cond_33
    aget-object v3, v1, v2

    invoke-static {v3, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 83
    .end local v1    # "vals":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_3b
    goto :goto_3f

    .line 85
    :cond_3c
    invoke-static {p0, v0}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 86
    :goto_3f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 88
    .local v0, "str":Ljava/lang/String;
    :goto_44
    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 89
    return-void

    .line 67
    .end local v0    # "str":Ljava/lang/String;
    :cond_48
    :goto_48
    return-void
.end method

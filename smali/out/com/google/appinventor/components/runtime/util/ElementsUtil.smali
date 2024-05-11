.class public Lcom/google/appinventor/components/runtime/util/ElementsUtil;
.super Ljava/lang/Object;
.source "ElementsUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static elements(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 7
    .param p0, "itemList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "componentName"    # Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "objects":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_32

    .line 116
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 117
    :cond_11
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Items passed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be Strings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v1    # "i":I
    :cond_32
    return-object p0
.end method

.method public static elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 3
    .param p0, "itemString"    # Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 24
    .local v0, "items":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 25
    const-string v1, " *, *"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    .line 28
    :cond_17
    return-object v0
.end method

.method public static elementsListFromString(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p0, "itemString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 59
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "words":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 61
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1c

    .line 62
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1c
    return-object v0
.end method

.method public static elementsStrings(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "itemList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "componentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "objects":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_32

    .line 40
    aget-object v2, v0, v1

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 41
    :cond_11
    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Items passed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must be Strings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 46
    .end local v1    # "i":I
    :cond_32
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .line 47
    .local v1, "strings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .local v2, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v2
.end method

.method public static makeYailListFromList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .line 73
    .local p0, "stringItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 74
    :cond_9
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 73
    :cond_e
    :goto_e
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public static selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I
    .registers 3
    .param p0, "index"    # I
    .param p1, "items"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 126
    if-lez p0, :cond_a

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-le p0, v0, :cond_9

    goto :goto_a

    .line 129
    :cond_9
    return p0

    .line 127
    :cond_a
    :goto_a
    const/4 v0, 0x0

    return v0
.end method

.method public static selectionIndexInStringList(ILjava/util/List;)I
    .registers 3
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 78
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-lt p0, v0, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_a

    goto :goto_b

    .line 81
    :cond_a
    return p0

    .line 79
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method public static setSelectedIndexFromValue(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "items"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 148
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 149
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 146
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static setSelectedIndexFromValueInStringList(Ljava/lang/String;Ljava/util/List;)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 97
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 100
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 97
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static setSelectionFromIndex(ILcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I
    .param p1, "items"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 134
    if-eqz p0, :cond_10

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-le p0, v0, :cond_9

    goto :goto_10

    .line 138
    :cond_9
    add-int/lit8 v0, p0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 135
    :cond_10
    :goto_10
    const-string v0, ""

    return-object v0
.end method

.method public static setSelectionFromIndexInStringList(ILjava/util/List;)Ljava/lang/String;
    .registers 3
    .param p0, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 86
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-lt p0, v0, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le p0, v0, :cond_a

    goto :goto_13

    .line 89
    :cond_a
    add-int/lit8 v0, p0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 87
    :cond_13
    :goto_13
    const-string v0, ""

    return-object v0
.end method

.method public static toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 156
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

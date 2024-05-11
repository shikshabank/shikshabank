.class public abstract Lgnu/kawa/util/AbstractHashTable;
.super Ljava/util/AbstractMap;
.source "AbstractHashTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entry::",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_INITIAL_SIZE:I = 0x40


# instance fields
.field protected mask:I

.field protected num_bindings:I

.field protected table:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TEntry;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "capacity"    # I

    .line 37
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 38
    const/4 v0, 0x4

    .line 39
    .local v0, "log2Size":I
    :goto_4
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_c

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 41
    :cond_c
    shl-int p1, v1, v0

    .line 42
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 43
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 44
    return-void
.end method


# virtual methods
.method protected abstract allocEntries(I)[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TEntry;"
        }
    .end annotation
.end method

.method public clear()V
    .registers 6

    .line 210
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 211
    .local v0, "t":[Ljava/util/Map$Entry;, "[TEntry;"
    array-length v1, v0

    .local v1, "i":I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_18

    .line 215
    aget-object v2, v0, v1

    .local v2, "e":Ljava/util/Map$Entry;, "TEntry;"
    :goto_9
    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 217
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 218
    .local v4, "next":Ljava/util/Map$Entry;, "TEntry;"
    invoke-virtual {p0, v2, v3}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 219
    move-object v2, v4

    .line 220
    .end local v4    # "next":Ljava/util/Map$Entry;, "TEntry;"
    goto :goto_9

    .line 221
    .end local v2    # "e":Ljava/util/Map$Entry;, "TEntry;"
    :cond_15
    aput-object v3, v0, v1

    goto :goto_3

    .line 223
    .end local v1    # "i":I
    :cond_18
    const/4 v1, 0x0

    iput v1, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 224
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    new-instance v0, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;

    invoke-direct {v0, p0}, Lgnu/kawa/util/AbstractHashTable$AbstractEntrySet;-><init>(Lgnu/kawa/util/AbstractHashTable;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 103
    .local v0, "node":Ljava/util/Map$Entry;, "TEntry;"
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_c

    :cond_8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method protected abstract getEntryHashCode(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)I"
        }
    .end annotation
.end method

.method protected abstract getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;)TEntry;"
        }
    .end annotation
.end method

.method public getNode(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TEntry;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 90
    .local v1, "index":I
    iget-object v2, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v2, v2, v1

    .line 91
    .local v2, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_c
    if-eqz v2, :cond_1a

    .line 93
    invoke-virtual {p0, p1, v0, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 94
    return-object v2

    .line 91
    :cond_15
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_c

    .line 96
    .end local v2    # "node":Ljava/util/Map$Entry;, "TEntry;"
    :cond_1a
    const/4 v2, 0x0

    return-object v2
.end method

.method public hash(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 53
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_8
    return v0
.end method

.method protected hashToIndex(I)I
    .registers 3
    .param p1, "hash"    # I

    .line 60
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr p1, v0

    .line 61
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    and-int/2addr v0, p1

    return v0
.end method

.method protected abstract makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TEntry;"
        }
    .end annotation
.end method

.method protected matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "ITEntry;)Z"
        }
    .end annotation

    .line 67
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p3, "node":Ljava/util/Map$Entry;, "TEntry;"
    invoke-virtual {p0, p3}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v0

    if-ne v0, p2, :cond_12

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method protected matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 76
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    if-eq p1, p2, :cond_d

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v0

    .line 157
    .local v0, "index":I
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v1, v1, v0

    .line 158
    .local v1, "first":Ljava/util/Map$Entry;, "TEntry;"
    move-object v2, v1

    .line 161
    .local v2, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_9
    if-nez v2, :cond_2e

    .line 163
    iget v3, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    iget-object v4, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    array-length v4, v4

    if-lt v3, v4, :cond_21

    .line 165
    invoke-virtual {p0}, Lgnu/kawa/util/AbstractHashTable;->rehash()V

    .line 166
    invoke-virtual {p0, p2}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v0

    .line 167
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v1, v3, v0

    .line 169
    :cond_21
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractHashTable;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 170
    invoke-virtual {p0, v2, v1}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 171
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v2, v3, v0

    .line 172
    const/4 v3, 0x0

    return-object v3

    .line 174
    :cond_2e
    invoke-virtual {p0, p1, p2, v2}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 176
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-interface {v2, p3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v3

    .line 180
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3c
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_9
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected rehash()V
    .registers 13

    .line 108
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 109
    .local v0, "oldTable":[Ljava/util/Map$Entry;, "[TEntry;"
    array-length v1, v0

    .line 110
    .local v1, "oldCapacity":I
    mul-int/lit8 v2, v1, 0x2

    .line 111
    .local v2, "newCapacity":I
    invoke-virtual {p0, v2}, Lgnu/kawa/util/AbstractHashTable;->allocEntries(I)[Ljava/util/Map$Entry;

    move-result-object v3

    .line 112
    .local v3, "newTable":[Ljava/util/Map$Entry;, "[TEntry;"
    add-int/lit8 v4, v2, -0x1

    .line 113
    .local v4, "newMask":I
    iput-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    .line 114
    iput v4, p0, Lgnu/kawa/util/AbstractHashTable;->mask:I

    .line 115
    move v5, v1

    .local v5, "i":I
    :goto_10
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_44

    .line 117
    aget-object v6, v0, v5

    .line 118
    .local v6, "chain":Ljava/util/Map$Entry;, "TEntry;"
    if-eqz v6, :cond_2b

    invoke-virtual {p0, v6}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v7

    if-eqz v7, :cond_2b

    .line 124
    const/4 v7, 0x0

    .line 127
    .local v7, "prev":Ljava/util/Map$Entry;, "TEntry;"
    :cond_1f
    move-object v8, v6

    .line 128
    .local v8, "node":Ljava/util/Map$Entry;, "TEntry;"
    invoke-virtual {p0, v8}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v6

    .line 129
    invoke-virtual {p0, v8, v7}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 130
    move-object v7, v8

    .line 132
    .end local v8    # "node":Ljava/util/Map$Entry;, "TEntry;"
    if-nez v6, :cond_1f

    .line 133
    move-object v6, v7

    .line 136
    .end local v7    # "prev":Ljava/util/Map$Entry;, "TEntry;"
    :cond_2b
    move-object v7, v6

    .local v7, "element":Ljava/util/Map$Entry;, "TEntry;"
    :goto_2c
    if-eqz v7, :cond_43

    .line 138
    invoke-virtual {p0, v7}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v8

    .line 139
    .local v8, "next":Ljava/util/Map$Entry;, "TEntry;"
    invoke-virtual {p0, v7}, Lgnu/kawa/util/AbstractHashTable;->getEntryHashCode(Ljava/util/Map$Entry;)I

    move-result v9

    .line 140
    .local v9, "hash":I
    invoke-virtual {p0, v9}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v10

    .line 141
    .local v10, "j":I
    aget-object v11, v3, v10

    .line 142
    .local v11, "head":Ljava/util/Map$Entry;, "TEntry;"
    invoke-virtual {p0, v7, v11}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 143
    aput-object v7, v3, v10

    .line 144
    move-object v7, v8

    .line 145
    .end local v8    # "next":Ljava/util/Map$Entry;, "TEntry;"
    .end local v9    # "hash":I
    .end local v10    # "j":I
    .end local v11    # "head":Ljava/util/Map$Entry;, "TEntry;"
    goto :goto_2c

    .line 146
    .end local v6    # "chain":Ljava/util/Map$Entry;, "TEntry;"
    .end local v7    # "element":Ljava/util/Map$Entry;, "TEntry;"
    :cond_43
    goto :goto_10

    .line 147
    .end local v5    # "i":I
    :cond_44
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lgnu/kawa/util/AbstractHashTable;->hashToIndex(I)I

    move-result v1

    .line 188
    .local v1, "index":I
    const/4 v2, 0x0

    .line 189
    .local v2, "prev":Ljava/util/Map$Entry;, "TEntry;"
    iget-object v3, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aget-object v3, v3, v1

    .line 190
    .local v3, "node":Ljava/util/Map$Entry;, "TEntry;"
    :goto_d
    if-eqz v3, :cond_31

    .line 192
    invoke-virtual {p0, v3}, Lgnu/kawa/util/AbstractHashTable;->getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 193
    .local v4, "next":Ljava/util/Map$Entry;, "TEntry;"
    invoke-virtual {p0, p1, v0, v3}, Lgnu/kawa/util/AbstractHashTable;->matches(Ljava/lang/Object;ILjava/util/Map$Entry;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 195
    if-nez v2, :cond_20

    .line 196
    iget-object v5, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    aput-object v4, v5, v1

    goto :goto_23

    .line 198
    :cond_20
    invoke-virtual {p0, v2, v4}, Lgnu/kawa/util/AbstractHashTable;->setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 199
    :goto_23
    iget v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    .line 200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 202
    :cond_2e
    move-object v2, v3

    .line 203
    move-object v3, v4

    .line 204
    .end local v4    # "next":Ljava/util/Map$Entry;, "TEntry;"
    goto :goto_d

    .line 205
    :cond_31
    const/4 v4, 0x0

    return-object v4
.end method

.method protected abstract setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntry;TEntry;)V"
        }
    .end annotation
.end method

.method public size()I
    .registers 2

    .line 228
    .local p0, "this":Lgnu/kawa/util/AbstractHashTable;, "Lgnu/kawa/util/AbstractHashTable<TEntry;TK;TV;>;"
    iget v0, p0, Lgnu/kawa/util/AbstractHashTable;->num_bindings:I

    return v0
.end method

.class public Lgnu/expr/NameLookup;
.super Lgnu/kawa/util/GeneralHashTable;
.source "NameLookup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgnu/kawa/util/GeneralHashTable<",
        "Ljava/lang/Object;",
        "Lgnu/expr/Declaration;",
        ">;"
    }
.end annotation


# static fields
.field static final KEY:Lgnu/mapping/Symbol;


# instance fields
.field language:Lgnu/expr/Language;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-string v0, "<current-NameLookup>"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Language;)V
    .registers 2
    .param p1, "language"    # Lgnu/expr/Language;

    .line 20
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    .line 22
    return-void
.end method

.method public static getInstance(Lgnu/mapping/Environment;Lgnu/expr/Language;)Lgnu/expr/NameLookup;
    .registers 5
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "language"    # Lgnu/expr/Language;

    .line 33
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v0

    .line 34
    .local v0, "loc":Lgnu/mapping/Location;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/NameLookup;

    .line 35
    .local v1, "nl":Lgnu/expr/NameLookup;
    if-nez v1, :cond_19

    .line 37
    new-instance v2, Lgnu/expr/NameLookup;

    invoke-direct {v2, p1}, Lgnu/expr/NameLookup;-><init>(Lgnu/expr/Language;)V

    move-object v1, v2

    .line 38
    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_1c

    .line 41
    :cond_19
    invoke-virtual {v1, p1}, Lgnu/expr/NameLookup;->setLanguage(Lgnu/expr/Language;)V

    .line 42
    :goto_1c
    return-object v1
.end method

.method public static setInstance(Lgnu/mapping/Environment;Lgnu/expr/NameLookup;)V
    .registers 4
    .param p0, "env"    # Lgnu/mapping/Environment;
    .param p1, "instance"    # Lgnu/expr/NameLookup;

    .line 47
    if-nez p1, :cond_8

    .line 48
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->remove(Lgnu/mapping/Symbol;)V

    goto :goto_e

    .line 50
    :cond_8
    sget-object v0, Lgnu/expr/NameLookup;->KEY:Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    :goto_e
    return-void
.end method


# virtual methods
.method public getLanguage()Lgnu/expr/Language;
    .registers 2

    .line 16
    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;
    .registers 8
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "namespace"    # I

    .line 143
    invoke-virtual {p0, p1}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 144
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v1

    .line 145
    .local v1, "index":I
    iget-object v2, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v2, [Lgnu/kawa/util/HashNode;

    aget-object v2, v2, v1

    .line 146
    .local v2, "node":Lgnu/kawa/util/HashNode;
    :goto_e
    if-eqz v2, :cond_2c

    .line 148
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Declaration;

    .line 149
    .local v3, "decl":Lgnu/expr/Declaration;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v4, v3, p2}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 151
    return-object v3

    .line 146
    .end local v3    # "decl":Lgnu/expr/Declaration;
    :cond_29
    iget-object v2, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_e

    .line 153
    .end local v2    # "node":Lgnu/kawa/util/HashNode;
    :cond_2c
    const/4 v2, 0x0

    return-object v2
.end method

.method public lookup(Ljava/lang/Object;Z)Lgnu/expr/Declaration;
    .registers 4
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "function"    # Z

    .line 158
    if-eqz p2, :cond_4

    const/4 v0, 0x2

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, p1, v0}, Lgnu/expr/NameLookup;->lookup(Ljava/lang/Object;I)Lgnu/expr/Declaration;

    move-result-object v0

    return-object v0
.end method

.method public pop(Lgnu/expr/ScopeExp;)V
    .registers 3
    .param p1, "exp"    # Lgnu/expr/ScopeExp;

    .line 103
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 104
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->pop(Lgnu/expr/Declaration;)Z

    .line 104
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 106
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_e
    return-void
.end method

.method public pop(Lgnu/expr/Declaration;)Z
    .registers 10
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 69
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "symbol":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 71
    return v1

    .line 72
    :cond_8
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v2

    .line 73
    .local v2, "hash":I
    const/4 v3, 0x0

    .line 74
    .local v3, "prev":Lgnu/kawa/util/HashNode;
    invoke-virtual {p0, v2}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v4

    .line 75
    .local v4, "index":I
    iget-object v5, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v5, [Lgnu/kawa/util/HashNode;

    aget-object v5, v5, v4

    .line 76
    .local v5, "node":Lgnu/kawa/util/HashNode;
    :goto_17
    if-eqz v5, :cond_36

    .line 78
    iget-object v6, v5, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 79
    .local v6, "next":Lgnu/kawa/util/HashNode;
    invoke-virtual {v5}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p1, :cond_33

    .line 81
    if-nez v3, :cond_2a

    .line 82
    iget-object v1, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v1, [Lgnu/kawa/util/HashNode;

    aput-object v6, v1, v4

    goto :goto_2c

    .line 84
    :cond_2a
    iput-object v6, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 85
    :goto_2c
    iget v1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    iput v1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    .line 86
    return v7

    .line 88
    :cond_33
    move-object v3, v5

    .line 89
    move-object v5, v6

    .line 90
    .end local v6    # "next":Lgnu/kawa/util/HashNode;
    goto :goto_17

    .line 91
    :cond_36
    return v1
.end method

.method public push(Lgnu/expr/Declaration;)V
    .registers 7
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 55
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 56
    .local v0, "symbol":Ljava/lang/Object;
    if-nez v0, :cond_7

    .line 57
    return-void

    .line 58
    :cond_7
    iget v1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/expr/NameLookup;->num_bindings:I

    iget-object v2, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v2, [Lgnu/kawa/util/HashNode;

    array-length v2, v2

    if-lt v1, v2, :cond_17

    .line 59
    invoke-virtual {p0}, Lgnu/expr/NameLookup;->rehash()V

    .line 60
    :cond_17
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 61
    .local v1, "hash":I
    invoke-virtual {p0, v0, v1, p1}, Lgnu/expr/NameLookup;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    .line 62
    .local v2, "node":Lgnu/kawa/util/HashNode;
    invoke-virtual {p0, v1}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v3

    .line 63
    .local v3, "index":I
    iget-object v4, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/HashNode;

    aget-object v4, v4, v3

    iput-object v4, v2, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 64
    iget-object v4, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/HashNode;

    aput-object v2, v4, v3

    .line 65
    return-void
.end method

.method public push(Lgnu/expr/ScopeExp;)V
    .registers 3
    .param p1, "exp"    # Lgnu/expr/ScopeExp;

    .line 96
    invoke-virtual {p1}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 97
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_e

    .line 98
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->push(Lgnu/expr/Declaration;)V

    .line 97
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 99
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_e
    return-void
.end method

.method public removeSubsumed(Lgnu/expr/Declaration;)V
    .registers 10
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 113
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "symbol":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/expr/NameLookup;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 115
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lgnu/expr/NameLookup;->hashToIndex(I)I

    move-result v2

    .line 116
    .local v2, "index":I
    const/4 v3, 0x0

    .line 117
    .local v3, "prev":Lgnu/kawa/util/HashNode;
    iget-object v4, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v4, [Lgnu/kawa/util/HashNode;

    aget-object v4, v4, v2

    .local v4, "node":Lgnu/kawa/util/HashNode;
    :goto_13
    if-eqz v4, :cond_34

    .line 119
    iget-object v5, v4, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    .line 120
    .local v5, "next":Lgnu/kawa/util/HashNode;
    invoke-virtual {v4}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Declaration;

    .line 121
    .local v6, "ndecl":Lgnu/expr/Declaration;
    if-eq v6, p1, :cond_31

    invoke-virtual {p0, p1, v6}, Lgnu/expr/NameLookup;->subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 123
    if-nez v3, :cond_2e

    .line 124
    iget-object v7, p0, Lgnu/expr/NameLookup;->table:[Ljava/util/Map$Entry;

    check-cast v7, [Lgnu/kawa/util/HashNode;

    aput-object v5, v7, v2

    goto :goto_32

    .line 126
    :cond_2e
    iput-object v5, v3, Lgnu/kawa/util/HashNode;->next:Lgnu/kawa/util/HashNode;

    goto :goto_32

    .line 129
    :cond_31
    move-object v3, v4

    .line 130
    :goto_32
    move-object v4, v5

    .line 131
    .end local v5    # "next":Lgnu/kawa/util/HashNode;
    .end local v6    # "ndecl":Lgnu/expr/Declaration;
    goto :goto_13

    .line 132
    .end local v4    # "node":Lgnu/kawa/util/HashNode;
    :cond_34
    return-void
.end method

.method public setLanguage(Lgnu/expr/Language;)V
    .registers 2
    .param p1, "language"    # Lgnu/expr/Language;

    .line 17
    iput-object p1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    return-void
.end method

.method protected subsumedBy(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)Z
    .registers 5
    .param p1, "decl"    # Lgnu/expr/Declaration;
    .param p2, "other"    # Lgnu/expr/Declaration;

    .line 137
    invoke-virtual {p1}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v0, p1}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v0

    iget-object v1, p0, Lgnu/expr/NameLookup;->language:Lgnu/expr/Language;

    invoke-virtual {v1, p2}, Lgnu/expr/Language;->getNamespaceOf(Lgnu/expr/Declaration;)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

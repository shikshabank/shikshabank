.class public Lgnu/kawa/lispexpr/LispPackage;
.super Lgnu/mapping/Namespace;
.source "LispPackage.java"


# instance fields
.field exported:Lgnu/mapping/Namespace;

.field imported:Lgnu/kawa/lispexpr/NamespaceUse;

.field importing:Lgnu/kawa/lispexpr/NamespaceUse;

.field shadowingSymbols:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 15
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    return-void
.end method

.method private addToShadowingSymbols(Lgnu/mapping/Symbol;)V
    .registers 5
    .param p1, "sym"    # Lgnu/mapping/Symbol;

    .line 99
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    .local v0, "s":Ljava/lang/Object;
    :goto_2
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v0, v1, :cond_15

    .line 101
    move-object v1, v0

    check-cast v1, Lgnu/lists/Pair;

    .line 102
    .local v1, "p":Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_10

    .line 103
    return-void

    .line 104
    :cond_10
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v0

    .line 105
    .end local v1    # "p":Lgnu/lists/Pair;
    goto :goto_2

    .line 106
    .end local v0    # "s":Ljava/lang/Object;
    :cond_15
    new-instance v0, Lgnu/lists/Pair;

    iget-object v1, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    invoke-direct {v0, p1, v1}, Lgnu/lists/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    .line 107
    return-void
.end method

.method private removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z
    .registers 6
    .param p1, "sym"    # Lgnu/mapping/Symbol;

    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "prev":Lgnu/lists/Pair;
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    .local v1, "s":Ljava/lang/Object;
    :goto_3
    sget-object v2, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v1, v2, :cond_23

    .line 114
    move-object v2, v1

    check-cast v2, Lgnu/lists/Pair;

    .line 115
    .local v2, "p":Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .line 116
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_21

    .line 118
    if-nez v0, :cond_1c

    .line 119
    move-object v3, v1

    check-cast v3, Lgnu/lists/LList;

    iput-object v3, p0, Lgnu/kawa/lispexpr/LispPackage;->shadowingSymbols:Lgnu/lists/LList;

    goto :goto_1f

    .line 121
    :cond_1c
    invoke-virtual {v0, v1}, Lgnu/lists/Pair;->setCdr(Ljava/lang/Object;)V

    .line 122
    :goto_1f
    const/4 v3, 0x1

    return v3

    .line 124
    :cond_21
    move-object v0, v2

    .line 125
    .end local v2    # "p":Lgnu/lists/Pair;
    goto :goto_3

    .line 126
    .end local v1    # "s":Ljava/lang/Object;
    :cond_23
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public isPresent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "create"    # Z

    .line 43
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 44
    .local v0, "sym":Lgnu/mapping/Symbol;
    if-eqz v0, :cond_a

    .line 45
    return-object v0

    .line 46
    :cond_a
    invoke-virtual {p0, p1, p2}, Lgnu/kawa/lispexpr/LispPackage;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_11

    .line 48
    return-object v0

    .line 51
    :cond_11
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->imported:Lgnu/kawa/lispexpr/NamespaceUse;

    .local v2, "used":Lgnu/kawa/lispexpr/NamespaceUse;
    :goto_13
    if-eqz v2, :cond_1f

    .line 54
    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1c

    .line 56
    return-object v0

    .line 52
    :cond_1c
    iget-object v2, v2, Lgnu/kawa/lispexpr/NamespaceUse;->nextImported:Lgnu/kawa/lispexpr/NamespaceUse;

    goto :goto_13

    .line 59
    .end local v2    # "used":Lgnu/kawa/lispexpr/NamespaceUse;
    :cond_1f
    if-eqz p3, :cond_2b

    .line 60
    new-instance v1, Lgnu/mapping/Symbol;

    invoke-direct {v1, p0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lgnu/kawa/lispexpr/LispPackage;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1

    .line 62
    :cond_2b
    const/4 v1, 0x0

    return-object v1
.end method

.method public lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "intern"    # Z

    .line 67
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 68
    .local v0, "sym":Lgnu/mapping/Symbol;
    if-nez v0, :cond_d

    .line 69
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 70
    :cond_d
    return-object v0
.end method

.method public shadow(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 133
    .local v0, "sym":Lgnu/mapping/Symbol;
    invoke-direct {p0, v0}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    .line 134
    return-void
.end method

.method public shadowingImport(Lgnu/mapping/Symbol;)V
    .registers 6
    .param p1, "symbol"    # Lgnu/mapping/Symbol;

    .line 138
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 140
    .local v1, "hash":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lgnu/kawa/lispexpr/LispPackage;->lookupPresent(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    .line 141
    .local v2, "old":Lgnu/mapping/Symbol;
    if-eqz v2, :cond_18

    if-eq v2, p1, :cond_18

    .line 142
    invoke-virtual {p0, v2}, Lgnu/kawa/lispexpr/LispPackage;->unintern(Lgnu/mapping/Symbol;)Z

    .line 143
    :cond_18
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->addToShadowingSymbols(Lgnu/mapping/Symbol;)V

    .line 144
    return-void
.end method

.method public unintern(Lgnu/mapping/Symbol;)Z
    .registers 6
    .param p1, "symbol"    # Lgnu/mapping/Symbol;

    .line 80
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 82
    .local v1, "hash":I
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-ne v2, p1, :cond_17

    .line 83
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispPackage;->exported:Lgnu/mapping/Namespace;

    invoke-virtual {v2, p1}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    goto :goto_20

    .line 84
    :cond_17
    invoke-super {p0, v0, v1, v3}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v2

    if-ne v2, p1, :cond_29

    .line 85
    invoke-super {p0, p1}, Lgnu/mapping/Namespace;->remove(Lgnu/mapping/Symbol;)Z

    .line 88
    :goto_20
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lgnu/mapping/Symbol;->setNamespace(Lgnu/mapping/Namespace;)V

    .line 89
    invoke-direct {p0, p1}, Lgnu/kawa/lispexpr/LispPackage;->removeFromShadowingSymbols(Lgnu/mapping/Symbol;)Z

    .line 94
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_29
    return v3
.end method

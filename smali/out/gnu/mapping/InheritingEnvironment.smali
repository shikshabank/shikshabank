.class public Lgnu/mapping/InheritingEnvironment;
.super Lgnu/mapping/SimpleEnvironment;
.source "InheritingEnvironment.java"


# instance fields
.field baseTimestamp:I

.field inherited:[Lgnu/mapping/Environment;

.field namespaceMap:[Lgnu/mapping/Namespace;

.field numInherited:I

.field propertyMap:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Environment;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lgnu/mapping/Environment;

    .line 16
    invoke-direct {p0, p1}, Lgnu/mapping/SimpleEnvironment;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2}, Lgnu/mapping/InheritingEnvironment;->addParent(Lgnu/mapping/Environment;)V

    .line 18
    instance-of v0, p2, Lgnu/mapping/SimpleEnvironment;

    if-eqz v0, :cond_18

    .line 20
    move-object v0, p2

    check-cast v0, Lgnu/mapping/SimpleEnvironment;

    iget v1, v0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    move v0, v1

    .line 21
    .local v0, "timestamp":I
    iput v0, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    .line 22
    iput v0, p0, Lgnu/mapping/InheritingEnvironment;->currentTimestamp:I

    .line 24
    .end local v0    # "timestamp":I
    :cond_18
    return-void
.end method


# virtual methods
.method public addParent(Lgnu/mapping/Environment;)V
    .registers 6
    .param p1, "env"    # Lgnu/mapping/Environment;

    .line 31
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-nez v0, :cond_a

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lgnu/mapping/Environment;

    iput-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    goto :goto_19

    .line 33
    :cond_a
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    array-length v2, v1

    if-gt v0, v2, :cond_19

    .line 35
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lgnu/mapping/Environment;

    .line 37
    .local v2, "newInherited":[Lgnu/mapping/Environment;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v2, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    .line 40
    .end local v2    # "newInherited":[Lgnu/mapping/Environment;
    :cond_19
    :goto_19
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    aput-object p1, v0, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    .line 42
    return-void
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .registers 5

    .line 128
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 129
    .local v0, "it":Lgnu/mapping/LocationEnumeration;
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 130
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    if-eqz v1, :cond_20

    array-length v2, v1

    if-lez v2, :cond_20

    .line 132
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 133
    iput v2, v0, Lgnu/mapping/LocationEnumeration;->index:I

    .line 135
    :cond_20
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .registers 10
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "create"    # Z

    monitor-enter p0

    .line 94
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 95
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v0, :cond_11

    if-nez p4, :cond_f

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_72

    if-eqz v1, :cond_11

    .line 96
    .end local p0    # "this":Lgnu/mapping/InheritingEnvironment;
    :cond_f
    monitor-exit p0

    return-object v0

    .line 97
    :cond_11
    :try_start_11
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x1

    if-eqz v1, :cond_25

    if-eqz p4, :cond_25

    .line 98
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1, p1, p2, p3, v2}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;

    move-result-object v1

    move-object v0, v1

    goto :goto_2a

    .line 100
    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    move-object v0, v1

    .line 102
    :goto_2a
    const/4 v1, 0x0

    if-eqz v0, :cond_6a

    .line 104
    if-eqz p4, :cond_68

    .line 106
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v3

    .line 107
    .local v3, "xloc":Lgnu/mapping/NamedLocation;
    iget v4, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_41

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 108
    invoke-virtual {p0, p1, p2, v3}, Lgnu/mapping/InheritingEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 109
    :cond_41
    iput-object v0, v3, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 110
    iget-object v2, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    sget-object v4, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    if-ne v2, v4, :cond_4e

    .line 111
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v1, v3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_5b

    .line 112
    :cond_4e
    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_59

    .line 113
    sget-object v1, Lgnu/mapping/IndirectableLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    iput-object v1, v3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    goto :goto_5b

    .line 115
    :cond_59
    iput-object v1, v3, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 116
    :goto_5b
    instance-of v1, v3, Lgnu/mapping/SharedLocation;

    if-eqz v1, :cond_66

    .line 117
    move-object v1, v3

    check-cast v1, Lgnu/mapping/SharedLocation;

    iget v2, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    iput v2, v1, Lgnu/mapping/SharedLocation;->timestamp:I
    :try_end_66
    .catchall {:try_start_11 .. :try_end_66} :catchall_72

    .line 118
    :cond_66
    monitor-exit p0

    return-object v3

    .line 121
    .end local v3    # "xloc":Lgnu/mapping/NamedLocation;
    :cond_68
    monitor-exit p0

    return-object v0

    .line 123
    :cond_6a
    if-eqz p4, :cond_70

    :try_start_6c
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_72

    :cond_70
    monitor-exit p0

    return-object v1

    .line 93
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    .end local p1    # "name":Lgnu/mapping/Symbol;
    .end local p2    # "property":Ljava/lang/Object;
    .end local p3    # "hash":I
    .end local p4    # "create":Z
    :catchall_72
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getNumParents()I
    .registers 2

    .line 26
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    return v0
.end method

.method public final getParent(I)Lgnu/mapping/Environment;
    .registers 3
    .param p1, "index"    # I

    .line 27
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .registers 7
    .param p1, "it"    # Lgnu/mapping/LocationEnumeration;

    .line 140
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    if-eqz v0, :cond_55

    .line 144
    :goto_4
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 147
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    :goto_6
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iput-object v0, v1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 148
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    invoke-virtual {v1}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_41

    .line 150
    const/4 v1, 0x0

    iput-object v1, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 151
    iget-object v3, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v3, v3, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v3, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 152
    nop

    .line 162
    iget v3, p1, Lgnu/mapping/LocationEnumeration;->index:I

    add-int/2addr v3, v2

    iput v3, p1, Lgnu/mapping/LocationEnumeration;->index:I

    iget v4, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ne v3, v4, :cond_34

    .line 163
    nop

    .line 166
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    iput-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 167
    iget-object v0, p0, Lgnu/mapping/InheritingEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 168
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->log2Size:I

    shl-int v0, v2, v0

    iput v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    goto :goto_55

    .line 164
    .restart local v0    # "loc":Lgnu/mapping/NamedLocation;
    :cond_34
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lgnu/mapping/Environment;->enumerateAllLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v1

    iput-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    .line 165
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    goto :goto_4

    .line 154
    .restart local v0    # "loc":Lgnu/mapping/NamedLocation;
    :cond_41
    iget-object v1, p1, Lgnu/mapping/LocationEnumeration;->inherited:Lgnu/mapping/LocationEnumeration;

    iget-object v0, v1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 155
    iget-object v1, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    iget-object v3, v0, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Lgnu/mapping/InheritingEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/Location;

    move-result-object v1

    if-ne v1, v0, :cond_52

    .line 157
    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 158
    return v2

    .line 160
    :cond_52
    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_6

    .line 170
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    :cond_55
    :goto_55
    invoke-super {p0, p1}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v0

    return v0
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 6
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 85
    invoke-super {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 86
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 87
    return-object v0

    .line 88
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/InheritingEnvironment;->lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    return-object v1
.end method

.method public lookupInherited(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 10
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v0, v1, :cond_69

    .line 48
    move-object v1, p1

    .line 49
    .local v1, "sym":Lgnu/mapping/Symbol;
    move-object v2, p2

    .line 50
    .local v2, "prop":Ljava/lang/Object;
    iget-object v3, p0, Lgnu/mapping/InheritingEnvironment;->namespaceMap:[Lgnu/mapping/Namespace;

    if-eqz v3, :cond_2d

    array-length v4, v3

    mul-int/lit8 v5, v0, 0x2

    if-le v4, v5, :cond_2d

    .line 52
    mul-int/lit8 v4, v0, 0x2

    aget-object v4, v3, v4

    .line 53
    .local v4, "srcNamespace":Ljava/lang/Object;
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v3, v5

    .line 54
    .local v3, "dstNamespace":Ljava/lang/Object;
    if-nez v4, :cond_1e

    if-eqz v3, :cond_2d

    .line 56
    :cond_1e
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v5

    if-eq v5, v3, :cond_25

    .line 57
    goto :goto_66

    .line 58
    :cond_25
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    .line 61
    .end local v3    # "dstNamespace":Ljava/lang/Object;
    .end local v4    # "srcNamespace":Ljava/lang/Object;
    :cond_2d
    iget-object v3, p0, Lgnu/mapping/InheritingEnvironment;->propertyMap:[Ljava/lang/Object;

    if-eqz v3, :cond_48

    array-length v4, v3

    mul-int/lit8 v5, v0, 0x2

    if-le v4, v5, :cond_48

    .line 63
    mul-int/lit8 v4, v0, 0x2

    aget-object v4, v3, v4

    .line 64
    .local v4, "srcProperty":Ljava/lang/Object;
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v3, v3, v5

    .line 65
    .local v3, "dstProperty":Ljava/lang/Object;
    if-nez v4, :cond_44

    if-eqz v3, :cond_48

    .line 67
    :cond_44
    if-eq p2, v3, :cond_47

    .line 68
    goto :goto_66

    .line 69
    :cond_47
    move-object v2, v4

    .line 72
    .end local v3    # "dstProperty":Ljava/lang/Object;
    .end local v4    # "srcProperty":Ljava/lang/Object;
    :cond_48
    iget-object v3, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1, v2, p3}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v3

    .line 73
    .local v3, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 75
    instance-of v4, v3, Lgnu/mapping/SharedLocation;

    if-eqz v4, :cond_65

    move-object v4, v3

    check-cast v4, Lgnu/mapping/SharedLocation;

    iget v4, v4, Lgnu/mapping/SharedLocation;->timestamp:I

    iget v5, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    if-ge v4, v5, :cond_66

    .line 77
    :cond_65
    return-object v3

    .line 46
    .end local v1    # "sym":Lgnu/mapping/Symbol;
    .end local v2    # "prop":Ljava/lang/Object;
    .end local v3    # "loc":Lgnu/mapping/NamedLocation;
    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 175
    const-string v0, " baseTs:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget v0, p0, Lgnu/mapping/InheritingEnvironment;->baseTimestamp:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget v1, p0, Lgnu/mapping/InheritingEnvironment;->numInherited:I

    if-ge v0, v1, :cond_22

    .line 179
    const-string v1, " base:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v1, p0, Lgnu/mapping/InheritingEnvironment;->inherited:[Lgnu/mapping/Environment;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lgnu/mapping/Environment;->toStringVerbose()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 182
    .end local v0    # "i":I
    :cond_22
    return-void
.end method

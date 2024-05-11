.class public Lgnu/mapping/SimpleEnvironment;
.super Lgnu/mapping/Environment;
.source "SimpleEnvironment.java"


# instance fields
.field currentTimestamp:I

.field log2Size:I

.field private mask:I

.field num_bindings:I

.field sharedTail:Lgnu/mapping/NamedLocation;

.field table:[Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/mapping/SimpleEnvironment;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "capacity"    # I

    .line 52
    invoke-direct {p0}, Lgnu/mapping/Environment;-><init>()V

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 54
    :goto_6
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_12

    .line 55
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    goto :goto_6

    .line 56
    :cond_12
    shl-int p1, v1, v0

    .line 57
    new-array v0, p1, [Lgnu/mapping/NamedLocation;

    iput-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 58
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 60
    new-instance v0, Lgnu/mapping/PlainLocation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lgnu/mapping/SimpleEnvironment;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lgnu/mapping/SimpleEnvironment;->setName(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static getCurrentLocation(Ljava/lang/String;)Lgnu/mapping/Location;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/Environment;->getLocation(Ljava/lang/Object;Z)Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public static lookup_global(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .registers 3
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgnu/mapping/UnboundLocationException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lgnu/mapping/SimpleEnvironment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment;->lookup(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v0

    .line 32
    .local v0, "binding":Lgnu/mapping/Location;
    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 33
    :cond_f
    new-instance v1, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v1, p0}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .registers 11
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "loc"    # Lgnu/mapping/Location;

    .line 182
    instance-of v0, p4, Lgnu/mapping/ThreadLocation;

    if-eqz v0, :cond_12

    move-object v0, p4

    check-cast v0, Lgnu/mapping/ThreadLocation;

    iget-object v0, v0, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    if-ne v0, p2, :cond_12

    .line 184
    move-object v0, p4

    check-cast v0, Lgnu/mapping/ThreadLocation;

    invoke-virtual {v0}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object p4

    .line 185
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 186
    .local v0, "nloc":Lgnu/mapping/NamedLocation;
    if-ne p4, v0, :cond_19

    .line 187
    return-object v0

    .line 188
    :cond_19
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    .line 189
    .local v3, "bound":Z
    :goto_20
    if-nez v3, :cond_26

    .line 190
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 191
    :cond_26
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    const/4 v5, 0x3

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_49

    .line 193
    if-eqz v3, :cond_32

    .line 194
    invoke-virtual {v0}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    .line 198
    :cond_32
    if-eqz v3, :cond_3b

    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_49

    goto :goto_46

    :cond_3b
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_49

    invoke-virtual {p4}, Lgnu/mapping/Location;->isBound()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 201
    :goto_46
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 203
    :cond_49
    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5f

    .line 204
    move-object v1, p0

    check-cast v1, Lgnu/mapping/InheritingEnvironment;

    invoke-virtual {v1, v2}, Lgnu/mapping/InheritingEnvironment;->getParent(I)Lgnu/mapping/Environment;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v1, p1, p2, p3, p4}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v1

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    goto :goto_61

    .line 206
    :cond_5f
    iput-object p4, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 207
    :goto_61
    sget-object v1, Lgnu/mapping/IndirectableLocation;->INDIRECT_FLUIDS:Ljava/lang/Object;

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 208
    return-object v0
.end method

.method public addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;
    .registers 6
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "loc"    # Lgnu/mapping/Location;

    .line 175
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/SimpleEnvironment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;ILgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    move-result-object v0

    return-object v0
.end method

.method protected addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 94
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 95
    .local v0, "index":I
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 96
    .local v1, "loc":Lgnu/mapping/NamedLocation;
    const/4 v2, 0x0

    iput-object v2, v1, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 97
    sget-object v2, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    iput-object v2, v1, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 98
    return-object v1
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;
    .registers 9
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "newValue"    # Ljava/lang/Object;

    .line 137
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 138
    .local v0, "index":I
    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v1, v1, v0

    .line 139
    .local v1, "first":Lgnu/mapping/NamedLocation;
    move-object v2, v1

    .line 142
    .local v2, "loc":Lgnu/mapping/NamedLocation;
    :goto_8
    if-nez v2, :cond_12

    .line 145
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v2

    .line 146
    invoke-virtual {v2, p4}, Lgnu/mapping/NamedLocation;->set(Ljava/lang/Object;)V

    .line 147
    return-object v2

    .line 149
    :cond_12
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 151
    invoke-virtual {v2}, Lgnu/mapping/NamedLocation;->isBound()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanDefine()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2e

    :cond_25
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 152
    :cond_2b
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 153
    :cond_2e
    :goto_2e
    const/4 v3, 0x0

    iput-object v3, v2, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 154
    iput-object p4, v2, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 155
    return-object v2

    .line 157
    :cond_34
    iget-object v2, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_8
.end method

.method public define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 163
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 164
    .local v0, "hash":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lgnu/mapping/SimpleEnvironment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;ILjava/lang/Object;)Lgnu/mapping/NamedLocation;

    .line 165
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2

    .line 326
    new-instance v0, Lgnu/mapping/EnvironmentMappings;

    invoke-direct {v0, p0}, Lgnu/mapping/EnvironmentMappings;-><init>(Lgnu/mapping/SimpleEnvironment;)V

    return-object v0
.end method

.method public enumerateAllLocations()Lgnu/mapping/LocationEnumeration;
    .registers 2

    .line 277
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->enumerateLocations()Lgnu/mapping/LocationEnumeration;

    move-result-object v0

    return-object v0
.end method

.method public enumerateLocations()Lgnu/mapping/LocationEnumeration;
    .registers 5

    .line 269
    new-instance v0, Lgnu/mapping/LocationEnumeration;

    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    invoke-direct {v0, v1, v2}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 270
    .local v0, "it":Lgnu/mapping/LocationEnumeration;
    iput-object p0, v0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    .line 271
    return-object v0
.end method

.method public declared-synchronized getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;IZ)Lgnu/mapping/NamedLocation;
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I
    .param p4, "create"    # Z

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_14

    .line 84
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    if-eqz v0, :cond_9

    .line 85
    monitor-exit p0

    return-object v0

    .line 86
    :cond_9
    if-nez p4, :cond_e

    .line 87
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 88
    :cond_e
    :try_start_e
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->addUnboundLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v1

    .line 82
    .end local v0    # "loc":Lgnu/mapping/NamedLocation;
    .end local p0    # "this":Lgnu/mapping/SimpleEnvironment;
    .end local p1    # "name":Lgnu/mapping/Symbol;
    .end local p2    # "property":Ljava/lang/Object;
    .end local p3    # "hash":I
    .end local p4    # "create":Z
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z
    .registers 5
    .param p1, "it"    # Lgnu/mapping/LocationEnumeration;

    .line 284
    :goto_0
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    .line 286
    const/4 v0, 0x0

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 287
    iget v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    sub-int/2addr v0, v1

    iput v0, p1, Lgnu/mapping/LocationEnumeration;->index:I

    if-gez v0, :cond_11

    .line 288
    const/4 v0, 0x0

    return v0

    .line 289
    :cond_11
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p1, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v2

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 290
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v0, :cond_1e

    .line 291
    goto :goto_0

    .line 293
    :cond_1e
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    if-nez v0, :cond_2b

    .line 294
    iget-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v0, p1, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 298
    :cond_2b
    return v1
.end method

.method public lookup(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 5
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lgnu/mapping/SimpleEnvironment;->lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;

    move-result-object v0

    return-object v0
.end method

.method public lookupDirect(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 70
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 71
    .local v0, "index":I
    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v1, v1, v0

    .line 72
    .local v1, "loc":Lgnu/mapping/NamedLocation;
    :goto_7
    if-eqz v1, :cond_13

    .line 74
    invoke-virtual {v1, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 75
    return-object v1

    .line 72
    :cond_10
    iget-object v1, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_7

    .line 77
    .end local v1    # "loc":Lgnu/mapping/NamedLocation;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method newEntry(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/NamedLocation;
    .registers 8
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .line 124
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/SimpleEnvironment;->newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;

    move-result-object v0

    .line 125
    .local v0, "loc":Lgnu/mapping/NamedLocation;
    iget-object v1, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v1, v1, p3

    .line 126
    .local v1, "first":Lgnu/mapping/NamedLocation;
    if-nez v1, :cond_d

    iget-object v2, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    iput-object v2, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 127
    iget-object v2, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aput-object v0, v2, p3

    .line 128
    iget v3, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 129
    array-length v2, v2

    if-lt v3, v2, :cond_20

    .line 130
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->rehash()V

    .line 131
    :cond_20
    return-object v0
.end method

.method newLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;)Lgnu/mapping/NamedLocation;
    .registers 5
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;

    .line 116
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_e

    .line 117
    new-instance v0, Lgnu/mapping/SharedLocation;

    iget v1, p0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-direct {v0, p1, p2, v1}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    return-object v0

    .line 119
    :cond_e
    new-instance v0, Lgnu/mapping/PlainLocation;

    invoke-direct {v0, p1, p2}, Lgnu/mapping/PlainLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    return-object v0
.end method

.method public put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .param p1, "key"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 103
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 104
    .local v0, "create":Z
    :goto_9
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/SimpleEnvironment;->getLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Z)Lgnu/mapping/NamedLocation;

    move-result-object v1

    .line 105
    .local v1, "loc":Lgnu/mapping/Location;
    if-eqz v1, :cond_46

    .line 107
    invoke-virtual {v1}, Lgnu/mapping/Location;->isConstant()Z

    move-result v2

    if-nez v2, :cond_19

    .line 110
    invoke-virtual {v1, p3}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 108
    :cond_19
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to modify read-only location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    :cond_46
    new-instance v2, Lgnu/mapping/UnboundLocationException;

    invoke-direct {v2, p1}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 309
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/SimpleEnvironment;->setSymbol(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Environment;

    .line 316
    .local v1, "env":Lgnu/mapping/Environment;
    if-eqz v1, :cond_f

    .line 317
    return-object v1

    .line 318
    :cond_f
    sget-object v2, Lgnu/mapping/SimpleEnvironment;->envTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method

.method protected redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V
    .registers 7
    .param p1, "name"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "loc"    # Lgnu/mapping/Location;

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prohibited define/redefine of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method rehash()V
    .registers 14

    .line 213
    iget-object v0, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 214
    .local v0, "oldTable":[Lgnu/mapping/NamedLocation;
    array-length v1, v0

    .line 215
    .local v1, "oldCapacity":I
    mul-int/lit8 v2, v1, 0x2

    .line 216
    .local v2, "newCapacity":I
    new-array v3, v2, [Lgnu/mapping/NamedLocation;

    .line 217
    .local v3, "newTable":[Lgnu/mapping/NamedLocation;
    add-int/lit8 v4, v2, -0x1

    .line 218
    .local v4, "newMask":I
    move v5, v1

    .local v5, "i":I
    :goto_a
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_34

    .line 220
    aget-object v6, v0, v5

    .line 221
    .local v6, "element":Lgnu/mapping/NamedLocation;
    :goto_10
    if-eqz v6, :cond_33

    iget-object v7, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    if-eq v6, v7, :cond_33

    .line 223
    iget-object v7, v6, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 224
    .local v7, "next":Lgnu/mapping/NamedLocation;
    iget-object v8, v6, Lgnu/mapping/NamedLocation;->name:Lgnu/mapping/Symbol;

    .line 225
    .local v8, "name":Lgnu/mapping/Symbol;
    iget-object v9, v6, Lgnu/mapping/NamedLocation;->property:Ljava/lang/Object;

    .line 226
    .local v9, "property":Ljava/lang/Object;
    invoke-virtual {v8}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v10

    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    xor-int/2addr v10, v11

    .line 227
    .local v10, "hash":I
    and-int v11, v10, v4

    .line 228
    .local v11, "j":I
    aget-object v12, v3, v11

    .line 229
    .local v12, "head":Lgnu/mapping/NamedLocation;
    if-nez v12, :cond_2d

    .line 230
    iget-object v12, p0, Lgnu/mapping/SimpleEnvironment;->sharedTail:Lgnu/mapping/NamedLocation;

    .line 231
    :cond_2d
    iput-object v12, v6, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 232
    aput-object v6, v3, v11

    .line 233
    move-object v6, v7

    .line 234
    .end local v7    # "next":Lgnu/mapping/NamedLocation;
    .end local v8    # "name":Lgnu/mapping/Symbol;
    .end local v9    # "property":Ljava/lang/Object;
    .end local v10    # "hash":I
    .end local v11    # "j":I
    .end local v12    # "head":Lgnu/mapping/NamedLocation;
    goto :goto_10

    .end local v6    # "element":Lgnu/mapping/NamedLocation;
    :cond_33
    goto :goto_a

    .line 236
    .end local v5    # "i":I
    :cond_34
    iput-object v3, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    .line 237
    iget v5, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    .line 238
    iput v4, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    .line 239
    return-void
.end method

.method public size()I
    .registers 2

    .line 21
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    return v0
.end method

.method protected toStringBase(Ljava/lang/StringBuffer;)V
    .registers 2
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 338
    return-void
.end method

.method public toStringVerbose()Ljava/lang/String;
    .registers 4

    .line 332
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 333
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0}, Lgnu/mapping/SimpleEnvironment;->toStringBase(Ljava/lang/StringBuffer;)V

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#<environment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ts:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgnu/mapping/SimpleEnvironment;->currentTimestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unlink(Lgnu/mapping/Symbol;Ljava/lang/Object;I)Lgnu/mapping/Location;
    .registers 9
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 243
    iget v0, p0, Lgnu/mapping/SimpleEnvironment;->mask:I

    and-int/2addr v0, p3

    .line 244
    .local v0, "index":I
    const/4 v1, 0x0

    .line 245
    .local v1, "prev":Lgnu/mapping/NamedLocation;
    iget-object v2, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aget-object v2, v2, v0

    .line 246
    .local v2, "loc":Lgnu/mapping/NamedLocation;
    :goto_8
    if-eqz v2, :cond_2e

    .line 248
    iget-object v3, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 249
    .local v3, "next":Lgnu/mapping/NamedLocation;
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/NamedLocation;->matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 251
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getCanRedefine()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 252
    invoke-virtual {p0, p1, p2, v2}, Lgnu/mapping/SimpleEnvironment;->redefineError(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)V

    .line 253
    :cond_1b
    if-nez v1, :cond_22

    .line 254
    iget-object v4, p0, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    aput-object v3, v4, v0

    goto :goto_24

    .line 256
    :cond_22
    iput-object v2, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 257
    :goto_24
    iget v4, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 258
    return-object v2

    .line 260
    :cond_2b
    move-object v1, v2

    .line 261
    move-object v2, v3

    .line 262
    .end local v3    # "next":Lgnu/mapping/NamedLocation;
    goto :goto_8

    .line 263
    :cond_2e
    const/4 v3, 0x0

    return-object v3
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lgnu/mapping/SimpleEnvironment;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

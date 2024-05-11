.class public Lgnu/mapping/Namespace;
.super Ljava/lang/Object;
.source "Namespace.java"

# interfaces
.implements Ljava/io/Externalizable;
.implements Lgnu/mapping/HasNamedParts;


# static fields
.field public static final EmptyNamespace:Lgnu/mapping/Namespace;

.field protected static final nsTable:Ljava/util/Hashtable;


# instance fields
.field log2Size:I

.field private mask:I

.field name:Ljava/lang/String;

.field num_bindings:I

.field protected prefix:Ljava/lang/String;

.field protected table:[Lgnu/mapping/SymbolRef;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    .line 26
    const-string v0, ""

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .line 42
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/mapping/Namespace;-><init>(I)V

    .line 43
    return-void
.end method

.method protected constructor <init>(I)V
    .registers 5
    .param p1, "capacity"    # I

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 47
    const/4 v0, 0x4

    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    .line 48
    :goto_a
    iget v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-le p1, v2, :cond_16

    .line 49
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/mapping/Namespace;->log2Size:I

    goto :goto_a

    .line 50
    :cond_16
    shl-int p1, v1, v0

    .line 51
    new-array v0, p1, [Lgnu/mapping/SymbolRef;

    iput-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 52
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lgnu/mapping/Namespace;->mask:I

    .line 53
    return-void
.end method

.method public static create()Lgnu/mapping/Namespace;
    .registers 2

    .line 62
    new-instance v0, Lgnu/mapping/Namespace;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static create(I)Lgnu/mapping/Namespace;
    .registers 2
    .param p0, "capacity"    # I

    .line 57
    new-instance v0, Lgnu/mapping/Namespace;

    invoke-direct {v0, p0}, Lgnu/mapping/Namespace;-><init>(I)V

    return-object v0
.end method

.method public static getDefault()Lgnu/mapping/Namespace;
    .registers 1

    .line 67
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {v0, p0}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .registers 3
    .param p0, "prefix"    # Ljava/lang/String;

    .line 126
    if-eqz p0, :cond_1b

    const-string v0, ""

    if-ne p0, v0, :cond_7

    goto :goto_1b

    .line 129
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://kawa.gnu.org/unknown-namespace/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "uri":Ljava/lang/String;
    goto :goto_1d

    .line 127
    .end local v0    # "uri":Ljava/lang/String;
    :cond_1b
    :goto_1b
    const-string v0, ""

    .line 130
    .restart local v0    # "uri":Ljava/lang/String;
    :goto_1d
    invoke-static {v0, p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf()Lgnu/mapping/Namespace;
    .registers 1

    .line 77
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    if-nez p0, :cond_4

    .line 83
    const-string p0, ""

    .line 84
    :cond_4
    sget-object v0, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 86
    :try_start_7
    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    .line 87
    .local v1, "ns":Lgnu/mapping/Namespace;
    if-eqz v1, :cond_11

    .line 88
    monitor-exit v0

    return-object v1

    .line 89
    :cond_11
    new-instance v2, Lgnu/mapping/Namespace;

    invoke-direct {v2}, Lgnu/mapping/Namespace;-><init>()V

    move-object v1, v2

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v0

    return-object v1

    .line 93
    .end local v1    # "ns":Lgnu/mapping/Namespace;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;Lgnu/mapping/SimpleSymbol;)Lgnu/mapping/Namespace;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "prefix"    # Lgnu/mapping/SimpleSymbol;

    .line 116
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p1}, Lgnu/mapping/SimpleSymbol;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {p0, v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;
    .registers 7
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 98
    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4a

    .line 100
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "xname":Ljava/lang/String;
    sget-object v1, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v1

    .line 103
    :try_start_23
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, "old":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/Namespace;

    if-eqz v3, :cond_30

    .line 105
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Namespace;

    monitor-exit v1

    return-object v3

    .line 106
    :cond_30
    new-instance v3, Lgnu/mapping/Namespace;

    invoke-direct {v3}, Lgnu/mapping/Namespace;-><init>()V

    .line 107
    .local v3, "ns":Lgnu/mapping/Namespace;
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/mapping/Namespace;->setName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    monitor-exit v1

    return-object v3

    .line 111
    .end local v2    # "old":Ljava/lang/Object;
    .end local v3    # "ns":Lgnu/mapping/Namespace;
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_23 .. :try_end_49} :catchall_47

    throw v2

    .line 99
    .end local v0    # "xname":Ljava/lang/String;
    :cond_4a
    :goto_4a
    invoke-static {p0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;
    .registers 7
    .param p1, "sym"    # Lgnu/mapping/Symbol;
    .param p2, "hash"    # I

    .line 190
    iget v0, p0, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v0, p2

    .line 191
    .local v0, "index":I
    new-instance v1, Lgnu/mapping/SymbolRef;

    invoke-direct {v1, p1, p0}, Lgnu/mapping/SymbolRef;-><init>(Lgnu/mapping/Symbol;Lgnu/mapping/Namespace;)V

    .line 192
    .local v1, "ref":Lgnu/mapping/SymbolRef;
    iput-object p0, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 193
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v2, v2, v0

    iput-object v2, v1, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 194
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v1, v2, v0

    .line 195
    iget v3, p0, Lgnu/mapping/Namespace;->num_bindings:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 196
    array-length v2, v2

    if-lt v3, v2, :cond_20

    .line 197
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->rehash()V

    .line 198
    :cond_20
    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 135
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->get(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public isConstant(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;IZ)Lgnu/mapping/Symbol;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "create"    # Z

    .line 203
    monitor-enter p0

    .line 205
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lgnu/mapping/Namespace;->lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 206
    .local v0, "sym":Lgnu/mapping/Symbol;
    if-eqz v0, :cond_9

    .line 207
    monitor-exit p0

    return-object v0

    .line 219
    :cond_9
    if-eqz p3, :cond_22

    .line 221
    sget-object v1, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    if-ne p0, v1, :cond_16

    .line 222
    new-instance v1, Lgnu/mapping/SimpleSymbol;

    invoke-direct {v1, p1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1c

    .line 224
    :cond_16
    new-instance v1, Lgnu/mapping/Symbol;

    invoke-direct {v1, p0, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    move-object v0, v1

    .line 225
    :goto_1c
    invoke-virtual {p0, v0, p2}, Lgnu/mapping/Namespace;->add(Lgnu/mapping/Symbol;I)Lgnu/mapping/Symbol;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 228
    :cond_22
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 229
    .end local v0    # "sym":Lgnu/mapping/Symbol;
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v0
.end method

.method protected final lookupInternal(Ljava/lang/String;I)Lgnu/mapping/Symbol;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "hash"    # I

    .line 162
    iget v0, p0, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v0, p2

    .line 163
    .local v0, "index":I
    const/4 v1, 0x0

    .line 164
    .local v1, "prev":Lgnu/mapping/SymbolRef;
    iget-object v2, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v2, v2, v0

    .local v2, "ref":Lgnu/mapping/SymbolRef;
    :goto_8
    if-eqz v2, :cond_30

    .line 166
    iget-object v3, v2, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 167
    .local v3, "next":Lgnu/mapping/SymbolRef;
    invoke-virtual {v2}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v4

    .line 168
    .local v4, "sym":Lgnu/mapping/Symbol;
    if-nez v4, :cond_22

    .line 171
    if-nez v1, :cond_19

    .line 172
    iget-object v5, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v3, v5, v0

    goto :goto_1b

    .line 174
    :cond_19
    iput-object v3, v1, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 175
    :goto_1b
    iget v5, p0, Lgnu/mapping/Namespace;->num_bindings:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lgnu/mapping/Namespace;->num_bindings:I

    goto :goto_2e

    .line 179
    :cond_22
    invoke-virtual {v4}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 180
    return-object v4

    .line 181
    :cond_2d
    move-object v1, v2

    .line 183
    :goto_2e
    move-object v2, v3

    .line 184
    .end local v3    # "next":Lgnu/mapping/SymbolRef;
    .end local v4    # "sym":Lgnu/mapping/Symbol;
    goto :goto_8

    .line 185
    .end local v2    # "ref":Lgnu/mapping/SymbolRef;
    :cond_30
    const/4 v2, 0x0

    return-object v2
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

    .line 311
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    .line 312
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 320
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2b

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    :goto_2b
    move-object v1, v0

    .line 322
    .local v1, "xname":Ljava/lang/String;
    :goto_2c
    sget-object v2, Lgnu/mapping/Namespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/Namespace;

    .line 323
    .local v3, "ns":Lgnu/mapping/Namespace;
    if-eqz v3, :cond_37

    .line 324
    return-object v3

    .line 325
    :cond_37
    invoke-virtual {v2, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v1    # "xname":Ljava/lang/String;
    .end local v3    # "ns":Lgnu/mapping/Namespace;
    :cond_3a
    return-object p0
.end method

.method protected rehash()V
    .registers 15

    .line 270
    iget-object v0, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    array-length v0, v0

    .line 271
    .local v0, "oldCapacity":I
    mul-int/lit8 v1, v0, 0x2

    .line 272
    .local v1, "newCapacity":I
    add-int/lit8 v2, v1, -0x1

    .line 273
    .local v2, "newMask":I
    const/4 v3, 0x0

    .line 274
    .local v3, "countInserted":I
    iget-object v4, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 275
    .local v4, "oldTable":[Lgnu/mapping/SymbolRef;
    new-array v5, v1, [Lgnu/mapping/SymbolRef;

    .line 277
    .local v5, "newTable":[Lgnu/mapping/SymbolRef;
    move v6, v0

    .local v6, "i":I
    :goto_d
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_32

    .line 279
    aget-object v7, v4, v6

    .local v7, "ref":Lgnu/mapping/SymbolRef;
    :goto_13
    if-eqz v7, :cond_31

    .line 281
    iget-object v8, v7, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 282
    .local v8, "next":Lgnu/mapping/SymbolRef;
    invoke-virtual {v7}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v9

    .line 283
    .local v9, "sym":Lgnu/mapping/Symbol;
    if-eqz v9, :cond_2f

    .line 285
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v10

    .line 286
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    .line 287
    .local v11, "hash":I
    and-int v12, v11, v2

    .line 288
    .local v12, "index":I
    add-int/lit8 v3, v3, 0x1

    .line 289
    aget-object v13, v5, v12

    iput-object v13, v7, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 290
    aput-object v7, v5, v12

    .line 292
    .end local v10    # "key":Ljava/lang/String;
    .end local v11    # "hash":I
    .end local v12    # "index":I
    :cond_2f
    move-object v7, v8

    .line 293
    .end local v8    # "next":Lgnu/mapping/SymbolRef;
    .end local v9    # "sym":Lgnu/mapping/Symbol;
    goto :goto_13

    .end local v7    # "ref":Lgnu/mapping/SymbolRef;
    :cond_31
    goto :goto_d

    .line 296
    .end local v6    # "i":I
    :cond_32
    iput-object v5, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    .line 297
    iget v6, p0, Lgnu/mapping/Namespace;->log2Size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lgnu/mapping/Namespace;->log2Size:I

    .line 298
    iput v2, p0, Lgnu/mapping/Namespace;->mask:I

    .line 299
    iput v3, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 300
    return-void
.end method

.method public remove(Lgnu/mapping/Symbol;)Z
    .registers 11
    .param p1, "symbol"    # Lgnu/mapping/Symbol;

    .line 234
    monitor-enter p0

    .line 236
    :try_start_1
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 238
    .local v1, "hash":I
    iget v2, p0, Lgnu/mapping/Namespace;->mask:I

    and-int/2addr v2, v1

    .line 239
    .local v2, "index":I
    const/4 v3, 0x0

    .line 240
    .local v3, "prev":Lgnu/mapping/SymbolRef;
    iget-object v4, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aget-object v4, v4, v2

    .line 241
    .local v4, "ref":Lgnu/mapping/SymbolRef;
    :goto_11
    if-eqz v4, :cond_35

    .line 243
    iget-object v5, v4, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 244
    .local v5, "next":Lgnu/mapping/SymbolRef;
    invoke-virtual {v4}, Lgnu/mapping/SymbolRef;->getSymbol()Lgnu/mapping/Symbol;

    move-result-object v6

    .line 245
    .local v6, "refsym":Lgnu/mapping/Symbol;
    if-eqz v6, :cond_20

    if-ne v6, p1, :cond_1e

    goto :goto_20

    .line 256
    :cond_1e
    move-object v3, v4

    goto :goto_33

    .line 247
    :cond_20
    :goto_20
    if-nez v3, :cond_27

    .line 248
    iget-object v7, p0, Lgnu/mapping/Namespace;->table:[Lgnu/mapping/SymbolRef;

    aput-object v5, v7, v2

    goto :goto_29

    .line 250
    :cond_27
    iput-object v5, v3, Lgnu/mapping/SymbolRef;->next:Lgnu/mapping/SymbolRef;

    .line 251
    :goto_29
    iget v7, p0, Lgnu/mapping/Namespace;->num_bindings:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, p0, Lgnu/mapping/Namespace;->num_bindings:I

    .line 252
    if-eqz v6, :cond_33

    .line 253
    monitor-exit p0

    return v8

    .line 257
    :cond_33
    :goto_33
    move-object v4, v5

    .line 258
    .end local v5    # "next":Lgnu/mapping/SymbolRef;
    .end local v6    # "refsym":Lgnu/mapping/Symbol;
    goto :goto_11

    .line 259
    :cond_35
    const/4 v5, 0x0

    monitor-exit p0

    return v5

    .line 260
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "hash":I
    .end local v2    # "index":I
    .end local v3    # "prev":Lgnu/mapping/SymbolRef;
    .end local v4    # "ref":Lgnu/mapping/SymbolRef;
    :catchall_38
    move-exception v0

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_38

    goto :goto_3c

    :goto_3b
    throw v0

    :goto_3c
    goto :goto_3b
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#,(namespace \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 336
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    if-eqz v1, :cond_23

    const-string v2, ""

    if-eq v1, v2, :cond_23

    .line 338
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    iget-object v1, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_23
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.class public Lkawa/lib/kawa/hashtable$HashTable;
.super Lgnu/kawa/util/GeneralHashTable;
.source "hashtable.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkawa/lib/kawa/hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashTable"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nhashtable.scm\nScheme\n*S Scheme\n*F\n+ 1 hashtable.scm\n/u2/home/jis/ai2-kawa/kawa/lib/kawa/hashtable.scm\n*L\n13#1,73:13\n*E\n"
.end annotation


# instance fields
.field public equivalenceFunction:Lgnu/mapping/Procedure;

.field public hashFunction:Lgnu/mapping/Procedure;

.field public mutable:Z


# direct methods
.method private $finit$()V
    .registers 2

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->mutable:Z

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    .local p1, "eq":Lgnu/mapping/Procedure;
    .local p2, "h":Lgnu/mapping/Procedure;
    invoke-direct {v0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 31
    iput-object p1, v0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 32
    iput-object p2, v0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V
    .registers 5

    .line 26
    nop

    .line 27
    invoke-direct {p0, p3}, Lgnu/kawa/util/GeneralHashTable;-><init>(I)V

    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    .local p1, "eq":Lgnu/mapping/Procedure;
    .local p2, "h":Lgnu/mapping/Procedure;
    .local p3, "sz":I
    invoke-direct {v0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 28
    iput-object p1, v0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    .line 29
    iput-object p2, v0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-void
.end method

.method public constructor <init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V
    .registers 8

    .line 33
    invoke-direct {p0}, Lgnu/kawa/util/GeneralHashTable;-><init>()V

    move-object v0, p0

    .local v0, "this":Lkawa/lib/kawa/hashtable$HashTable;
    .local p1, "ht":Lkawa/lib/kawa/hashtable$HashTable;
    .local p2, "mutable":Z
    invoke-direct {v0}, Lkawa/lib/kawa/hashtable$HashTable;->$finit$()V

    .line 34
    sget-object v1, Lgnu/kawa/reflect/Invoke;->invokeSpecial:Lgnu/kawa/reflect/Invoke;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lkawa/lib/kawa/hashtable;->hashtable:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 35
    iget-object v3, p1, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 36
    iget-object v3, p1, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v3}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 37
    invoke-virtual {p1}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 39
    sget-object v1, Lgnu/kawa/functions/SetNamedPart;->setNamedPart:Lgnu/kawa/functions/SetNamedPart;

    sget-object v2, Lkawa/standard/thisRef;->thisSyntax:Lkawa/standard/thisRef;

    sget-object v3, Lkawa/lib/kawa/hashtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    if-eqz p2, :cond_44

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_46

    :cond_44
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_46
    invoke-virtual {v1, v2, v3, v4}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 85
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public entriesVectorPair()Lgnu/lists/Pair;
    .registers 7

    .line 55
    nop

    .line 56
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0}, Lgnu/lists/FVector;-><init>()V

    .line 57
    new-instance v1, Lgnu/lists/FVector;

    invoke-direct {v1}, Lgnu/lists/FVector;-><init>()V

    .line 58
    iget-object v2, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_d
    check-cast v2, [Lgnu/kawa/util/HashNode;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_34

    .line 13
    array-length v3, v2

    .line 58
    nop

    .line 14
    add-int/lit8 v3, v3, -0x1

    .line 58
    :goto_13
    if-ltz v3, :cond_2f

    .line 16
    aget-object v4, v2, v3

    .line 58
    :goto_17
    if-eqz v4, :cond_2c

    .line 59
    invoke-virtual {v4}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v4}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v4

    goto :goto_17

    .line 58
    :cond_2c
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 61
    :cond_2f
    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0

    .line 58
    :catch_34
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v3, -0x2

    const-string v4, "table"

    invoke-direct {v1, v0, v4, v3, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_3f

    :goto_3e
    throw v1

    :goto_3f
    goto :goto_3e
.end method

.method public fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    .line 46
    nop

    .line 47
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_3
    check-cast v0, [Lgnu/kawa/util/HashNode;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_24

    .line 13
    array-length v1, v0

    .line 47
    nop

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 47
    :goto_9
    if-ltz v1, :cond_23

    .line 16
    aget-object v2, v0, v1

    .line 47
    :goto_d
    if-eqz v2, :cond_20

    .line 48
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4, p2}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_d

    .line 47
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 49
    :cond_23
    return-object p2

    .line 47
    :catch_24
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "table"

    invoke-direct {p2, p1, v2, v1, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2f

    :goto_2e
    throw p2

    :goto_2f
    goto :goto_2e
.end method

.method public hash(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 40
    nop

    .line 41
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public keysVector()Lgnu/lists/FVector;
    .registers 6

    .line 50
    nop

    .line 51
    new-instance v0, Lgnu/lists/FVector;

    invoke-direct {v0}, Lgnu/lists/FVector;-><init>()V

    .line 52
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_8
    check-cast v1, [Lgnu/kawa/util/HashNode;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_a} :catch_24

    .line 13
    array-length v2, v1

    .line 52
    nop

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 52
    :goto_e
    if-ltz v2, :cond_23

    .line 16
    aget-object v3, v1, v2

    .line 52
    :goto_12
    if-eqz v3, :cond_20

    .line 53
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/lists/FVector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_12

    .line 52
    :cond_20
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 54
    :cond_23
    return-object v0

    .line 52
    :catch_24
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, -0x2

    const-string v4, "table"

    invoke-direct {v2, v0, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2f

    :goto_2e
    throw v2

    :goto_2f
    goto :goto_2e
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .line 42
    nop

    .line 43
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public putAll(Lkawa/lib/kawa/hashtable$HashTable;)V
    .registers 7

    .line 82
    nop

    .line 83
    iget-object v0, p1, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_3
    check-cast v0, [Lgnu/kawa/util/HashNode;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_23

    .line 13
    array-length v1, v0

    .line 83
    nop

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 83
    :goto_9
    if-ltz v1, :cond_22

    .line 16
    aget-object v2, v0, v1

    .line 83
    :goto_d
    if-eqz v2, :cond_1f

    .line 84
    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lkawa/lib/kawa/hashtable$HashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_d

    .line 83
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_22
    return-void

    :catch_23
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "table"

    invoke-direct {v1, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2e

    :goto_2d
    throw v1

    :goto_2e
    goto :goto_2d
.end method

.method public toAlist()Ljava/lang/Object;
    .registers 7

    .line 62
    nop

    .line 63
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 64
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_5
    check-cast v1, [Lgnu/kawa/util/HashNode;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_2a

    .line 13
    array-length v2, v1

    .line 64
    nop

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 64
    :goto_b
    if-ltz v2, :cond_29

    .line 16
    aget-object v3, v1, v2

    .line 64
    :goto_f
    if-eqz v3, :cond_26

    .line 65
    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    invoke-static {v4, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-virtual {p0, v3}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_f

    .line 64
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 68
    :cond_29
    return-object v0

    .line 64
    :catch_2a
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, -0x2

    const-string v4, "table"

    invoke-direct {v2, v0, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_35

    :goto_34
    throw v2

    :goto_35
    goto :goto_34
.end method

.method public toNodeArray()[Lgnu/kawa/util/HashNode;
    .registers 6

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->size()I

    move-result v0

    new-array v0, v0, [Lgnu/kawa/util/HashNode;

    .line 78
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_9
    check-cast v1, [Lgnu/kawa/util/HashNode;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_b} :catch_23

    .line 13
    array-length v2, v1

    .line 78
    nop

    .line 14
    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    .line 78
    :goto_10
    if-ltz v2, :cond_22

    .line 16
    aget-object v4, v1, v2

    .line 78
    :goto_14
    if-eqz v4, :cond_1f

    .line 79
    aput-object v4, v0, v3

    .line 80
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v4}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v4

    goto :goto_14

    .line 78
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 81
    :cond_22
    return-object v0

    .line 78
    :catch_23
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, -0x2

    const-string v4, "table"

    invoke-direct {v2, v0, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2e

    :goto_2d
    throw v2

    :goto_2e
    goto :goto_2d
.end method

.method public toNodeList()Lgnu/lists/LList;
    .registers 6

    .line 69
    nop

    .line 70
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 71
    iget-object v1, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_5
    check-cast v1, [Lgnu/kawa/util/HashNode;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_20

    .line 13
    array-length v2, v1

    .line 71
    nop

    .line 14
    add-int/lit8 v2, v2, -0x1

    .line 71
    :goto_b
    if-ltz v2, :cond_1d

    .line 16
    aget-object v3, v1, v2

    .line 71
    :goto_f
    if-eqz v3, :cond_1a

    .line 72
    invoke-static {v3, v0}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    invoke-virtual {p0, v3}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v3

    goto :goto_f

    .line 71
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 73
    :cond_1d
    check-cast v0, Lgnu/lists/LList;

    return-object v0

    .line 71
    :catch_20
    move-exception v0

    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, -0x2

    const-string v4, "table"

    invoke-direct {v2, v0, v4, v3, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2b

    :goto_2a
    throw v2

    :goto_2b
    goto :goto_2a
.end method

.method public walk(Lgnu/mapping/Procedure;)V
    .registers 7

    .line 44
    nop

    .line 45
    iget-object v0, p0, Lgnu/kawa/util/AbstractHashTable;->table:[Ljava/util/Map$Entry;

    :try_start_3
    check-cast v0, [Lgnu/kawa/util/HashNode;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_5} :catch_23

    .line 13
    array-length v1, v0

    .line 45
    nop

    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 45
    :goto_9
    if-ltz v1, :cond_22

    .line 16
    aget-object v2, v0, v1

    .line 45
    :goto_d
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lkawa/lib/kawa/hashtable$HashTable;->getEntryNext(Lgnu/kawa/util/HashNode;)Lgnu/kawa/util/HashNode;

    move-result-object v2

    goto :goto_d

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_22
    return-void

    :catch_23
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x2

    const-string v3, "table"

    invoke-direct {v1, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2e

    :goto_2d
    throw v1

    :goto_2e
    goto :goto_2d
.end method

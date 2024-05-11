.class public Lgnu/kawa/util/WeakIdentityHashMap;
.super Lgnu/kawa/util/AbstractHashTable;
.source "WeakIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgnu/kawa/util/AbstractHashTable<",
        "Lgnu/kawa/util/WeakHashNode<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field rqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 7
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 14
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 18
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lgnu/kawa/util/AbstractHashTable;-><init>(I)V

    .line 7
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    .line 19
    return-void
.end method


# virtual methods
.method protected allocEntries(I)[Lgnu/kawa/util/WeakHashNode;
    .registers 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 27
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    new-array v0, p1, [Lgnu/kawa/util/WeakHashNode;

    check-cast v0, [Lgnu/kawa/util/WeakHashNode;

    return-object v0
.end method

.method protected bridge synthetic allocEntries(I)[Ljava/util/Map$Entry;
    .registers 3
    .param p1, "x0"    # I

    .line 3
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lgnu/kawa/util/WeakIdentityHashMap;->allocEntries(I)[Lgnu/kawa/util/WeakHashNode;

    move-result-object v0

    return-object v0
.end method

.method cleanup()V
    .registers 2

    .line 70
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p0, v0}, Lgnu/kawa/util/AbstractWeakHashTable;->cleanup(Lgnu/kawa/util/AbstractHashTable;Ljava/lang/ref/ReferenceQueue;)V

    .line 71
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 54
    invoke-super {p0, p1, p2}, Lgnu/kawa/util/AbstractHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;)I"
        }
    .end annotation

    .line 21
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget v0, p1, Lgnu/kawa/util/WeakHashNode;->hash:I

    return v0
.end method

.method protected bridge synthetic getEntryHashCode(Ljava/util/Map$Entry;)I
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .line 3
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {p0, v0}, Lgnu/kawa/util/WeakIdentityHashMap;->getEntryHashCode(Lgnu/kawa/util/WeakHashNode;)I

    move-result v0

    return v0
.end method

.method protected getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;)",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 23
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iget-object v0, p1, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-object v0
.end method

.method protected bridge synthetic getEntryNext(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 3
    .param p1, "x0"    # Ljava/util/Map$Entry;

    .line 3
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {p0, v0}, Lgnu/kawa/util/WeakIdentityHashMap;->getEntryNext(Lgnu/kawa/util/WeakHashNode;)Lgnu/kawa/util/WeakHashNode;

    move-result-object v0

    return-object v0
.end method

.method public hash(Ljava/lang/Object;)I
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 31
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/WeakHashNode;
    .registers 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lgnu/kawa/util/WeakHashNode;

    iget-object v1, p0, Lgnu/kawa/util/WeakIdentityHashMap;->rqueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1, p2}, Lgnu/kawa/util/WeakHashNode;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;I)V

    .line 47
    .local v0, "node":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iput-object p3, v0, Lgnu/kawa/util/WeakHashNode;->value:Ljava/lang/Object;

    .line 48
    return-object v0
.end method

.method protected bridge synthetic makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/Object;

    .line 3
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/util/WeakIdentityHashMap;->makeEntry(Ljava/lang/Object;ILjava/lang/Object;)Lgnu/kawa/util/WeakHashNode;

    move-result-object v0

    return-object v0
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

    .line 36
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 60
    invoke-super {p0, p1, p2, p3}, Lgnu/kawa/util/AbstractHashTable;->put(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lgnu/kawa/util/WeakIdentityHashMap;->cleanup()V

    .line 66
    invoke-super {p0, p1}, Lgnu/kawa/util/AbstractHashTable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;",
            "Lgnu/kawa/util/WeakHashNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    .local p1, "entry":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    .local p2, "next":Lgnu/kawa/util/WeakHashNode;, "Lgnu/kawa/util/WeakHashNode<TK;TV;>;"
    iput-object p2, p1, Lgnu/kawa/util/WeakHashNode;->next:Lgnu/kawa/util/WeakHashNode;

    return-void
.end method

.method protected bridge synthetic setEntryNext(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V
    .registers 5
    .param p1, "x0"    # Ljava/util/Map$Entry;
    .param p2, "x1"    # Ljava/util/Map$Entry;

    .line 3
    .local p0, "this":Lgnu/kawa/util/WeakIdentityHashMap;, "Lgnu/kawa/util/WeakIdentityHashMap<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/WeakHashNode;

    move-object v1, p2

    check-cast v1, Lgnu/kawa/util/WeakHashNode;

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/util/WeakIdentityHashMap;->setEntryNext(Lgnu/kawa/util/WeakHashNode;Lgnu/kawa/util/WeakHashNode;)V

    return-void
.end method

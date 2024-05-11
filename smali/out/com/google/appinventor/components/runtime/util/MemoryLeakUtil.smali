.class public Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;
.super Ljava/lang/Object;
.source "MemoryLeakUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MemoryLeakUtil"

.field private static final TRACKED_OBJECTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-static {}, Lcom/google/appinventor/components/runtime/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static checkAllTrackedObjects(ZZ)V
    .registers 14
    .param p0, "verbose"    # Z
    .param p1, "stopTrackingCollectedObjects"    # Z

    .line 83
    const-string v0, "MemoryLeakUtil"

    const-string v1, "Checking Tracked Objects ----------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, "countRemaining":I
    const/4 v2, 0x0

    .line 87
    .local v2, "countCollected":I
    sget-object v3, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    .line 88
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;>;"
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 89
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 90
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 91
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 92
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 93
    .local v7, "o":Ljava/lang/Object;
    if-eqz v7, :cond_37

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 96
    :cond_37
    add-int/lit8 v2, v2, 0x1

    .line 97
    if-eqz p1, :cond_3e

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 101
    :cond_3e
    :goto_3e
    if-eqz p0, :cond_7a

    .line 102
    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "tag":Ljava/lang/String;
    nop

    .line 104
    if-eqz v7, :cond_52

    const-string v9, "not "

    goto :goto_54

    :cond_52
    const-string v9, ""

    :goto_54
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Object with tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "been garbage collected."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 103
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    .end local v7    # "o":Ljava/lang/Object;
    .end local v8    # "tag":Ljava/lang/String;
    :cond_7a
    goto :goto_16

    .line 107
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;>;>;"
    :cond_7b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "summary: collected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "summary: remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v3, "-----------------------------------------------------------------"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method

.method public static isTrackedObjectCollected(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "stopTrackingIfCollected"    # Z

    .line 58
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 59
    sget-object v0, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 60
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Object;>;"
    if-eqz v1, :cond_59

    .line 61
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "o":Ljava/lang/Object;
    const-string v3, "_"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "tag":Ljava/lang/String;
    nop

    .line 64
    if-eqz v2, :cond_23

    const-string v5, "not "

    goto :goto_25

    :cond_23
    const-string v5, ""

    :goto_25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Object with tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "been garbage collected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    const-string v6, "MemoryLeakUtil"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-eqz p1, :cond_54

    if-nez v2, :cond_54

    .line 66
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_54
    if-nez v2, :cond_57

    goto :goto_58

    :cond_57
    const/4 v4, 0x0

    :goto_58
    return v4

    .line 70
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "key not found"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static trackObject(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 41
    const-string v0, "_"

    if-nez p0, :cond_1c

    .line 42
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 43
    :cond_1c
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->prefixGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_37
    nop

    .line 44
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Lcom/google/appinventor/components/runtime/util/MemoryLeakUtil;->TRACKED_OBJECTS:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-object v0
.end method

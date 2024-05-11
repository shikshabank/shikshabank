.class public Lgnu/mapping/LocationEnumeration;
.super Ljava/lang/Object;
.source "LocationEnumeration.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lgnu/mapping/Location;",
        ">;",
        "Ljava/util/Enumeration<",
        "Lgnu/mapping/Location;",
        ">;"
    }
.end annotation


# instance fields
.field bindings:[Lgnu/mapping/NamedLocation;

.field env:Lgnu/mapping/SimpleEnvironment;

.field index:I

.field inherited:Lgnu/mapping/LocationEnumeration;

.field nextLoc:Lgnu/mapping/NamedLocation;

.field prevLoc:Lgnu/mapping/NamedLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/SimpleEnvironment;)V
    .registers 5
    .param p1, "env"    # Lgnu/mapping/SimpleEnvironment;

    .line 30
    iget-object v0, p1, Lgnu/mapping/SimpleEnvironment;->table:[Lgnu/mapping/NamedLocation;

    iget v1, p1, Lgnu/mapping/SimpleEnvironment;->log2Size:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-direct {p0, v0, v1}, Lgnu/mapping/LocationEnumeration;-><init>([Lgnu/mapping/NamedLocation;I)V

    .line 31
    return-void
.end method

.method public constructor <init>([Lgnu/mapping/NamedLocation;I)V
    .registers 3
    .param p1, "bindings"    # [Lgnu/mapping/NamedLocation;
    .param p2, "count"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    .line 25
    iput p2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    .line 26
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    invoke-virtual {v0, p0}, Lgnu/mapping/SimpleEnvironment;->hasMoreElements(Lgnu/mapping/LocationEnumeration;)Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .line 63
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public next()Lgnu/mapping/Location;
    .registers 2

    .line 68
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->next()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Lgnu/mapping/Location;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextLocation()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->nextElement()Lgnu/mapping/Location;

    move-result-object v0

    return-object v0
.end method

.method public nextLocation()Lgnu/mapping/Location;
    .registers 4

    .line 45
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lgnu/mapping/LocationEnumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_11

    .line 46
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 47
    :cond_11
    :goto_11
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 48
    .local v0, "oldPrev":Lgnu/mapping/NamedLocation;
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-nez v1, :cond_23

    .line 50
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v1, v1, v2

    .line 51
    .local v1, "first":Lgnu/mapping/NamedLocation;
    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v2, v1, :cond_23

    .line 52
    iput-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    .line 54
    .end local v1    # "first":Lgnu/mapping/NamedLocation;
    :cond_23
    :goto_23
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v1, :cond_34

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-eq v1, v2, :cond_34

    .line 55
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    iget-object v1, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    goto :goto_23

    .line 56
    :cond_34
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 57
    .local v1, "r":Lgnu/mapping/Location;
    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iget-object v2, v2, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iput-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    .line 58
    return-object v1
.end method

.method public remove()V
    .registers 5

    .line 73
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v1, p0, Lgnu/mapping/LocationEnumeration;->index:I

    aget-object v0, v0, v1

    .line 74
    .local v0, "curLoc":Lgnu/mapping/NamedLocation;
    :goto_d
    if-eqz v0, :cond_32

    iget-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    if-ne v1, v2, :cond_32

    .line 76
    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    .line 77
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->prevLoc:Lgnu/mapping/NamedLocation;

    if-eqz v1, :cond_21

    .line 78
    iget-object v2, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    iput-object v2, v1, Lgnu/mapping/NamedLocation;->next:Lgnu/mapping/NamedLocation;

    goto :goto_29

    .line 80
    :cond_21
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->bindings:[Lgnu/mapping/NamedLocation;

    iget v2, p0, Lgnu/mapping/LocationEnumeration;->index:I

    iget-object v3, p0, Lgnu/mapping/LocationEnumeration;->nextLoc:Lgnu/mapping/NamedLocation;

    aput-object v3, v1, v2

    .line 81
    :goto_29
    iget-object v1, p0, Lgnu/mapping/LocationEnumeration;->env:Lgnu/mapping/SimpleEnvironment;

    iget v2, v1, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lgnu/mapping/SimpleEnvironment;->num_bindings:I

    .line 82
    return-void

    .line 75
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

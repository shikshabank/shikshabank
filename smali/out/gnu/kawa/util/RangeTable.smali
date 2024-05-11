.class public Lgnu/kawa/util/RangeTable;
.super Ljava/lang/Object;
.source "RangeTable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field hash:Ljava/util/Hashtable;

.field index:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 70
    invoke-virtual {p0}, Lgnu/kawa/util/RangeTable;->copy()Lgnu/kawa/util/RangeTable;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lgnu/kawa/util/RangeTable;
    .registers 3

    .line 62
    new-instance v0, Lgnu/kawa/util/RangeTable;

    invoke-direct {v0}, Lgnu/kawa/util/RangeTable;-><init>()V

    .line 63
    .local v0, "copy":Lgnu/kawa/util/RangeTable;
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    .line 65
    return-object v0
.end method

.method public lookup(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 15
    and-int/lit8 v0, p1, 0x7f

    if-ne v0, p1, :cond_9

    .line 16
    iget-object v0, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 17
    :cond_9
    iget-object v0, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)V
    .registers 2
    .param p1, "key"    # I

    .line 57
    invoke-virtual {p0, p1, p1}, Lgnu/kawa/util/RangeTable;->remove(II)V

    .line 58
    return-void
.end method

.method public remove(II)V
    .registers 6
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 42
    if-le p1, p2, :cond_3

    .line 43
    return-void

    .line 44
    :cond_3
    move v0, p1

    .line 46
    .local v0, "i":I
    :goto_4
    and-int/lit8 v1, v0, 0x7f

    if-ne v1, v0, :cond_e

    .line 47
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_18

    .line 49
    :cond_e
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_18
    if-ne v0, p2, :cond_1c

    .line 51
    nop

    .line 53
    .end local v0    # "i":I
    return-void

    .line 44
    .restart local v0    # "i":I
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public set(IILjava/lang/Object;)V
    .registers 7
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 22
    if-le p1, p2, :cond_3

    .line 23
    return-void

    .line 24
    :cond_3
    move v0, p1

    .line 26
    .local v0, "i":I
    :goto_4
    and-int/lit8 v1, v0, 0x7f

    if-ne v1, v0, :cond_d

    .line 27
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->index:[Ljava/lang/Object;

    aput-object p3, v1, v0

    goto :goto_17

    .line 29
    :cond_d
    iget-object v1, p0, Lgnu/kawa/util/RangeTable;->hash:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_17
    if-ne v0, p2, :cond_1b

    .line 31
    nop

    .line 33
    .end local v0    # "i":I
    return-void

    .line 24
    .restart local v0    # "i":I
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public set(ILjava/lang/Object;)V
    .registers 3
    .param p1, "key"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 37
    invoke-virtual {p0, p1, p1, p2}, Lgnu/kawa/util/RangeTable;->set(IILjava/lang/Object;)V

    .line 38
    return-void
.end method

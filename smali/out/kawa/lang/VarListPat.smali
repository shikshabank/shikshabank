.class public Lkawa/lang/VarListPat;
.super Lkawa/lang/Pattern;
.source "VarListPat.java"


# instance fields
.field min_length:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "min"    # I

    .line 10
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    iput p1, p0, Lkawa/lang/VarListPat;->min_length:I

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I

    .line 21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lkawa/lang/VarListPat;->min_length:I

    if-ge v0, v1, :cond_1e

    .line 23
    instance-of v1, p1, Lgnu/lists/Pair;

    if-eqz v1, :cond_1c

    .line 25
    move-object v1, p1

    check-cast v1, Lgnu/lists/Pair;

    .line 26
    .local v1, "p":Lgnu/lists/Pair;
    add-int v2, p3, v0

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v2

    .line 27
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p1

    .line 28
    .end local v1    # "p":Lgnu/lists/Pair;
    nop

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_1c
    const/4 v1, 0x0

    return v1

    .line 32
    :cond_1e
    add-int v1, p3, v0

    aput-object p1, p2, v1

    .line 33
    const/4 v1, 0x1

    return v1
.end method

.method public print(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 40
    const-string v0, "#<varlist-pattern min:"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lkawa/lang/VarListPat;->min_length:I

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 42
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(I)V

    .line 43
    return-void
.end method

.method public varCount()I
    .registers 2

    .line 36
    iget v0, p0, Lkawa/lang/VarListPat;->min_length:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

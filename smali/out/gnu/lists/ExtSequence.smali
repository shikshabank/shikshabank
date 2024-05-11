.class public abstract Lgnu/lists/ExtSequence;
.super Lgnu/lists/AbstractSequence;
.source "ExtSequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lgnu/lists/AbstractSequence;-><init>()V

    return-void
.end method


# virtual methods
.method public copyPos(I)I
    .registers 4
    .param p1, "ipos"    # I

    .line 15
    if-gtz p1, :cond_3

    .line 16
    return p1

    .line 17
    :cond_3
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/lists/SeqPosition;->copy()Lgnu/lists/SeqPosition;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v0

    return v0
.end method

.method protected isAfterPos(I)Z
    .registers 5
    .param p1, "ipos"    # I

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gtz p1, :cond_8

    .line 29
    if-gez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    .line 30
    :cond_8
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v2

    iget v2, v2, Lgnu/lists/SeqPosition;->ipos:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method protected nextIndex(I)I
    .registers 3
    .param p1, "ipos"    # I

    .line 35
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lgnu/lists/ExtSequence;->size()I

    move-result v0

    goto :goto_14

    :cond_8
    if-nez p1, :cond_c

    const/4 v0, 0x0

    goto :goto_14

    :cond_c
    invoke-static {p1}, Lgnu/lists/PositionManager;->getPositionObject(I)Lgnu/lists/SeqPosition;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->nextIndex()I

    move-result v0

    :goto_14
    return v0
.end method

.method protected releasePos(I)V
    .registers 3
    .param p1, "ipos"    # I

    .line 22
    if-lez p1, :cond_7

    .line 23
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {v0, p1}, Lgnu/lists/PositionManager;->release(I)V

    .line 24
    :cond_7
    return-void
.end method

.class public Lgnu/lists/ExtPosition;
.super Lgnu/lists/SeqPosition;
.source "ExtPosition.java"


# instance fields
.field position:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lgnu/lists/SeqPosition;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lgnu/lists/ExtPosition;->position:I

    return-void
.end method


# virtual methods
.method public getPos()I
    .registers 2

    .line 20
    iget v0, p0, Lgnu/lists/ExtPosition;->position:I

    if-gez v0, :cond_c

    .line 21
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    invoke-virtual {v0, p0}, Lgnu/lists/PositionManager;->register(Lgnu/lists/SeqPosition;)I

    move-result v0

    iput v0, p0, Lgnu/lists/ExtPosition;->position:I

    .line 22
    :cond_c
    iget v0, p0, Lgnu/lists/ExtPosition;->position:I

    return v0
.end method

.method public final isAfter()Z
    .registers 3

    .line 32
    iget v0, p0, Lgnu/lists/ExtPosition;->ipos:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public release()V
    .registers 3

    .line 37
    iget v0, p0, Lgnu/lists/ExtPosition;->position:I

    if-ltz v0, :cond_b

    .line 38
    sget-object v0, Lgnu/lists/PositionManager;->manager:Lgnu/lists/PositionManager;

    iget v1, p0, Lgnu/lists/ExtPosition;->position:I

    invoke-virtual {v0, v1}, Lgnu/lists/PositionManager;->release(I)V

    .line 39
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/lists/ExtPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 40
    return-void
.end method

.method public setPos(Lgnu/lists/AbstractSequence;I)V
    .registers 4
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 27
    const-string v0, "setPos"

    invoke-virtual {p1, v0}, Lgnu/lists/AbstractSequence;->unsupported(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.class public Lgnu/kawa/xml/FollowingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "FollowingAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/FollowingAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .line 13
    new-instance v0, Lgnu/kawa/xml/FollowingAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/FollowingAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/FollowingAxis;
    iput-object p0, v0, Lgnu/kawa/xml/FollowingAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 7
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .line 20
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    .line 21
    .local v0, "limit":I
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    .line 22
    if-eqz p2, :cond_15

    iget-object v1, p0, Lgnu/kawa/xml/FollowingAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v1, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 23
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 26
    :cond_15
    :goto_15
    iget-object v1, p0, Lgnu/kawa/xml/FollowingAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v0, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p2

    .line 27
    if-nez p2, :cond_20

    .line 28
    nop

    .line 31
    return-void

    .line 29
    :cond_20
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_15
.end method

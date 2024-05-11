.class public Lgnu/kawa/xml/DescendantAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .line 13
    new-instance v0, Lgnu/kawa/xml/DescendantAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/DescendantAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/DescendantAxis;
    iput-object p0, v0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 8
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .line 20
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-nez v0, :cond_1e

    .line 22
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result p2

    .line 23
    :goto_8
    if-eqz p2, :cond_1d

    .line 25
    iget-object v0, p0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 26
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 27
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/DescendantAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 28
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_8

    .line 30
    :cond_1d
    return-void

    .line 32
    :cond_1e
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 33
    .local v0, "limit":I
    move v1, p2

    .line 36
    .local v1, "child":I
    :goto_23
    iget-object v2, p0, Lgnu/kawa/xml/DescendantAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v0, v3}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    .line 37
    if-nez v1, :cond_2e

    .line 38
    nop

    .line 41
    return-void

    .line 39
    :cond_2e
    invoke-interface {p3, p1, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_23
.end method

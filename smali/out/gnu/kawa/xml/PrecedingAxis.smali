.class public Lgnu/kawa/xml/PrecedingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "PrecedingAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/PrecedingAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .line 13
    new-instance v0, Lgnu/kawa/xml/PrecedingAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/PrecedingAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/PrecedingAxis;
    iput-object p0, v0, Lgnu/kawa/xml/PrecedingAxis;->type:Lgnu/lists/NodePredicate;

    .line 15
    return-object v0
.end method

.method private static scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V
    .registers 8
    .param p0, "seq"    # Lgnu/lists/AbstractSequence;
    .param p1, "ipos"    # I
    .param p2, "end"    # I
    .param p3, "type"    # Lgnu/lists/NodePredicate;
    .param p4, "out"    # Lgnu/lists/PositionConsumer;

    .line 21
    invoke-virtual {p0, p1}, Lgnu/lists/AbstractSequence;->parentPos(I)I

    move-result v0

    .line 22
    .local v0, "parent":I
    if-ne v0, p2, :cond_7

    .line 23
    return-void

    .line 24
    :cond_7
    invoke-static {p0, v0, p2, p3, p4}, Lgnu/kawa/xml/PrecedingAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 25
    invoke-virtual {p0, v0}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result v1

    .line 26
    .local v1, "child":I
    if-nez v1, :cond_11

    .line 27
    return-void

    .line 28
    :cond_11
    invoke-interface {p3, p0, v1}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 29
    invoke-interface {p4, p0, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 32
    :cond_1a
    :goto_1a
    const/4 v2, 0x1

    invoke-virtual {p0, v1, p3, p1, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    .line 33
    if-nez v1, :cond_23

    .line 34
    nop

    .line 37
    return-void

    .line 35
    :cond_23
    invoke-interface {p4, p0, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_1a
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 6
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .line 41
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->endPos()I

    move-result v0

    iget-object v1, p0, Lgnu/kawa/xml/PrecedingAxis;->type:Lgnu/lists/NodePredicate;

    invoke-static {p1, p2, v0, v1, p3}, Lgnu/kawa/xml/PrecedingAxis;->scan(Lgnu/lists/AbstractSequence;IILgnu/lists/NodePredicate;Lgnu/lists/PositionConsumer;)V

    .line 42
    return-void
.end method

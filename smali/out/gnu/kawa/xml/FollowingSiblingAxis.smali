.class public Lgnu/kawa/xml/FollowingSiblingAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "FollowingSiblingAxis.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/FollowingSiblingAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .line 13
    new-instance v0, Lgnu/kawa/xml/FollowingSiblingAxis;

    invoke-direct {v0}, Lgnu/kawa/xml/FollowingSiblingAxis;-><init>()V

    .line 14
    .local v0, "axis":Lgnu/kawa/xml/FollowingSiblingAxis;
    iput-object p0, v0, Lgnu/kawa/xml/FollowingSiblingAxis;->type:Lgnu/lists/NodePredicate;

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

    .line 23
    .local v0, "limit":I
    :goto_4
    iget-object v1, p0, Lgnu/kawa/xml/FollowingSiblingAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result p2

    .line 24
    if-nez p2, :cond_f

    .line 25
    nop

    .line 28
    return-void

    .line 26
    :cond_f
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_4
.end method

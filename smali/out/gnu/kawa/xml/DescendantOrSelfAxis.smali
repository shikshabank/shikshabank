.class public Lgnu/kawa/xml/DescendantOrSelfAxis;
.super Lgnu/kawa/xml/TreeScanner;
.source "DescendantOrSelfAxis.java"


# static fields
.field public static final anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Lgnu/kawa/xml/DescendantOrSelfAxis;

    sget-object v1, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    invoke-direct {v0, v1}, Lgnu/kawa/xml/DescendantOrSelfAxis;-><init>(Lgnu/lists/NodePredicate;)V

    sput-object v0, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    return-void
.end method

.method private constructor <init>(Lgnu/lists/NodePredicate;)V
    .registers 2
    .param p1, "type"    # Lgnu/lists/NodePredicate;

    .line 15
    invoke-direct {p0}, Lgnu/kawa/xml/TreeScanner;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    .line 17
    return-void
.end method

.method public static make(Lgnu/lists/NodePredicate;)Lgnu/kawa/xml/DescendantOrSelfAxis;
    .registers 2
    .param p0, "type"    # Lgnu/lists/NodePredicate;

    .line 21
    sget-object v0, Lgnu/kawa/xml/NodeType;->anyNodeTest:Lgnu/kawa/xml/NodeType;

    if-ne p0, v0, :cond_7

    .line 22
    sget-object v0, Lgnu/kawa/xml/DescendantOrSelfAxis;->anyNode:Lgnu/kawa/xml/DescendantOrSelfAxis;

    return-object v0

    .line 23
    :cond_7
    new-instance v0, Lgnu/kawa/xml/DescendantOrSelfAxis;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/DescendantOrSelfAxis;-><init>(Lgnu/lists/NodePredicate;)V

    return-object v0
.end method


# virtual methods
.method public scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V
    .registers 8
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "out"    # Lgnu/lists/PositionConsumer;

    .line 28
    iget-object v0, p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    invoke-interface {v0, p1, p2}, Lgnu/lists/NodePredicate;->isInstancePos(Lgnu/lists/AbstractSequence;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 29
    invoke-interface {p3, p1, p2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    .line 30
    :cond_b
    instance-of v0, p1, Lgnu/lists/TreeList;

    if-nez v0, :cond_1e

    .line 32
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->firstChildPos(I)I

    move-result p2

    .line 33
    :goto_13
    if-eqz p2, :cond_1d

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xml/DescendantOrSelfAxis;->scan(Lgnu/lists/AbstractSequence;ILgnu/lists/PositionConsumer;)V

    .line 36
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result p2

    goto :goto_13

    .line 38
    :cond_1d
    return-void

    .line 40
    :cond_1e
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    .line 41
    .local v0, "limit":I
    move v1, p2

    .line 44
    .local v1, "child":I
    :goto_23
    iget-object v2, p0, Lgnu/kawa/xml/DescendantOrSelfAxis;->type:Lgnu/lists/NodePredicate;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v0, v3}, Lgnu/lists/AbstractSequence;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    .line 45
    if-nez v1, :cond_2e

    .line 46
    nop

    .line 49
    return-void

    .line 47
    :cond_2e
    invoke-interface {p3, p1, v1}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_23
.end method

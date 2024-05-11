.class public Lgnu/kawa/xml/Children;
.super Lgnu/mapping/MethodProc;
.source "Children.java"


# static fields
.field public static final children:Lgnu/kawa/xml/Children;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lgnu/kawa/xml/Children;

    invoke-direct {v0}, Lgnu/kawa/xml/Children;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Children;->children:Lgnu/kawa/xml/Children;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    return-void
.end method

.method public static children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V
    .registers 9
    .param p0, "tlist"    # Lgnu/lists/TreeList;
    .param p1, "index"    # I
    .param p2, "consumer"    # Lgnu/lists/Consumer;

    .line 16
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->gotoChildrenStart(I)I

    move-result v0

    .line 17
    .local v0, "child":I
    if-gez v0, :cond_7

    .line 18
    return-void

    .line 19
    :cond_7
    invoke-virtual {p0, p1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    .line 22
    .local v1, "limit":I
    :goto_b
    shl-int/lit8 v2, v0, 0x1

    .line 24
    .local v2, "ipos":I
    invoke-virtual {p0, v0, v1}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v3

    .line 26
    .local v3, "next":I
    move v4, v3

    .line 27
    .local v4, "next0":I
    if-ne v3, v0, :cond_18

    .line 28
    invoke-virtual {p0, v0}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    .line 29
    :cond_18
    if-gez v3, :cond_1c

    .line 30
    nop

    .line 37
    .end local v2    # "ipos":I
    .end local v3    # "next":I
    .end local v4    # "next0":I
    return-void

    .line 31
    .restart local v2    # "ipos":I
    .restart local v3    # "next":I
    .restart local v4    # "next0":I
    :cond_1c
    instance-of v5, p2, Lgnu/lists/PositionConsumer;

    if-eqz v5, :cond_27

    .line 32
    move-object v5, p2

    check-cast v5, Lgnu/lists/PositionConsumer;

    invoke-interface {v5, p0, v2}, Lgnu/lists/PositionConsumer;->writePosition(Lgnu/lists/AbstractSequence;I)V

    goto :goto_2a

    .line 34
    :cond_27
    invoke-virtual {p0, v0, v3, p2}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 35
    :goto_2a
    move v0, v3

    .line 36
    .end local v2    # "ipos":I
    .end local v3    # "next":I
    .end local v4    # "next0":I
    goto :goto_b
.end method

.method public static children(Ljava/lang/Object;Lgnu/lists/Consumer;)V
    .registers 5
    .param p0, "node"    # Ljava/lang/Object;
    .param p1, "consumer"    # Lgnu/lists/Consumer;

    .line 41
    instance-of v0, p0, Lgnu/lists/TreeList;

    if-eqz v0, :cond_c

    .line 43
    move-object v0, p0

    check-cast v0, Lgnu/lists/TreeList;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    goto :goto_28

    .line 45
    :cond_c
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_28

    instance-of v0, p0, Lgnu/lists/TreePosition;

    if-nez v0, :cond_28

    .line 47
    move-object v0, p0

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 48
    .local v0, "pos":Lgnu/lists/SeqPosition;
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v1, v1, Lgnu/lists/TreeList;

    if-eqz v1, :cond_28

    .line 49
    iget-object v1, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/lists/TreeList;

    iget v2, v0, Lgnu/lists/SeqPosition;->ipos:I

    shr-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2, p1}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 51
    .end local v0    # "pos":Lgnu/lists/SeqPosition;
    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 8
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 55
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 56
    .local v0, "consumer":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "node":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 58
    instance-of v2, v1, Lgnu/mapping/Values;

    if-eqz v2, :cond_31

    .line 60
    move-object v2, v1

    check-cast v2, Lgnu/lists/TreeList;

    .line 61
    .local v2, "tlist":Lgnu/lists/TreeList;
    const/4 v3, 0x0

    .line 64
    .local v3, "index":I
    :goto_11
    shl-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v4

    .line 65
    .local v4, "kind":I
    if-nez v4, :cond_1b

    .line 66
    nop

    .line 73
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    .end local v4    # "kind":I
    goto :goto_34

    .line 67
    .restart local v2    # "tlist":Lgnu/lists/TreeList;
    .restart local v3    # "index":I
    .restart local v4    # "kind":I
    :cond_1b
    const/16 v5, 0x20

    if-ne v4, v5, :cond_29

    .line 68
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Lgnu/lists/TreeList;->getPosNext(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    goto :goto_2c

    .line 70
    :cond_29
    invoke-static {v2, v3, v0}, Lgnu/kawa/xml/Children;->children(Lgnu/lists/TreeList;ILgnu/lists/Consumer;)V

    .line 71
    :goto_2c
    invoke-virtual {v2, v3}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v3

    .line 72
    .end local v4    # "kind":I
    goto :goto_11

    .line 75
    .end local v2    # "tlist":Lgnu/lists/TreeList;
    .end local v3    # "index":I
    :cond_31
    invoke-static {v1, v0}, Lgnu/kawa/xml/Children;->children(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 76
    :goto_34
    return-void
.end method

.method public numArgs()I
    .registers 2

    .line 12
    const/16 v0, 0x1001

    return v0
.end method

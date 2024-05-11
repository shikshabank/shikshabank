.class Lgnu/xquery/util/DistinctValuesConsumer;
.super Lgnu/lists/FilterConsumer;
.source "DistinctValues.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;


# instance fields
.field table:Lgnu/xquery/util/DistinctValuesHashTable;


# direct methods
.method public constructor <init>(Lgnu/xquery/util/NamedCollator;Lgnu/lists/Consumer;)V
    .registers 4
    .param p1, "collator"    # Lgnu/xquery/util/NamedCollator;
    .param p2, "out"    # Lgnu/lists/Consumer;

    .line 115
    invoke-direct {p0, p2}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 116
    new-instance v0, Lgnu/xquery/util/DistinctValuesHashTable;

    invoke-direct {v0, p1}, Lgnu/xquery/util/DistinctValuesHashTable;-><init>(Lgnu/xquery/util/NamedCollator;)V

    iput-object v0, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    .line 117
    return-void
.end method


# virtual methods
.method public consume(Lgnu/lists/SeqPosition;)V
    .registers 2
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .line 121
    invoke-virtual {p0, p1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z

    .line 131
    if-eqz p1, :cond_5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    invoke-virtual {p0, v0}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/Object;

    .line 136
    instance-of v0, p1, Lgnu/mapping/Values;

    if-eqz v0, :cond_8

    .line 138
    invoke-static {p1, p0}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 139
    return-void

    .line 141
    :cond_8
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_1d

    .line 143
    move-object v0, p1

    check-cast v0, Lgnu/kawa/xml/KNode;

    .line 144
    .local v0, "node":Lgnu/kawa/xml/KNode;
    iget-object v1, v0, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    iget v2, v0, Lgnu/kawa/xml/KNode;->ipos:I

    invoke-virtual {v1, v2}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 145
    return-void

    .line 147
    .end local v0    # "node":Lgnu/kawa/xml/KNode;
    :cond_1d
    iget-object v0, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lgnu/xquery/util/DistinctValuesHashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "old":Ljava/lang/Object;
    if-eqz v0, :cond_27

    .line 149
    return-void

    .line 150
    :cond_27
    iget-object v1, p0, Lgnu/xquery/util/DistinctValuesConsumer;->table:Lgnu/xquery/util/DistinctValuesHashTable;

    invoke-virtual {v1, p1, p1}, Lgnu/xquery/util/DistinctValuesHashTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lgnu/xquery/util/DistinctValuesConsumer;->base:Lgnu/lists/Consumer;

    invoke-interface {v1, p1}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .registers 4
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 126
    move-object v0, p1

    check-cast v0, Lgnu/xml/NodeTree;

    invoke-virtual {v0, p2}, Lgnu/xml/NodeTree;->typedValue(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xquery/util/DistinctValuesConsumer;->writeObject(Ljava/lang/Object;)V

    .line 127
    return-void
.end method

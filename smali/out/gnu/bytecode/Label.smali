.class public Lgnu/bytecode/Label;
.super Ljava/lang/Object;
.source "Label.java"


# instance fields
.field first_fixup:I

.field localTypes:[Lgnu/bytecode/Type;

.field needsStackMapEntry:Z

.field position:I

.field stackTypes:[Lgnu/bytecode/Type;

.field private typeChangeListeners:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "position"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lgnu/bytecode/Label;->position:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 39
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lgnu/bytecode/Label;-><init>(I)V

    .line 40
    return-void
.end method

.method private mergeLocalType(ILgnu/bytecode/Type;)V
    .registers 6
    .param p1, "varnum"    # I
    .param p2, "newType"    # Lgnu/bytecode/Type;

    .line 119
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v0, v0, p1

    .line 120
    .local v0, "oldLocal":Lgnu/bytecode/Type;
    invoke-virtual {p0, v0, p2}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 121
    .local v1, "newLocal":Lgnu/bytecode/Type;
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v1, v2, p1

    .line 122
    if-eq v1, v0, :cond_11

    .line 123
    invoke-direct {p0, p1, v1}, Lgnu/bytecode/Label;->notifyTypeChangeListeners(ILgnu/bytecode/Type;)V

    .line 124
    :cond_11
    return-void
.end method

.method private notifyTypeChangeListeners(ILgnu/bytecode/Type;)V
    .registers 7
    .param p1, "varnum"    # I
    .param p2, "newType"    # Lgnu/bytecode/Type;

    .line 128
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 129
    .local v0, "arr":[Ljava/lang/Object;
    if-eqz v0, :cond_35

    array-length v1, v0

    if-gt v1, p1, :cond_8

    goto :goto_35

    .line 131
    :cond_8
    aget-object v1, v0, p1

    .line 132
    .local v1, "listeners":Ljava/lang/Object;
    if-nez v1, :cond_d

    .line 133
    return-void

    .line 134
    :cond_d
    instance-of v2, v1, Lgnu/bytecode/Label;

    if-eqz v2, :cond_18

    .line 135
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/Label;

    invoke-direct {v2, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    goto :goto_2f

    .line 138
    :cond_18
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Label;

    .line 139
    .local v3, "listener":Lgnu/bytecode/Label;
    invoke-direct {v3, p1, p2}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .end local v3    # "listener":Lgnu/bytecode/Label;
    goto :goto_1f

    .line 141
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    if-nez p2, :cond_34

    .line 142
    const/4 v2, 0x0

    aput-object v2, v0, p1

    .line 143
    :cond_34
    return-void

    .line 130
    .end local v1    # "listeners":Ljava/lang/Object;
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method addTypeChangeListener(ILgnu/bytecode/Label;)V
    .registers 7
    .param p1, "varnum"    # I
    .param p2, "listener"    # Lgnu/bytecode/Label;

    .line 154
    iget-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 155
    .local v0, "arr":[Ljava/lang/Object;
    if-nez v0, :cond_c

    .line 156
    add-int/lit8 v1, p1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    move-object v0, v1

    iput-object v1, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    goto :goto_1c

    .line 157
    :cond_c
    array-length v1, v0

    if-gt v1, p1, :cond_1c

    .line 159
    add-int/lit8 v1, p1, 0xa

    new-array v0, v1, [Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iput-object v0, p0, Lgnu/bytecode/Label;->typeChangeListeners:[Ljava/lang/Object;

    .line 163
    :cond_1c
    :goto_1c
    aget-object v1, v0, p1

    .line 164
    .local v1, "set":Ljava/lang/Object;
    if-nez v1, :cond_23

    .line 165
    aput-object p2, v0, p1

    goto :goto_3b

    .line 169
    :cond_23
    instance-of v2, v1, Lgnu/bytecode/Label;

    if-eqz v2, :cond_35

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    move-object v3, v1

    check-cast v3, Lgnu/bytecode/Label;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    aput-object v2, v0, p1

    goto :goto_38

    .line 176
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    :cond_35
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    .line 177
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    :goto_38
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lgnu/bytecode/Label;>;"
    :goto_3b
    return-void
.end method

.method addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 183
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    if-eqz v0, :cond_2b

    .line 185
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v0, v0

    .line 186
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "varnum":I
    :goto_c
    if-ge v1, v0, :cond_2b

    .line 188
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    aget-object v2, v2, v1

    if-eqz v2, :cond_28

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    if-eqz v2, :cond_23

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    array-length v2, v2

    if-le v2, v1, :cond_23

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_28

    .line 192
    :cond_23
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    invoke-virtual {v2, v1, p0}, Lgnu/bytecode/Label;->addTypeChangeListener(ILgnu/bytecode/Label;)V

    .line 186
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 195
    .end local v0    # "len":I
    .end local v1    # "varnum":I
    :cond_2b
    return-void
.end method

.method public define(Lgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 216
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 218
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    goto :goto_2d

    .line 220
    :cond_b
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_2d

    .line 222
    array-length v0, v0

    .local v0, "i":I
    :cond_10
    :goto_10
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2d

    .line 224
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    if-eqz v2, :cond_28

    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    iget-object v2, v2, Lgnu/bytecode/LocalVarsAttr;->used:[Lgnu/bytecode/Variable;

    aget-object v2, v2, v0

    if-nez v2, :cond_10

    .line 227
    :cond_28
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    aput-object v1, v2, v0

    goto :goto_10

    .line 231
    .end local v0    # "i":I
    :cond_2d
    :goto_2d
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->previousLabel:Lgnu/bytecode/Label;

    .line 232
    iput-object v1, p1, Lgnu/bytecode/CodeAttr;->varsSetInCurrentBlock:[Z

    .line 233
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->defineRaw(Lgnu/bytecode/CodeAttr;)V

    .line 234
    iget-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_3b

    .line 236
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->setTypes(Lgnu/bytecode/Label;)V

    .line 237
    :cond_3b
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->setReachable(Z)V

    .line 238
    return-void
.end method

.method public defineRaw(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 202
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-gez v0, :cond_13

    .line 204
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    iput v0, p0, Lgnu/bytecode/Label;->position:I

    .line 205
    iget v0, p1, Lgnu/bytecode/CodeAttr;->fixup_count:I

    iput v0, p0, Lgnu/bytecode/Label;->first_fixup:I

    .line 206
    if-ltz v0, :cond_12

    .line 207
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 208
    :cond_12
    return-void

    .line 203
    :cond_13
    new-instance v0, Ljava/lang/Error;

    const-string v1, "label definition more than once"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final defined()Z
    .registers 2

    .line 30
    iget v0, p0, Lgnu/bytecode/Label;->position:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .registers 5
    .param p1, "t1"    # Lgnu/bytecode/Type;
    .param p2, "t2"    # Lgnu/bytecode/Type;

    .line 49
    instance-of v0, p1, Lgnu/bytecode/PrimType;

    instance-of v1, p2, Lgnu/bytecode/PrimType;

    if-eq v0, v1, :cond_8

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_8
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public setTypes(Lgnu/bytecode/CodeAttr;)V
    .registers 6
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 102
    invoke-virtual {p0, p1}, Lgnu/bytecode/Label;->addTypeChangeListeners(Lgnu/bytecode/CodeAttr;)V

    .line 103
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-eqz v0, :cond_15

    iget v0, p1, Lgnu/bytecode/CodeAttr;->SP:I

    iget-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-ne v0, v1, :cond_f

    goto :goto_15

    .line 104
    :cond_f
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 105
    :cond_15
    :goto_15
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    if-nez v1, :cond_1d

    const/4 v1, 0x0

    goto :goto_20

    :cond_1d
    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->local_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    :goto_20
    iget-object v2, p1, Lgnu/bytecode/CodeAttr;->stack_types:[Lgnu/bytecode/Type;

    iget v3, p1, Lgnu/bytecode/CodeAttr;->SP:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 109
    return-void
.end method

.method public setTypes(Lgnu/bytecode/Label;)V
    .registers 6
    .param p1, "other"    # Lgnu/bytecode/Label;

    .line 113
    iget-object v0, p1, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v1, v0

    iget-object v2, p1, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    array-length v3, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lgnu/bytecode/Label;->setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V

    .line 115
    return-void
.end method

.method setTypes([Lgnu/bytecode/Type;I[Lgnu/bytecode/Type;I)V
    .registers 11
    .param p1, "locals"    # [Lgnu/bytecode/Type;
    .param p2, "usedLocals"    # I
    .param p3, "stack"    # [Lgnu/bytecode/Type;
    .param p4, "usedStack"    # I

    .line 57
    :goto_0
    if-lez p2, :cond_c

    .line 59
    add-int/lit8 v0, p2, -0x1

    aget-object v0, p1, v0

    .line 60
    .local v0, "last":Lgnu/bytecode/Type;
    if-eqz v0, :cond_9

    .line 61
    goto :goto_c

    .line 57
    .end local v0    # "last":Lgnu/bytecode/Type;
    :cond_9
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 63
    :cond_c
    :goto_c
    iget-object v0, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    if-nez v0, :cond_2e

    .line 65
    const/4 v0, 0x0

    if-nez p4, :cond_18

    .line 66
    sget-object v1, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    goto :goto_1f

    .line 69
    :cond_18
    new-array v1, p4, [Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    .line 70
    invoke-static {p3, v0, v1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    :goto_1f
    if-nez p2, :cond_26

    .line 73
    sget-object v0, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    goto :goto_63

    .line 76
    :cond_26
    new-array v1, p2, [Lgnu/bytecode/Type;

    iput-object v1, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    .line 77
    invoke-static {p1, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_63

    .line 82
    :cond_2e
    move v1, p4

    .line 83
    .local v1, "SP":I
    array-length v0, v0

    .line 84
    .local v0, "slen":I
    if-ne v1, v0, :cond_64

    .line 86
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_44

    .line 88
    iget-object v3, p0, Lgnu/bytecode/Label;->stackTypes:[Lgnu/bytecode/Type;

    aget-object v4, v3, v2

    aget-object v5, p3, v2

    invoke-virtual {p0, v4, v5}, Lgnu/bytecode/Label;->mergeTypes(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v4

    aput-object v4, v3, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 90
    .end local v2    # "i":I
    :cond_44
    iget-object v2, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v3, v2

    if-ge p2, v3, :cond_4b

    move v2, p2

    goto :goto_4c

    :cond_4b
    array-length v2, v2

    .line 91
    .local v2, "min":I
    :goto_4c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4d
    if-ge v3, v2, :cond_57

    .line 93
    aget-object v4, p1, v3

    invoke-direct {p0, v3, v4}, Lgnu/bytecode/Label;->mergeLocalType(ILgnu/bytecode/Type;)V

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 95
    .end local v3    # "i":I
    :cond_57
    move v3, p2

    .restart local v3    # "i":I
    :goto_58
    iget-object v4, p0, Lgnu/bytecode/Label;->localTypes:[Lgnu/bytecode/Type;

    array-length v5, v4

    if-ge v3, v5, :cond_63

    .line 96
    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 98
    .end local v0    # "slen":I
    .end local v1    # "SP":I
    .end local v2    # "min":I
    .end local v3    # "i":I
    :cond_63
    :goto_63
    return-void

    .line 85
    .restart local v0    # "slen":I
    .restart local v1    # "SP":I
    :cond_64
    new-instance v2, Ljava/lang/InternalError;

    const-string v3, "inconsistent stack length"

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_6d

    :goto_6c
    throw v2

    :goto_6d
    goto :goto_6c
.end method

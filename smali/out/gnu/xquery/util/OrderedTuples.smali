.class public Lgnu/xquery/util/OrderedTuples;
.super Lgnu/lists/FilterConsumer;
.source "OrderedTuples.java"


# instance fields
.field body:Lgnu/mapping/Procedure;

.field comps:[Ljava/lang/Object;

.field first:I

.field n:I

.field next:[I

.field tuples:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgnu/lists/FilterConsumer;-><init>(Lgnu/lists/Consumer;)V

    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public static make$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/xquery/util/OrderedTuples;
    .registers 3
    .param p0, "body"    # Lgnu/mapping/Procedure;
    .param p1, "comps"    # [Ljava/lang/Object;

    .line 71
    new-instance v0, Lgnu/xquery/util/OrderedTuples;

    invoke-direct {v0}, Lgnu/xquery/util/OrderedTuples;-><init>()V

    .line 72
    .local v0, "tuples":Lgnu/xquery/util/OrderedTuples;
    iput-object p1, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    .line 73
    iput-object p0, v0, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    .line 74
    return-object v0
.end method


# virtual methods
.method cmp(II)I
    .registers 19
    .param p1, "a"    # I
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, v0, Lgnu/xquery/util/OrderedTuples;->comps:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_df

    .line 139
    aget-object v3, v2, v1

    check-cast v3, Lgnu/mapping/Procedure;

    .line 140
    .local v3, "comparator":Lgnu/mapping/Procedure;
    add-int/lit8 v5, v1, 0x1

    aget-object v5, v2, v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "flags":Ljava/lang/String;
    add-int/lit8 v6, v1, 0x2

    aget-object v2, v2, v6

    check-cast v2, Lgnu/xquery/util/NamedCollator;

    .line 142
    .local v2, "collator":Lgnu/xquery/util/NamedCollator;
    if-nez v2, :cond_1d

    .line 143
    sget-object v2, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 144
    :cond_1d
    iget-object v6, v0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v6, v6, p1

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v3, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 145
    .local v6, "val1":Ljava/lang/Object;
    iget-object v7, v0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v7, v7, p2

    check-cast v7, [Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v3, v7}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 146
    .local v7, "val2":Ljava/lang/Object;
    invoke-static {v6}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 147
    invoke-static {v7}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 148
    instance-of v8, v6, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v8, :cond_45

    .line 149
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 150
    :cond_45
    instance-of v8, v7, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v8, :cond_4d

    .line 151
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 152
    :cond_4d
    invoke-static {v6}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v8

    .line 153
    .local v8, "empty1":Z
    invoke-static {v7}, Lgnu/xquery/util/SequenceUtils;->isEmptySequence(Ljava/lang/Object;)Z

    move-result v9

    .line 154
    .local v9, "empty2":Z
    if-eqz v8, :cond_5b

    if-eqz v9, :cond_5b

    .line 155
    goto/16 :goto_cf

    .line 157
    :cond_5b
    const/4 v10, -0x1

    const/16 v11, 0x4c

    const/4 v12, 0x1

    if-nez v8, :cond_be

    if-eqz v9, :cond_64

    goto :goto_be

    .line 164
    :cond_64
    instance-of v13, v6, Ljava/lang/Number;

    if-eqz v13, :cond_77

    move-object v13, v6

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_77

    const/4 v13, 0x1

    goto :goto_78

    :cond_77
    const/4 v13, 0x0

    .line 166
    .local v13, "isNaN1":Z
    :goto_78
    instance-of v14, v7, Ljava/lang/Number;

    if-eqz v14, :cond_8b

    move-object v14, v7

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-eqz v14, :cond_8b

    const/4 v14, 0x1

    goto :goto_8c

    :cond_8b
    const/4 v14, 0x0

    .line 168
    .local v14, "isNaN2":Z
    :goto_8c
    if-eqz v13, :cond_91

    if-eqz v14, :cond_91

    .line 169
    goto :goto_cf

    .line 170
    :cond_91
    if-nez v13, :cond_b0

    if-eqz v14, :cond_96

    goto :goto_b0

    .line 175
    :cond_96
    instance-of v10, v6, Ljava/lang/Number;

    if-eqz v10, :cond_a3

    instance-of v10, v7, Ljava/lang/Number;

    if-eqz v10, :cond_a3

    .line 176
    invoke-static {v6, v7, v4}, Lgnu/kawa/functions/NumberCompare;->compare(Ljava/lang/Object;Ljava/lang/Object;Z)I

    move-result v10

    .local v10, "c":I
    goto :goto_cc

    .line 178
    .end local v10    # "c":I
    :cond_a3
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lgnu/xquery/util/NamedCollator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "c":I
    goto :goto_cc

    .line 172
    .end local v10    # "c":I
    :cond_b0
    :goto_b0
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 173
    .local v15, "emptyOrder":C
    if-ne v15, v11, :cond_b8

    const/4 v11, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v11, 0x0

    :goto_b9
    if-ne v13, v11, :cond_bc

    goto :goto_bd

    :cond_bc
    const/4 v10, 0x1

    .line 174
    .end local v15    # "emptyOrder":C
    .restart local v10    # "c":I
    :goto_bd
    goto :goto_cc

    .line 159
    .end local v10    # "c":I
    .end local v13    # "isNaN1":Z
    .end local v14    # "isNaN2":Z
    :cond_be
    :goto_be
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 160
    .local v13, "emptyOrder":C
    if-ne v13, v11, :cond_c6

    const/4 v11, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v11, 0x0

    :goto_c7
    if-ne v8, v11, :cond_ca

    goto :goto_cb

    :cond_ca
    const/4 v10, 0x1

    .line 161
    .end local v13    # "emptyOrder":C
    .restart local v10    # "c":I
    :goto_cb
    nop

    .line 180
    :goto_cc
    if-nez v10, :cond_d3

    .line 181
    nop

    .line 137
    .end local v2    # "collator":Lgnu/xquery/util/NamedCollator;
    .end local v3    # "comparator":Lgnu/mapping/Procedure;
    .end local v5    # "flags":Ljava/lang/String;
    .end local v6    # "val1":Ljava/lang/Object;
    .end local v7    # "val2":Ljava/lang/Object;
    .end local v8    # "empty1":Z
    .end local v9    # "empty2":Z
    .end local v10    # "c":I
    :goto_cf
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_3

    .line 182
    .restart local v2    # "collator":Lgnu/xquery/util/NamedCollator;
    .restart local v3    # "comparator":Lgnu/mapping/Procedure;
    .restart local v5    # "flags":Ljava/lang/String;
    .restart local v6    # "val1":Ljava/lang/Object;
    .restart local v7    # "val2":Ljava/lang/Object;
    .restart local v8    # "empty1":Z
    .restart local v9    # "empty2":Z
    .restart local v10    # "c":I
    :cond_d3
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v11, 0x41

    if-ne v4, v11, :cond_dd

    move v4, v10

    goto :goto_de

    :cond_dd
    neg-int v4, v10

    :goto_de
    return v4

    .line 184
    .end local v1    # "i":I
    .end local v2    # "collator":Lgnu/xquery/util/NamedCollator;
    .end local v3    # "comparator":Lgnu/mapping/Procedure;
    .end local v5    # "flags":Ljava/lang/String;
    .end local v6    # "val1":Ljava/lang/Object;
    .end local v7    # "val2":Ljava/lang/Object;
    .end local v8    # "empty1":Z
    .end local v9    # "empty2":Z
    .end local v10    # "c":I
    :cond_df
    return v4
.end method

.method emit(ILgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 92
    .local v0, "args":[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->body:Lgnu/mapping/Procedure;

    invoke-virtual {v1, v0, p2}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 93
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 94
    return-void
.end method

.method emit(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 85
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->first:I

    .local v0, "p":I
    :goto_2
    if-ltz v0, :cond_c

    .line 86
    invoke-virtual {p0, v0, p1}, Lgnu/xquery/util/OrderedTuples;->emit(ILgnu/mapping/CallContext;)V

    .line 85
    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v0, v1, v0

    goto :goto_2

    .line 87
    .end local v0    # "p":I
    :cond_c
    return-void
.end method

.method listsort(I)I
    .registers 14
    .param p1, "list"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 208
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 209
    return v1

    .line 211
    :cond_6
    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    .line 213
    const/4 v0, 0x1

    .line 215
    .local v0, "i":I
    :goto_b
    iget v2, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    if-ne v0, v2, :cond_80

    .line 217
    iget-object v2, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    add-int/lit8 v3, v0, -0x1

    aput v1, v2, v3

    .line 218
    nop

    .line 224
    const/4 v2, 0x1

    .line 227
    .local v2, "insize":I
    :goto_17
    move v3, p1

    .line 228
    .local v3, "p":I
    const/4 p1, -0x1

    .line 229
    const/4 v4, -0x1

    .line 231
    .local v4, "tail":I
    const/4 v5, 0x0

    .line 233
    .local v5, "nmerges":I
    :goto_1b
    if-ltz v3, :cond_75

    .line 234
    add-int/lit8 v6, v5, 0x1

    .line 236
    .end local v5    # "nmerges":I
    .local v6, "nmerges":I
    move v5, v3

    .line 237
    .local v5, "q":I
    const/4 v7, 0x0

    .line 238
    .local v7, "psize":I
    const/4 v0, 0x0

    move v11, v7

    move v7, v0

    move v0, v11

    .local v0, "psize":I
    .local v7, "i":I
    :goto_25
    if-ge v7, v2, :cond_33

    .line 239
    add-int/lit8 v0, v0, 0x1

    .line 240
    iget-object v8, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v5, v8, v5

    .line 241
    if-gez v5, :cond_30

    goto :goto_33

    .line 238
    :cond_30
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 244
    :cond_33
    :goto_33
    move v8, v2

    .line 247
    .local v8, "qsize":I
    :goto_34
    if-gtz v0, :cond_3f

    if-lez v8, :cond_3b

    if-ltz v5, :cond_3b

    goto :goto_3f

    .line 274
    :cond_3b
    move v3, v5

    move v5, v6

    move v0, v7

    goto :goto_1b

    .line 250
    :cond_3f
    :goto_3f
    if-nez v0, :cond_49

    .line 252
    move v9, v5

    .local v9, "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v5, v10, v5

    add-int/lit8 v8, v8, -0x1

    goto :goto_6b

    .line 253
    .end local v9    # "e":I
    :cond_49
    if-eqz v8, :cond_64

    if-gez v5, :cond_4e

    goto :goto_64

    .line 256
    :cond_4e
    invoke-virtual {p0, v3, v5}, Lgnu/xquery/util/OrderedTuples;->cmp(II)I

    move-result v9

    if-gtz v9, :cond_5c

    .line 259
    move v9, v3

    .restart local v9    # "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v3, v10, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_6b

    .line 262
    .end local v9    # "e":I
    :cond_5c
    move v9, v5

    .restart local v9    # "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v5, v10, v5

    add-int/lit8 v8, v8, -0x1

    goto :goto_6b

    .line 255
    .end local v9    # "e":I
    :cond_64
    :goto_64
    move v9, v3

    .restart local v9    # "e":I
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aget v3, v10, v3

    add-int/lit8 v0, v0, -0x1

    .line 266
    :goto_6b
    if-ltz v4, :cond_72

    .line 267
    iget-object v10, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aput v9, v10, v4

    goto :goto_73

    .line 269
    :cond_72
    move p1, v9

    .line 270
    :goto_73
    move v4, v9

    goto :goto_34

    .line 276
    .end local v6    # "nmerges":I
    .end local v7    # "i":I
    .end local v8    # "qsize":I
    .end local v9    # "e":I
    .local v0, "i":I
    .local v5, "nmerges":I
    :cond_75
    iget-object v6, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    aput v1, v6, v4

    .line 279
    const/4 v6, 0x1

    if-gt v5, v6, :cond_7d

    .line 280
    return p1

    .line 283
    :cond_7d
    mul-int/lit8 v2, v2, 0x2

    goto :goto_17

    .line 221
    .end local v2    # "insize":I
    .end local v3    # "p":I
    .end local v4    # "tail":I
    .end local v5    # "nmerges":I
    :cond_80
    iget-object v2, p0, Lgnu/xquery/util/OrderedTuples;->next:[I

    add-int/lit8 v3, v0, -0x1

    aput v0, v2, v3

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public run$X(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgnu/xquery/util/OrderedTuples;->listsort(I)I

    move-result v0

    iput v0, p0, Lgnu/xquery/util/OrderedTuples;->first:I

    .line 80
    invoke-virtual {p0, p1}, Lgnu/xquery/util/OrderedTuples;->emit(Lgnu/mapping/CallContext;)V

    .line 81
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 6
    .param p1, "v"    # Ljava/lang/Object;

    .line 54
    iget v0, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    iget-object v1, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_11

    .line 56
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 57
    .local v2, "tmp":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iput-object v2, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    .line 60
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_11
    iget-object v0, p0, Lgnu/xquery/util/OrderedTuples;->tuples:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/xquery/util/OrderedTuples;->n:I

    aput-object p1, v0, v1

    .line 61
    return-void
.end method

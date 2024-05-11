.class public Lgnu/xquery/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# static fields
.field public static final textOrElement:Lgnu/kawa/xml/NodeType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 163
    new-instance v0, Lgnu/kawa/xml/NodeType;

    const-string v1, "element-or-text"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .registers 5
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "iarg"    # I

    .line 21
    invoke-static {p0}, Lgnu/xquery/util/SequenceUtils;->isZeroOrOne(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22
    return-object p0

    .line 23
    :cond_7
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "xs:item()?"

    invoke-direct {v0, p1, p2, p0, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public static deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .registers 24
    .param p0, "seq1"    # Lgnu/xml/NodeTree;
    .param p1, "ipos1"    # I
    .param p2, "seq2"    # Lgnu/xml/NodeTree;
    .param p3, "ipos2"    # I
    .param p4, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 188
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v3

    .line 189
    .local v3, "kind1":I
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v4

    .line 190
    .local v4, "kind2":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_f0

    :pswitch_13
    move/from16 v14, p3

    move v7, v6

    .local v7, "nattr1":I
    move v8, v6

    .local v8, "nattr2":I
    move-object v9, v5

    .local v9, "loc2":Ljava/lang/String;
    move-object v10, v5

    .local v10, "ns1":Ljava/lang/String;
    move v11, v6

    .local v11, "attr1":I
    move-object v12, v5

    .line 244
    .local v5, "loc1":Ljava/lang/String;
    .local v12, "ns2":Ljava/lang/String;
    if-eq v3, v4, :cond_e3

    .line 245
    return v6

    .line 190
    .end local v5    # "loc1":Ljava/lang/String;
    .end local v7    # "nattr1":I
    .end local v8    # "nattr2":I
    .end local v9    # "loc2":Ljava/lang/String;
    .end local v10    # "ns1":Ljava/lang/String;
    .end local v11    # "attr1":I
    .end local v12    # "ns2":Ljava/lang/String;
    :pswitch_1e
    move v7, v6

    .restart local v7    # "nattr1":I
    move v8, v6

    .restart local v8    # "nattr2":I
    move-object v9, v5

    .restart local v9    # "loc2":Ljava/lang/String;
    move-object v10, v5

    .restart local v10    # "ns1":Ljava/lang/String;
    move v11, v6

    .restart local v11    # "attr1":I
    move-object v12, v5

    .line 237
    .restart local v5    # "loc1":Ljava/lang/String;
    .restart local v12    # "ns2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posTarget(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    .line 238
    return v6

    .line 239
    :cond_33
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    .line 190
    .end local v5    # "loc1":Ljava/lang/String;
    .end local v7    # "nattr1":I
    .end local v8    # "nattr2":I
    .end local v9    # "loc2":Ljava/lang/String;
    .end local v10    # "ns1":Ljava/lang/String;
    .end local v11    # "attr1":I
    .end local v12    # "ns2":Ljava/lang/String;
    :pswitch_40
    move v7, v6

    .restart local v7    # "nattr1":I
    move v8, v6

    .restart local v8    # "nattr2":I
    move-object v9, v5

    .restart local v9    # "loc2":Ljava/lang/String;
    move-object v10, v5

    .restart local v10    # "ns1":Ljava/lang/String;
    move v11, v6

    .restart local v11    # "attr1":I
    move-object v12, v5

    .line 230
    .restart local v5    # "loc1":Ljava/lang/String;
    .restart local v12    # "ns2":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v14

    if-ne v13, v14, :cond_68

    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v14

    if-eq v13, v14, :cond_5b

    goto :goto_68

    .line 233
    :cond_5b
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KAttr;->getObjectValue(Lgnu/xml/NodeTree;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v6, v13, v2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v6

    return v6

    .line 232
    :cond_68
    :goto_68
    return v6

    .line 190
    .end local v5    # "loc1":Ljava/lang/String;
    .end local v7    # "nattr1":I
    .end local v8    # "nattr2":I
    .end local v9    # "loc2":Ljava/lang/String;
    .end local v10    # "ns1":Ljava/lang/String;
    .end local v11    # "attr1":I
    .end local v12    # "ns2":Ljava/lang/String;
    :pswitch_69
    move v7, v6

    .restart local v7    # "nattr1":I
    move v8, v6

    .restart local v8    # "nattr2":I
    move-object v9, v5

    .restart local v9    # "loc2":Ljava/lang/String;
    move-object v10, v5

    .local v6, "attr1":I
    .restart local v10    # "ns1":Ljava/lang/String;
    move-object v11, v5

    .local v11, "ns2":Ljava/lang/String;
    move/from16 v14, p3

    .restart local v5    # "loc1":Ljava/lang/String;
    goto/16 :goto_de

    .line 193
    .end local v5    # "loc1":Ljava/lang/String;
    .end local v6    # "attr1":I
    .end local v7    # "nattr1":I
    .end local v8    # "nattr2":I
    .end local v9    # "loc2":Ljava/lang/String;
    .end local v10    # "ns1":Ljava/lang/String;
    .end local v11    # "ns2":Ljava/lang/String;
    :pswitch_72
    if-eq v3, v4, :cond_75

    .line 194
    return v6

    .line 196
    :cond_75
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    .restart local v5    # "loc1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v9

    .line 198
    .restart local v9    # "loc2":Ljava/lang/String;
    if-eq v5, v9, :cond_80

    .line 199
    return v6

    .line 200
    :cond_80
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    .restart local v10    # "ns1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v11

    .line 202
    .restart local v11    # "ns2":Ljava/lang/String;
    if-eq v10, v11, :cond_8b

    .line 203
    return v6

    .line 204
    :cond_8b
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/NodeTree;->firstAttributePos(I)I

    move-result v7

    .line 205
    .local v7, "attr1":I
    const/4 v8, 0x0

    .line 208
    .local v8, "nattr1":I
    :goto_90
    if-eqz v7, :cond_cd

    invoke-virtual {v0, v7}, Lgnu/xml/NodeTree;->getNextKind(I)I

    move-result v12

    const/16 v13, 0x23

    if-eq v12, v13, :cond_9f

    .line 210
    move/from16 v14, p3

    move-object/from16 v17, v5

    goto :goto_d1

    .line 211
    :cond_9f
    add-int/lit8 v8, v8, 0x1

    .line 212
    invoke-virtual {v0, v7}, Lgnu/xml/NodeTree;->posLocalName(I)Ljava/lang/String;

    move-result-object v12

    .line 213
    .local v12, "local":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lgnu/xml/NodeTree;->posNamespaceURI(I)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "ns":Ljava/lang/String;
    move/from16 v14, p3

    invoke-virtual {v1, v14, v13, v12}, Lgnu/xml/NodeTree;->getAttributeI(ILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 215
    .local v15, "attr2":I
    if-nez v15, :cond_b2

    .line 216
    return v6

    .line 217
    :cond_b2
    invoke-static {v0, v7}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v6

    .line 218
    .local v6, "aval1":Ljava/lang/String;
    move-object/from16 v17, v5

    .end local v5    # "loc1":Ljava/lang/String;
    .local v17, "loc1":Ljava/lang/String;
    invoke-static {v1, v15}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "aval2":Ljava/lang/String;
    invoke-static {v6, v5, v2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v18

    if-nez v18, :cond_c5

    .line 220
    const/16 v16, 0x0

    return v16

    .line 221
    :cond_c5
    invoke-virtual {v0, v7}, Lgnu/xml/NodeTree;->nextPos(I)I

    move-result v7

    .line 222
    .end local v5    # "aval2":Ljava/lang/String;
    .end local v6    # "aval1":Ljava/lang/String;
    .end local v12    # "local":Ljava/lang/String;
    .end local v13    # "ns":Ljava/lang/String;
    .end local v15    # "attr2":I
    move-object/from16 v5, v17

    const/4 v6, 0x0

    goto :goto_90

    .line 208
    .end local v17    # "loc1":Ljava/lang/String;
    .local v5, "loc1":Ljava/lang/String;
    :cond_cd
    move/from16 v14, p3

    move-object/from16 v17, v5

    .line 223
    .end local v5    # "loc1":Ljava/lang/String;
    .restart local v17    # "loc1":Ljava/lang/String;
    :goto_d1
    invoke-virtual/range {p2 .. p3}, Lgnu/xml/NodeTree;->getAttributeCount(I)I

    move-result v5

    .line 224
    .local v5, "nattr2":I
    if-eq v8, v5, :cond_d9

    .line 225
    const/4 v6, 0x0

    return v6

    .line 224
    :cond_d9
    move v6, v7

    move v7, v8

    move v8, v5

    move-object/from16 v5, v17

    .line 228
    .end local v17    # "loc1":Ljava/lang/String;
    .local v5, "loc1":Ljava/lang/String;
    .local v6, "attr1":I
    .local v7, "nattr1":I
    .local v8, "nattr2":I
    :goto_de
    invoke-static/range {p0 .. p4}, Lgnu/xquery/util/SequenceUtils;->deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v12

    return v12

    .line 246
    .end local v6    # "attr1":I
    .local v11, "attr1":I
    .local v12, "ns2":Ljava/lang/String;
    :cond_e3
    invoke-static/range {p0 .. p1}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p2 .. p3}, Lgnu/kawa/xml/KNode;->getNodeValue(Lgnu/xml/NodeTree;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    :pswitch_data_f0
    .packed-switch 0x21
        :pswitch_72
        :pswitch_69
        :pswitch_40
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method public static deepEqual(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .registers 20
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 262
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    if-ne v1, v2, :cond_8

    .line 263
    return v0

    .line 264
    :cond_8
    const/4 v3, 0x0

    if-eqz v1, :cond_cc

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v4, :cond_14

    move-object/from16 v8, p2

    const/4 v1, 0x0

    goto/16 :goto_cf

    .line 266
    :cond_14
    if-eqz v2, :cond_c8

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v4, :cond_1e

    move-object/from16 v8, p2

    goto/16 :goto_ca

    .line 268
    :cond_1e
    const/4 v4, 0x1

    .local v4, "ipos1":I
    const/4 v5, 0x1

    .line 269
    .local v5, "ipos2":I
    instance-of v6, v1, Lgnu/mapping/Values;

    .line 270
    .local v6, "is1seq":Z
    instance-of v7, v2, Lgnu/mapping/Values;

    .line 271
    .local v7, "is2seq":Z
    const/4 v8, 0x0

    if-eqz v6, :cond_2b

    move-object v9, v1

    check-cast v9, Lgnu/mapping/Values;

    goto :goto_2c

    :cond_2b
    move-object v9, v8

    .line 272
    .local v9, "vals1":Lgnu/mapping/Values;
    :goto_2c
    if-eqz v7, :cond_31

    move-object v8, v2

    check-cast v8, Lgnu/mapping/Values;

    .line 273
    .local v8, "vals2":Lgnu/mapping/Values;
    :cond_31
    const/4 v10, 0x1

    .line 276
    .local v10, "first":Z
    :goto_32
    if-eqz v6, :cond_3e

    .line 278
    if-eqz v10, :cond_3a

    .line 279
    invoke-virtual {v9}, Lgnu/mapping/Values;->startPos()I

    move-result v4

    .line 280
    :cond_3a
    invoke-virtual {v9, v4}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v4

    .line 282
    :cond_3e
    if-eqz v7, :cond_4a

    .line 284
    if-eqz v10, :cond_46

    .line 285
    invoke-virtual {v8}, Lgnu/mapping/Values;->startPos()I

    move-result v5

    .line 286
    :cond_46
    invoke-virtual {v8, v5}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    .line 288
    :cond_4a
    if-eqz v4, :cond_be

    if-nez v5, :cond_54

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    goto/16 :goto_c2

    .line 290
    :cond_54
    if-eqz v6, :cond_5b

    invoke-virtual {v9, v4}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_5c

    :cond_5b
    move-object v11, v1

    .line 291
    .local v11, "item1":Ljava/lang/Object;
    :goto_5c
    if-eqz v7, :cond_63

    invoke-virtual {v8, v5}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_64

    :cond_63
    move-object v12, v2

    .line 293
    .local v12, "item2":Ljava/lang/Object;
    :goto_64
    instance-of v13, v11, Lgnu/kawa/xml/KNode;

    if-nez v13, :cond_7c

    instance-of v13, v12, Lgnu/kawa/xml/KNode;

    if-nez v13, :cond_7c

    .line 297
    :try_start_6c
    invoke-static/range {p0 .. p2}, Lgnu/xquery/util/SequenceUtils;->deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v13
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_78

    if-nez v13, :cond_73

    .line 298
    return v3

    .line 303
    :cond_73
    move-object/from16 v16, v8

    move-object/from16 v8, p2

    goto :goto_a3

    .line 300
    :catchall_78
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 302
    .local v0, "ex":Ljava/lang/Throwable;
    return v3

    .line 305
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_7c
    instance-of v13, v11, Lgnu/kawa/xml/KNode;

    if-eqz v13, :cond_b8

    instance-of v13, v12, Lgnu/kawa/xml/KNode;

    if-eqz v13, :cond_b8

    .line 307
    move-object v13, v11

    check-cast v13, Lgnu/kawa/xml/KNode;

    .line 308
    .local v13, "node1":Lgnu/kawa/xml/KNode;
    move-object v14, v12

    check-cast v14, Lgnu/kawa/xml/KNode;

    .line 309
    .local v14, "node2":Lgnu/kawa/xml/KNode;
    iget-object v15, v13, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v15, Lgnu/xml/NodeTree;

    iget v0, v13, Lgnu/kawa/xml/KNode;->ipos:I

    iget-object v3, v14, Lgnu/kawa/xml/KNode;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/xml/NodeTree;

    iget v1, v14, Lgnu/kawa/xml/KNode;->ipos:I

    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .end local v8    # "vals2":Lgnu/mapping/Values;
    .local v16, "vals2":Lgnu/mapping/Values;
    invoke-static {v15, v0, v3, v1, v8}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v0

    if-nez v0, :cond_a2

    .line 312
    const/4 v1, 0x0

    return v1

    .line 313
    .end local v13    # "node1":Lgnu/kawa/xml/KNode;
    .end local v14    # "node2":Lgnu/kawa/xml/KNode;
    :cond_a2
    nop

    .line 317
    :goto_a3
    if-eqz v10, :cond_b0

    .line 319
    const/4 v0, 0x0

    .line 320
    .end local v10    # "first":Z
    .local v0, "first":Z
    if-nez v6, :cond_a9

    .line 321
    const/4 v4, 0x0

    .line 322
    :cond_a9
    if-nez v7, :cond_af

    .line 323
    const/4 v1, 0x0

    move v10, v0

    move v5, v1

    .end local v5    # "ipos2":I
    .local v1, "ipos2":I
    goto :goto_b0

    .line 322
    .end local v1    # "ipos2":I
    .restart local v5    # "ipos2":I
    :cond_af
    move v10, v0

    .line 325
    .end local v0    # "first":Z
    .end local v11    # "item1":Ljava/lang/Object;
    .end local v12    # "item2":Ljava/lang/Object;
    .restart local v10    # "first":Z
    :cond_b0
    :goto_b0
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v8, v16

    goto/16 :goto_32

    .line 305
    .end local v16    # "vals2":Lgnu/mapping/Values;
    .restart local v8    # "vals2":Lgnu/mapping/Values;
    .restart local v11    # "item1":Ljava/lang/Object;
    .restart local v12    # "item2":Ljava/lang/Object;
    :cond_b8
    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .line 315
    .end local v8    # "vals2":Lgnu/mapping/Values;
    .restart local v16    # "vals2":Lgnu/mapping/Values;
    const/4 v1, 0x0

    return v1

    .line 288
    .end local v11    # "item1":Ljava/lang/Object;
    .end local v12    # "item2":Ljava/lang/Object;
    .end local v16    # "vals2":Lgnu/mapping/Values;
    .restart local v8    # "vals2":Lgnu/mapping/Values;
    :cond_be
    move-object/from16 v16, v8

    move-object/from16 v8, p2

    .line 289
    .end local v8    # "vals2":Lgnu/mapping/Values;
    .restart local v16    # "vals2":Lgnu/mapping/Values;
    :goto_c2
    if-ne v4, v5, :cond_c6

    const/4 v0, 0x1

    goto :goto_c7

    :cond_c6
    const/4 v0, 0x0

    :goto_c7
    return v0

    .line 266
    .end local v4    # "ipos1":I
    .end local v5    # "ipos2":I
    .end local v6    # "is1seq":Z
    .end local v7    # "is2seq":Z
    .end local v9    # "vals1":Lgnu/mapping/Values;
    .end local v10    # "first":Z
    .end local v16    # "vals2":Lgnu/mapping/Values;
    :cond_c8
    move-object/from16 v8, p2

    .line 267
    :goto_ca
    const/4 v1, 0x0

    return v1

    .line 264
    :cond_cc
    move-object/from16 v8, p2

    const/4 v1, 0x0

    .line 265
    :goto_cf
    if-eqz v2, :cond_d8

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v2, v0, :cond_d6

    goto :goto_d8

    :cond_d6
    const/4 v0, 0x0

    goto :goto_d9

    :cond_d8
    :goto_d8
    const/4 v0, 0x1

    :goto_d9
    return v0
.end method

.method public static deepEqualChildren(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z
    .registers 10
    .param p0, "seq1"    # Lgnu/xml/NodeTree;
    .param p1, "ipos1"    # I
    .param p2, "seq2"    # Lgnu/xml/NodeTree;
    .param p3, "ipos2"    # I
    .param p4, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 170
    sget-object v0, Lgnu/xquery/util/SequenceUtils;->textOrElement:Lgnu/kawa/xml/NodeType;

    .line 171
    .local v0, "filter":Lgnu/kawa/xml/NodeType;
    invoke-virtual {p0, p1, v0}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v1

    .line 172
    .local v1, "child1":I
    invoke-virtual {p2, p3, v0}, Lgnu/xml/NodeTree;->firstChildPos(ILgnu/lists/ItemPredicate;)I

    move-result v2

    .line 175
    .local v2, "child2":I
    :goto_a
    const/4 v3, 0x0

    if-eqz v1, :cond_21

    if-nez v2, :cond_10

    goto :goto_21

    .line 177
    :cond_10
    invoke-static {p0, v1, p2, v2, p4}, Lgnu/xquery/util/SequenceUtils;->deepEqual(Lgnu/xml/NodeTree;ILgnu/xml/NodeTree;ILgnu/xquery/util/NamedCollator;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 178
    return v3

    .line 179
    :cond_17
    const/4 v4, -0x1

    invoke-virtual {p0, v1, v0, v4, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v1

    .line 180
    invoke-virtual {p2, v2, v0, v4, v3}, Lgnu/xml/NodeTree;->nextMatching(ILgnu/lists/ItemPredicate;IZ)I

    move-result v2

    goto :goto_a

    .line 176
    :cond_21
    :goto_21
    if-ne v1, v2, :cond_24

    const/4 v3, 0x1

    :cond_24
    return v3
.end method

.method public static deepEqualItems(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z
    .registers 4
    .param p0, "arg1"    # Ljava/lang/Object;
    .param p1, "arg2"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;

    .line 254
    invoke-static {p0}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lgnu/xquery/util/NumberValue;->isNaN(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 255
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_e
    const/16 v0, 0x8

    invoke-static {v0, p0, p1, p2}, Lgnu/xquery/util/Compare;->atomicCompare(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v0

    return v0
.end method

.method public static exactlyOne(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 41
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_5

    .line 43
    return-object p0

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static exists(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 53
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public static indexOf$X(Ljava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;Lgnu/mapping/CallContext;)V
    .registers 10
    .param p0, "seqParam"    # Ljava/lang/Object;
    .param p1, "srchParam"    # Ljava/lang/Object;
    .param p2, "collator"    # Lgnu/xquery/util/NamedCollator;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 147
    iget-object v0, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 148
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    const/16 v2, 0x48

    if-eqz v1, :cond_28

    .line 150
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 151
    .local v1, "vals":Lgnu/mapping/Values;
    invoke-virtual {v1}, Lgnu/mapping/Values;->startPos()I

    move-result v3

    .line 152
    .local v3, "ipos":I
    const/4 v4, 0x1

    .line 153
    .local v4, "i":I
    :goto_10
    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v5

    move v3, v5

    if-eqz v5, :cond_27

    .line 154
    invoke-virtual {v1, v3}, Lgnu/mapping/Values;->getPosPrevious(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 157
    invoke-interface {v0, v4}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 153
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 158
    .end local v1    # "vals":Lgnu/mapping/Values;
    .end local v3    # "ipos":I
    .end local v4    # "i":I
    :cond_27
    goto :goto_32

    .line 159
    :cond_28
    invoke-static {v2, p0, p1, p2}, Lgnu/xquery/util/Compare;->apply(ILjava/lang/Object;Ljava/lang/Object;Lgnu/xquery/util/NamedCollator;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 160
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 161
    :cond_32
    :goto_32
    return-void
.end method

.method public static insertBefore$X(Ljava/lang/Object;JLjava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 22
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "position"    # J
    .param p3, "inserts"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 60
    .local v3, "out":Lgnu/lists/Consumer;
    const/4 v4, 0x0

    .line 61
    .local v4, "written":Z
    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-gtz v7, :cond_12

    .line 62
    const-wide/16 v5, 0x1

    .end local p1    # "position":J
    .local v5, "position":J
    goto :goto_14

    .line 61
    .end local v5    # "position":J
    .restart local p1    # "position":J
    :cond_12
    move-wide/from16 v5, p1

    .line 63
    .end local p1    # "position":J
    .restart local v5    # "position":J
    :goto_14
    instance-of v7, v0, Lgnu/mapping/Values;

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_3c

    .line 65
    move-object v7, v0

    check-cast v7, Lgnu/mapping/Values;

    .line 66
    .local v7, "values":Lgnu/mapping/Values;
    const/4 v10, 0x0

    .line 67
    .local v10, "ipos":I
    const-wide/16 v11, 0x0

    .line 70
    .local v11, "i":J
    :goto_20
    invoke-virtual {v7, v10}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v13

    .line 71
    .local v13, "next":I
    if-nez v13, :cond_28

    if-eqz v4, :cond_2f

    :cond_28
    add-long v14, v11, v8

    move-wide v11, v14

    cmp-long v16, v14, v5

    if-nez v16, :cond_33

    .line 73
    :cond_2f
    invoke-static {v1, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 74
    const/4 v4, 0x1

    .line 76
    :cond_33
    if-nez v13, :cond_37

    .line 77
    nop

    .line 81
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v10    # "ipos":I
    .end local v11    # "i":J
    .end local v13    # "next":I
    goto :goto_4d

    .line 78
    .restart local v7    # "values":Lgnu/mapping/Values;
    .restart local v10    # "ipos":I
    .restart local v11    # "i":J
    .restart local v13    # "next":I
    :cond_37
    invoke-virtual {v7, v10, v13, v3}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 79
    move v10, v13

    .line 80
    .end local v13    # "next":I
    goto :goto_20

    .line 84
    .end local v7    # "values":Lgnu/mapping/Values;
    .end local v10    # "ipos":I
    .end local v11    # "i":J
    :cond_3c
    cmp-long v7, v5, v8

    if-gtz v7, :cond_43

    .line 85
    invoke-static {v1, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 86
    :cond_43
    invoke-interface {v3, v0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 87
    cmp-long v7, v5, v8

    if-lez v7, :cond_4d

    .line 88
    invoke-static {v1, v3}, Lgnu/mapping/Values;->writeValues(Ljava/lang/Object;Lgnu/lists/Consumer;)V

    .line 90
    :cond_4d
    :goto_4d
    return-void
.end method

.method public static isEmptySequence(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 48
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_f

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static isZeroOrOne(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public static oneOrMore(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_14

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_14

    .line 34
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 35
    :cond_14
    :goto_14
    return-object p0
.end method

.method public static remove$X(Ljava/lang/Object;JLgnu/mapping/CallContext;)V
    .registers 15
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "position"    # J
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 94
    iget-object v0, p3, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 95
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_22

    .line 97
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 98
    .local v1, "values":Lgnu/mapping/Values;
    const/4 v4, 0x0

    .line 99
    .local v4, "ipos":I
    const-wide/16 v5, 0x0

    .line 102
    .local v5, "i":J
    :goto_e
    invoke-virtual {v1, v4}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v7

    .line 103
    .local v7, "next":I
    if-nez v7, :cond_16

    .line 104
    nop

    .line 109
    .end local v1    # "values":Lgnu/mapping/Values;
    .end local v4    # "ipos":I
    .end local v5    # "i":J
    .end local v7    # "next":I
    goto :goto_29

    .line 105
    .restart local v1    # "values":Lgnu/mapping/Values;
    .restart local v4    # "ipos":I
    .restart local v5    # "i":J
    .restart local v7    # "next":I
    :cond_16
    add-long v8, v5, v2

    move-wide v5, v8

    cmp-long v10, v8, p1

    if-eqz v10, :cond_20

    .line 106
    invoke-virtual {v1, v4, v7, v0}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    .line 107
    :cond_20
    move v4, v7

    .line 108
    .end local v7    # "next":I
    goto :goto_e

    .line 110
    .end local v1    # "values":Lgnu/mapping/Values;
    .end local v4    # "ipos":I
    .end local v5    # "i":J
    :cond_22
    cmp-long v1, p1, v2

    if-eqz v1, :cond_29

    .line 111
    invoke-interface {v0, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 112
    :cond_29
    :goto_29
    return-void
.end method

.method public static reverse$X(Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 10
    .param p0, "arg"    # Ljava/lang/Object;
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 117
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 118
    .local v0, "out":Lgnu/lists/Consumer;
    instance-of v1, p0, Lgnu/mapping/Values;

    if-nez v1, :cond_a

    .line 120
    invoke-interface {v0, p0}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 121
    return-void

    .line 123
    :cond_a
    move-object v1, p0

    check-cast v1, Lgnu/mapping/Values;

    .line 124
    .local v1, "vals":Lgnu/mapping/Values;
    const/4 v2, 0x0

    .line 125
    .local v2, "ipos":I
    const/16 v3, 0x64

    new-array v3, v3, [I

    .line 126
    .local v3, "poses":[I
    const/4 v4, 0x0

    .line 129
    .local v4, "n":I
    :goto_13
    array-length v5, v3

    if-lt v4, v5, :cond_1f

    .line 131
    mul-int/lit8 v5, v4, 0x2

    new-array v5, v5, [I

    .line 132
    .local v5, "t":[I
    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v3, v5

    .line 135
    .end local v5    # "t":[I
    :cond_1f
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "n":I
    .local v5, "n":I
    aput v2, v3, v4

    .line 136
    invoke-virtual {v1, v2}, Lgnu/mapping/Values;->nextPos(I)I

    move-result v2

    .line 137
    if-nez v2, :cond_3b

    .line 138
    nop

    .line 140
    add-int/lit8 v4, v5, -0x1

    .local v4, "i":I
    :goto_2c
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_3a

    .line 141
    aget v6, v3, v4

    add-int/lit8 v7, v4, 0x1

    aget v7, v3, v7

    invoke-virtual {v1, v6, v7, v0}, Lgnu/mapping/Values;->consumePosRange(IILgnu/lists/Consumer;)V

    goto :goto_2c

    .line 142
    .end local v4    # "i":I
    :cond_3a
    return-void

    .line 137
    :cond_3b
    move v4, v5

    goto :goto_13
.end method

.method public static zeroOrOne(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "arg"    # Ljava/lang/Object;

    .line 28
    const-string v0, "zero-or-one"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lgnu/xquery/util/SequenceUtils;->coerceToZeroOrOne(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.class public Lgnu/bytecode/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# static fields
.field public static final CLASS:B = 0x7t

.field public static final DOUBLE:B = 0x6t

.field public static final FIELDREF:B = 0x9t

.field public static final FLOAT:B = 0x4t

.field public static final INTEGER:B = 0x3t

.field public static final INTERFACE_METHODREF:B = 0xbt

.field public static final LONG:B = 0x5t

.field public static final METHODREF:B = 0xat

.field public static final NAME_AND_TYPE:B = 0xct

.field public static final STRING:B = 0x8t

.field public static final UTF8:B = 0x1t


# instance fields
.field count:I

.field hashTab:[Lgnu/bytecode/CpoolEntry;

.field locked:Z

.field pool:[Lgnu/bytecode/CpoolEntry;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 10
    .param p1, "dstr"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    .line 346
    add-int/2addr v0, v1

    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    iput-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 347
    const/4 v0, 0x1

    .local v0, "i":I
    const/4 v2, 0x0

    :goto_12
    iget v3, p0, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v0, v3, :cond_9e

    .line 349
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 350
    .local v3, "tag":B
    invoke-virtual {p0, v0, v3}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v4

    .line 351
    .local v4, "entry":Lgnu/bytecode/CpoolEntry;
    packed-switch v3, :pswitch_data_a0

    :pswitch_21
    goto/16 :goto_9b

    .line 382
    .local v2, "ref":Lgnu/bytecode/CpoolRef;
    :pswitch_23
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolNameAndType;

    .line 383
    .local v5, "ntyp":Lgnu/bytecode/CpoolNameAndType;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/CpoolUtf8;

    iput-object v6, v5, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 384
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/CpoolUtf8;

    iput-object v6, v5, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    goto :goto_9b

    .line 376
    .end local v2    # "ref":Lgnu/bytecode/CpoolRef;
    .end local v5    # "ntyp":Lgnu/bytecode/CpoolNameAndType;
    :pswitch_3f
    move-object v2, v4

    check-cast v2, Lgnu/bytecode/CpoolRef;

    .line 377
    .restart local v2    # "ref":Lgnu/bytecode/CpoolRef;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v5

    iput-object v5, v2, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    .line 378
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    const/16 v6, 0xc

    invoke-virtual {p0, v5, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v5

    check-cast v5, Lgnu/bytecode/CpoolNameAndType;

    iput-object v5, v2, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    .line 380
    goto :goto_9b

    .line 370
    .end local v2    # "ref":Lgnu/bytecode/CpoolRef;
    :pswitch_5b
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolString;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/CpoolUtf8;

    iput-object v6, v5, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    .line 372
    goto :goto_9b

    .line 366
    :pswitch_6b
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolClass;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    invoke-virtual {p0, v6, v1}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v6

    check-cast v6, Lgnu/bytecode/CpoolUtf8;

    iput-object v6, v5, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    .line 368
    goto :goto_9b

    .line 362
    :pswitch_7b
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolValue2;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    iput-wide v6, v5, Lgnu/bytecode/CpoolValue2;->value:J

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 364
    goto :goto_9b

    .line 358
    :pswitch_87
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolValue1;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lgnu/bytecode/CpoolValue1;->value:I

    .line 359
    goto :goto_9b

    .line 354
    :pswitch_91
    move-object v5, v4

    check-cast v5, Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 355
    nop

    .line 347
    .end local v3    # "tag":B
    .end local v4    # "entry":Lgnu/bytecode/CpoolEntry;
    :goto_9b
    add-int/2addr v0, v1

    goto/16 :goto_12

    .line 388
    .end local v0    # "i":I
    :cond_9e
    return-void

    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_91
        :pswitch_21
        :pswitch_87
        :pswitch_87
        :pswitch_7b
        :pswitch_7b
        :pswitch_6b
        :pswitch_5b
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public addClass(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolClass;
    .registers 7
    .param p1, "name"    # Lgnu/bytecode/CpoolUtf8;

    .line 109
    invoke-static {p1}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    .line 112
    .local v0, "h":I
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_b

    .line 113
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 114
    :cond_b
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 115
    .local v1, "index":I
    aget-object v2, v2, v1

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_15
    if-eqz v2, :cond_2a

    .line 117
    iget v3, v2, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v3, :cond_27

    instance-of v3, v2, Lgnu/bytecode/CpoolClass;

    if-eqz v3, :cond_27

    .line 119
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolClass;

    .line 120
    .local v3, "ent":Lgnu/bytecode/CpoolClass;
    iget-object v4, v3, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    if-ne v4, p1, :cond_27

    .line 121
    return-object v3

    .line 115
    .end local v3    # "ent":Lgnu/bytecode/CpoolClass;
    :cond_27
    iget-object v2, v2, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_15

    .line 124
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_2a
    new-instance v2, Lgnu/bytecode/CpoolClass;

    invoke-direct {v2, p0, v0, p1}, Lgnu/bytecode/CpoolClass;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V

    return-object v2
.end method

.method public addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;
    .registers 3
    .param p1, "otype"    # Lgnu/bytecode/ObjectType;

    .line 102
    invoke-virtual {p1}, Lgnu/bytecode/ObjectType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 103
    .local v0, "entry":Lgnu/bytecode/CpoolClass;
    iput-object p1, v0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    .line 104
    return-object v0
.end method

.method public addDouble(D)Lgnu/bytecode/CpoolValue2;
    .registers 6
    .param p1, "val"    # D

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v0, v1}, Lgnu/bytecode/ConstantPool;->addValue2(IJ)Lgnu/bytecode/CpoolValue2;

    move-result-object v0

    return-object v0
.end method

.method public addFieldRef(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolRef;
    .registers 6
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 283
    iget-object v0, p1, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 284
    .local v0, "clas":Lgnu/bytecode/CpoolClass;
    const/16 v1, 0x9

    .line 285
    .local v1, "tag":I
    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v2

    .line 286
    .local v2, "nameType":Lgnu/bytecode/CpoolNameAndType;
    invoke-virtual {p0, v1, v0, v2}, Lgnu/bytecode/ConstantPool;->addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;

    move-result-object v3

    return-object v3
.end method

.method public addFloat(F)Lgnu/bytecode/CpoolValue1;
    .registers 4
    .param p1, "val"    # F

    .line 179
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lgnu/bytecode/ConstantPool;->addValue1(II)Lgnu/bytecode/CpoolValue1;

    move-result-object v0

    return-object v0
.end method

.method public addInt(I)Lgnu/bytecode/CpoolValue1;
    .registers 3
    .param p1, "val"    # I

    .line 169
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lgnu/bytecode/ConstantPool;->addValue1(II)Lgnu/bytecode/CpoolValue1;

    move-result-object v0

    return-object v0
.end method

.method public addLong(J)Lgnu/bytecode/CpoolValue2;
    .registers 4
    .param p1, "val"    # J

    .line 174
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addValue2(IJ)Lgnu/bytecode/CpoolValue2;

    move-result-object v0

    return-object v0
.end method

.method public addMethodRef(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolRef;
    .registers 6
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 271
    iget-object v0, p1, Lgnu/bytecode/Method;->classfile:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    .line 273
    .local v0, "clas":Lgnu/bytecode/CpoolClass;
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_15

    .line 274
    const/16 v1, 0xa

    .local v1, "tag":I
    goto :goto_17

    .line 276
    .end local v1    # "tag":I
    :cond_15
    const/16 v1, 0xb

    .line 277
    .restart local v1    # "tag":I
    :goto_17
    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v2

    .line 278
    .local v2, "nameType":Lgnu/bytecode/CpoolNameAndType;
    invoke-virtual {p0, v1, v0, v2}, Lgnu/bytecode/ConstantPool;->addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;

    move-result-object v3

    return-object v3
.end method

.method public addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;
    .registers 7
    .param p1, "name"    # Lgnu/bytecode/CpoolUtf8;
    .param p2, "type"    # Lgnu/bytecode/CpoolUtf8;

    .line 229
    invoke-static {p1, p2}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    .line 232
    .local v0, "h":I
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_b

    .line 233
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 234
    :cond_b
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 235
    .local v1, "index":I
    aget-object v2, v2, v1

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_15
    if-eqz v2, :cond_34

    .line 237
    iget v3, v2, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v3, :cond_31

    instance-of v3, v2, Lgnu/bytecode/CpoolNameAndType;

    if-eqz v3, :cond_31

    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolNameAndType;

    iget-object v3, v3, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    if-ne v3, p1, :cond_31

    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolNameAndType;

    iget-object v3, v3, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    if-ne v3, p2, :cond_31

    .line 241
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolNameAndType;

    return-object v3

    .line 235
    :cond_31
    iget-object v2, v2, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_15

    .line 243
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_34
    new-instance v2, Lgnu/bytecode/CpoolNameAndType;

    invoke-direct {v2, p0, v0, p1, p2}, Lgnu/bytecode/CpoolNameAndType;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V

    return-object v2
.end method

.method public addNameAndType(Lgnu/bytecode/Field;)Lgnu/bytecode/CpoolNameAndType;
    .registers 5
    .param p1, "field"    # Lgnu/bytecode/Field;

    .line 221
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    .line 222
    .local v0, "name":Lgnu/bytecode/CpoolUtf8;
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    .line 223
    .local v1, "type":Lgnu/bytecode/CpoolUtf8;
    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v2

    return-object v2
.end method

.method public addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;
    .registers 5
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 214
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    .line 215
    .local v0, "name":Lgnu/bytecode/CpoolUtf8;
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    .line 216
    .local v1, "type":Lgnu/bytecode/CpoolUtf8;
    invoke-virtual {p0, v0, v1}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object v2

    return-object v2
.end method

.method public addRef(ILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)Lgnu/bytecode/CpoolRef;
    .registers 13
    .param p1, "tag"    # I
    .param p2, "clas"    # Lgnu/bytecode/CpoolClass;
    .param p3, "nameAndType"    # Lgnu/bytecode/CpoolNameAndType;

    .line 249
    invoke-static {p2, p3}, Lgnu/bytecode/CpoolRef;->hashCode(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)I

    move-result v6

    .line 252
    .local v6, "h":I
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_b

    .line 253
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 254
    :cond_b
    const v0, 0x7fffffff

    and-int/2addr v0, v6

    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v2, v1

    rem-int v7, v0, v2

    .line 255
    .local v7, "index":I
    aget-object v0, v1, v7

    .local v0, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_16
    if-eqz v0, :cond_33

    .line 257
    iget v1, v0, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v6, v1, :cond_30

    instance-of v1, v0, Lgnu/bytecode/CpoolRef;

    if-eqz v1, :cond_30

    .line 259
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/CpoolRef;

    .line 260
    .local v1, "ref":Lgnu/bytecode/CpoolRef;
    iget v2, v1, Lgnu/bytecode/CpoolRef;->tag:I

    if-ne v2, p1, :cond_30

    iget-object v2, v1, Lgnu/bytecode/CpoolRef;->clas:Lgnu/bytecode/CpoolClass;

    if-ne v2, p2, :cond_30

    iget-object v2, v1, Lgnu/bytecode/CpoolRef;->nameAndType:Lgnu/bytecode/CpoolNameAndType;

    if-ne v2, p3, :cond_30

    .line 263
    return-object v1

    .line 255
    .end local v1    # "ref":Lgnu/bytecode/CpoolRef;
    :cond_30
    iget-object v0, v0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_16

    .line 266
    .end local v0    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_33
    new-instance v8, Lgnu/bytecode/CpoolRef;

    move-object v0, v8

    move-object v1, p0

    move v2, v6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lgnu/bytecode/CpoolRef;-><init>(Lgnu/bytecode/ConstantPool;IILgnu/bytecode/CpoolClass;Lgnu/bytecode/CpoolNameAndType;)V

    return-object v8
.end method

.method public addString(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolString;
    .registers 7
    .param p1, "str"    # Lgnu/bytecode/CpoolUtf8;

    .line 194
    invoke-static {p1}, Lgnu/bytecode/CpoolString;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    .line 197
    .local v0, "h":I
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_b

    .line 198
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 199
    :cond_b
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 200
    .local v1, "index":I
    aget-object v2, v2, v1

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_15
    if-eqz v2, :cond_2a

    .line 202
    iget v3, v2, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v3, :cond_27

    instance-of v3, v2, Lgnu/bytecode/CpoolString;

    if-eqz v3, :cond_27

    .line 204
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolString;

    .line 205
    .local v3, "ent":Lgnu/bytecode/CpoolString;
    iget-object v4, v3, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    if-ne v4, p1, :cond_27

    .line 206
    return-object v3

    .line 200
    .end local v3    # "ent":Lgnu/bytecode/CpoolString;
    :cond_27
    iget-object v2, v2, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_15

    .line 209
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_2a
    new-instance v2, Lgnu/bytecode/CpoolString;

    invoke-direct {v2, p0, v0, p1}, Lgnu/bytecode/CpoolString;-><init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V

    return-object v2
.end method

.method public final addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p0, p1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantPool;->addString(Lgnu/bytecode/CpoolUtf8;)Lgnu/bytecode/CpoolString;

    move-result-object v0

    return-object v0
.end method

.method public addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;
    .registers 7
    .param p1, "s"    # Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 82
    .local v0, "h":I
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_f

    .line 83
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 85
    :cond_f
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 86
    .local v1, "index":I
    aget-object v2, v2, v1

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_19
    if-eqz v2, :cond_2e

    .line 88
    iget v3, v2, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v3, :cond_2b

    instance-of v3, v2, Lgnu/bytecode/CpoolUtf8;

    if-eqz v3, :cond_2b

    .line 90
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolUtf8;

    .line 91
    .local v3, "utf":Lgnu/bytecode/CpoolUtf8;
    iget-object v4, v3, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    if-ne v4, p1, :cond_2b

    .line 92
    return-object v3

    .line 86
    .end local v3    # "utf":Lgnu/bytecode/CpoolUtf8;
    :cond_2b
    iget-object v2, v2, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_19

    .line 95
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_2e
    iget-boolean v2, p0, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez v2, :cond_38

    .line 97
    new-instance v2, Lgnu/bytecode/CpoolUtf8;

    invoke-direct {v2, p0, v0, p1}, Lgnu/bytecode/CpoolUtf8;-><init>(Lgnu/bytecode/ConstantPool;ILjava/lang/String;)V

    return-object v2

    .line 96
    :cond_38
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding new Utf8 entry to locked contant pool: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_52

    :goto_51
    throw v2

    :goto_52
    goto :goto_51
.end method

.method addValue1(II)Lgnu/bytecode/CpoolValue1;
    .registers 8
    .param p1, "tag"    # I
    .param p2, "val"    # I

    .line 129
    invoke-static {p2}, Lgnu/bytecode/CpoolValue1;->hashCode(I)I

    move-result v0

    .line 132
    .local v0, "h":I
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v1, :cond_b

    .line 133
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 134
    :cond_b
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 135
    .local v1, "index":I
    aget-object v2, v2, v1

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_15
    if-eqz v2, :cond_2e

    .line 137
    iget v3, v2, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v0, v3, :cond_2b

    instance-of v3, v2, Lgnu/bytecode/CpoolValue1;

    if-eqz v3, :cond_2b

    .line 139
    move-object v3, v2

    check-cast v3, Lgnu/bytecode/CpoolValue1;

    .line 140
    .local v3, "ent":Lgnu/bytecode/CpoolValue1;
    iget v4, v3, Lgnu/bytecode/CpoolValue1;->tag:I

    if-ne v4, p1, :cond_2b

    iget v4, v3, Lgnu/bytecode/CpoolValue1;->value:I

    if-ne v4, p2, :cond_2b

    .line 141
    return-object v3

    .line 135
    .end local v3    # "ent":Lgnu/bytecode/CpoolValue1;
    :cond_2b
    iget-object v2, v2, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_15

    .line 144
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_2e
    new-instance v2, Lgnu/bytecode/CpoolValue1;

    invoke-direct {v2, p0, p1, v0, p2}, Lgnu/bytecode/CpoolValue1;-><init>(Lgnu/bytecode/ConstantPool;III)V

    return-object v2
.end method

.method addValue2(IJ)Lgnu/bytecode/CpoolValue2;
    .registers 13
    .param p1, "tag"    # I
    .param p2, "val"    # J

    .line 149
    invoke-static {p2, p3}, Lgnu/bytecode/CpoolValue2;->hashCode(J)I

    move-result v6

    .line 152
    .local v6, "h":I
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_b

    .line 153
    invoke-virtual {p0}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 154
    :cond_b
    const v0, 0x7fffffff

    and-int/2addr v0, v6

    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v2, v1

    rem-int v7, v0, v2

    .line 155
    .local v7, "index":I
    aget-object v0, v1, v7

    .local v0, "entry":Lgnu/bytecode/CpoolEntry;
    :goto_16
    if-eqz v0, :cond_31

    .line 157
    iget v1, v0, Lgnu/bytecode/CpoolEntry;->hash:I

    if-ne v6, v1, :cond_2e

    instance-of v1, v0, Lgnu/bytecode/CpoolValue2;

    if-eqz v1, :cond_2e

    .line 159
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/CpoolValue2;

    .line 160
    .local v1, "ent":Lgnu/bytecode/CpoolValue2;
    iget v2, v1, Lgnu/bytecode/CpoolValue2;->tag:I

    if-ne v2, p1, :cond_2e

    iget-wide v2, v1, Lgnu/bytecode/CpoolValue2;->value:J

    cmp-long v4, v2, p2

    if-nez v4, :cond_2e

    .line 161
    return-object v1

    .line 155
    .end local v1    # "ent":Lgnu/bytecode/CpoolValue2;
    :cond_2e
    iget-object v0, v0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    goto :goto_16

    .line 164
    .end local v0    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_31
    new-instance v8, Lgnu/bytecode/CpoolValue2;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, v6

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lgnu/bytecode/CpoolValue2;-><init>(Lgnu/bytecode/ConstantPool;IIJ)V

    return-object v8
.end method

.method public final getCount()I
    .registers 2

    .line 34
    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    return v0
.end method

.method getForced(II)Lgnu/bytecode/CpoolEntry;
    .registers 7
    .param p1, "index"    # I
    .param p2, "tag"    # I

    .line 307
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 308
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v0, v0, p1

    .line 309
    .local v0, "entry":Lgnu/bytecode/CpoolEntry;
    if-nez v0, :cond_51

    .line 311
    iget-boolean v1, p0, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez v1, :cond_49

    .line 313
    packed-switch p2, :pswitch_data_72

    :pswitch_11
    goto :goto_42

    .line 325
    :pswitch_12
    new-instance v1, Lgnu/bytecode/CpoolNameAndType;

    invoke-direct {v1}, Lgnu/bytecode/CpoolNameAndType;-><init>()V

    move-object v0, v1

    goto :goto_42

    .line 324
    :pswitch_19
    new-instance v1, Lgnu/bytecode/CpoolRef;

    invoke-direct {v1, p2}, Lgnu/bytecode/CpoolRef;-><init>(I)V

    move-object v0, v1

    goto :goto_42

    .line 321
    :pswitch_20
    new-instance v1, Lgnu/bytecode/CpoolString;

    invoke-direct {v1}, Lgnu/bytecode/CpoolString;-><init>()V

    move-object v0, v1

    goto :goto_42

    .line 320
    :pswitch_27
    new-instance v1, Lgnu/bytecode/CpoolClass;

    invoke-direct {v1}, Lgnu/bytecode/CpoolClass;-><init>()V

    move-object v0, v1

    goto :goto_42

    .line 319
    :pswitch_2e
    new-instance v1, Lgnu/bytecode/CpoolValue2;

    invoke-direct {v1, p2}, Lgnu/bytecode/CpoolValue2;-><init>(I)V

    move-object v0, v1

    goto :goto_42

    .line 317
    :pswitch_35
    new-instance v1, Lgnu/bytecode/CpoolValue1;

    invoke-direct {v1, p2}, Lgnu/bytecode/CpoolValue1;-><init>(I)V

    move-object v0, v1

    goto :goto_42

    .line 315
    :pswitch_3c
    new-instance v1, Lgnu/bytecode/CpoolUtf8;

    invoke-direct {v1}, Lgnu/bytecode/CpoolUtf8;-><init>()V

    move-object v0, v1

    .line 327
    :goto_42
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aput-object v0, v1, p1

    .line 328
    iput p1, v0, Lgnu/bytecode/CpoolEntry;->index:I

    goto :goto_57

    .line 312
    :cond_49
    new-instance v1, Ljava/lang/Error;

    const-string v2, "adding new entry to locked contant pool"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 330
    :cond_51
    invoke-virtual {v0}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v1

    if-ne v1, p2, :cond_58

    .line 332
    :goto_57
    return-object v0

    .line 331
    :cond_58
    new-instance v1, Ljava/lang/ClassFormatError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conflicting constant pool tags at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_11
        :pswitch_35
        :pswitch_35
        :pswitch_2e
        :pswitch_2e
        :pswitch_27
        :pswitch_20
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method getForcedClass(I)Lgnu/bytecode/CpoolClass;
    .registers 3
    .param p1, "index"    # I

    .line 337
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/CpoolClass;

    return-object v0
.end method

.method public final getPoolEntry(I)Lgnu/bytecode/CpoolEntry;
    .registers 3
    .param p1, "index"    # I

    .line 43
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v0, v0, p1

    return-object v0
.end method

.method rehash()V
    .registers 3

    .line 52
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_19

    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    if-lez v0, :cond_19

    .line 55
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v0, v0

    .local v0, "i":I
    :goto_b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 57
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v1, v1, v0

    .line 59
    .local v1, "entry":Lgnu/bytecode/CpoolEntry;
    if-eqz v1, :cond_18

    .line 60
    invoke-virtual {v1}, Lgnu/bytecode/CpoolEntry;->hashCode()I

    .line 61
    .end local v1    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_18
    goto :goto_b

    .line 64
    .end local v0    # "i":I
    :cond_19
    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_21

    const/16 v0, 0x65

    goto :goto_23

    :cond_21
    mul-int/lit8 v0, v0, 0x2

    :goto_23
    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    iput-object v0, p0, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 65
    iget-object v0, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_3a

    .line 67
    array-length v0, v0

    .restart local v0    # "i":I
    :goto_2c
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3a

    .line 69
    iget-object v1, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v1, v1, v0

    .line 70
    .restart local v1    # "entry":Lgnu/bytecode/CpoolEntry;
    if-eqz v1, :cond_39

    .line 71
    invoke-virtual {v1, p0}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    .line 72
    .end local v1    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_39
    goto :goto_2c

    .line 74
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .registers 5
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget v0, p0, Lgnu/bytecode/ConstantPool;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 292
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    iget v2, p0, Lgnu/bytecode/ConstantPool;->count:I

    if-gt v0, v2, :cond_18

    .line 294
    iget-object v2, p0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v2, v2, v0

    .line 295
    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    if-eqz v2, :cond_15

    .line 296
    invoke-virtual {v2, p1}, Lgnu/bytecode/CpoolEntry;->write(Ljava/io/DataOutputStream;)V

    .line 292
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 298
    .end local v0    # "i":I
    :cond_18
    iput-boolean v1, p0, Lgnu/bytecode/ConstantPool;->locked:Z

    .line 299
    return-void
.end method

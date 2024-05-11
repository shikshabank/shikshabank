.class public Lgnu/bytecode/Field;
.super Lgnu/bytecode/Location;
.source "Field.java"

# interfaces
.implements Lgnu/bytecode/AttrContainer;
.implements Lgnu/bytecode/Member;


# instance fields
.field attributes:Lgnu/bytecode/Attribute;

.field flags:I

.field next:Lgnu/bytecode/Field;

.field owner:Lgnu/bytecode/ClassType;

.field rfield:Ljava/lang/reflect/Field;

.field sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .registers 3
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;

    .line 27
    invoke-direct {p0}, Lgnu/bytecode/Location;-><init>()V

    .line 28
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    if-nez v0, :cond_a

    .line 29
    iput-object p0, p1, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    goto :goto_e

    .line 31
    :cond_a
    iget-object v0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    iput-object p0, v0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    .line 32
    :goto_e
    iput-object p0, p1, Lgnu/bytecode/ClassType;->last_field:Lgnu/bytecode/Field;

    .line 33
    iget v0, p1, Lgnu/bytecode/ClassType;->fields_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ClassType;->fields_count:I

    .line 34
    iput-object p1, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    .line 35
    return-void
.end method

.method public static searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;
    .registers 3
    .param p0, "fields"    # Lgnu/bytecode/Field;
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    :goto_0
    if-eqz p0, :cond_c

    .line 109
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 110
    return-object p0

    .line 107
    :cond_9
    iget-object p0, p0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_0

    .line 112
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method assign_constants(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "classfile"    # Lgnu/bytecode/ClassType;

    .line 73
    iget-object v0, p1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 74
    .local v0, "constants":Lgnu/bytecode/ConstantPool;
    iget v1, p0, Lgnu/bytecode/Field;->name_index:I

    if-nez v1, :cond_14

    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 75
    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, p0, Lgnu/bytecode/Field;->name_index:I

    .line 76
    :cond_14
    iget v1, p0, Lgnu/bytecode/Field;->signature_index:I

    if-nez v1, :cond_2a

    iget-object v1, p0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    if-eqz v1, :cond_2a

    .line 77
    iget-object v1, p0, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v1

    iget v1, v1, Lgnu/bytecode/CpoolUtf8;->index:I

    iput v1, p0, Lgnu/bytecode/Field;->signature_index:I

    .line 78
    :cond_2a
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/AttrContainer;Lgnu/bytecode/ClassType;)V

    .line 79
    return-void
.end method

.method public final getAttributes()Lgnu/bytecode/Attribute;
    .registers 2

    .line 12
    iget-object v0, p0, Lgnu/bytecode/Field;->attributes:Lgnu/bytecode/Attribute;

    return-object v0
.end method

.method public final getDeclaringClass()Lgnu/bytecode/ClassType;
    .registers 2

    .line 39
    iget-object v0, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getFlags()I
    .registers 2

    .line 54
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    return v0
.end method

.method public final getModifiers()I
    .registers 2

    .line 58
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    return v0
.end method

.method public final getNext()Lgnu/bytecode/Field;
    .registers 2

    .line 117
    iget-object v0, p0, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    return-object v0
.end method

.method public declared-synchronized getReflectField()Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;

    if-nez v0, :cond_15

    .line 85
    iget-object v0, p0, Lgnu/bytecode/Field;->owner:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;

    .line 86
    .end local p0    # "this":Lgnu/bytecode/Field;
    :cond_15
    iget-object v0, p0, Lgnu/bytecode/Field;->rfield:Ljava/lang/reflect/Field;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-object v0

    .line 83
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSourceName()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 97
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    .line 98
    :cond_e
    iget-object v0, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStaticFlag()Z
    .registers 2

    .line 50
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final setAttributes(Lgnu/bytecode/Attribute;)V
    .registers 2
    .param p1, "attributes"    # Lgnu/bytecode/Attribute;

    .line 14
    iput-object p1, p0, Lgnu/bytecode/Field;->attributes:Lgnu/bytecode/Attribute;

    return-void
.end method

.method public final setConstantValue(Ljava/lang/Object;Lgnu/bytecode/ClassType;)V
    .registers 5

    .line 128
    iget-object v0, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 129
    if-nez v0, :cond_b

    .line 130
    new-instance v0, Lgnu/bytecode/ConstantPool;

    invoke-direct {v0}, Lgnu/bytecode/ConstantPool;-><init>()V

    iput-object v0, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 131
    :cond_b
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object p2

    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 133
    sparse-switch p2, :sswitch_data_74

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object p1

    goto :goto_67

    .line 136
    :sswitch_24
    invoke-static {p1}, Lgnu/bytecode/PrimType;->booleanValue(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    .line 137
    goto :goto_67

    .line 150
    :sswitch_2d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    goto :goto_67

    .line 152
    :sswitch_38
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    goto :goto_67

    .line 154
    :sswitch_43
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object p1

    goto :goto_67

    .line 139
    :sswitch_4e
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_5d

    .line 141
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    .line 142
    goto :goto_67

    .line 148
    :cond_5d
    :sswitch_5d
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object p1

    .line 158
    :goto_67
    new-instance p2, Lgnu/bytecode/ConstantValueAttr;

    invoke-virtual {p1}, Lgnu/bytecode/CpoolEntry;->getIndex()I

    move-result p1

    invoke-direct {p2, p1}, Lgnu/bytecode/ConstantValueAttr;-><init>(I)V

    .line 159
    invoke-virtual {p2, p0}, Lgnu/bytecode/ConstantValueAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 160
    return-void

    :sswitch_data_74
    .sparse-switch
        0x42 -> :sswitch_5d
        0x43 -> :sswitch_4e
        0x44 -> :sswitch_43
        0x46 -> :sswitch_38
        0x49 -> :sswitch_5d
        0x4a -> :sswitch_2d
        0x53 -> :sswitch_5d
        0x5a -> :sswitch_24
    .end sparse-switch
.end method

.method public setSourceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lgnu/bytecode/Field;->sourceName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public final setStaticFlag(Z)V
    .registers 3
    .param p1, "is_static"    # Z

    .line 43
    if-eqz p1, :cond_9

    .line 44
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/bytecode/Field;->flags:I

    goto :goto_f

    .line 46
    :cond_9
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    xor-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/bytecode/Field;->flags:I

    .line 47
    :goto_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 164
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 165
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "Field:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {p0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 168
    iget-object v1, p0, Lgnu/bytecode/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method write(Ljava/io/DataOutputStream;Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "dstr"    # Ljava/io/DataOutputStream;
    .param p2, "classfile"    # Lgnu/bytecode/ClassType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget v0, p0, Lgnu/bytecode/Field;->flags:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 65
    iget v0, p0, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 66
    iget v0, p0, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 68
    invoke-static {p0, p1}, Lgnu/bytecode/Attribute;->writeAll(Lgnu/bytecode/AttrContainer;Ljava/io/DataOutputStream;)V

    .line 69
    return-void
.end method

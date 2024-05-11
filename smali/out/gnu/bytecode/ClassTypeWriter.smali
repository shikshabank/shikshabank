.class public Lgnu/bytecode/ClassTypeWriter;
.super Ljava/io/PrintWriter;
.source "ClassTypeWriter.java"


# static fields
.field public static final PRINT_CONSTANT_POOL:I = 0x1

.field public static final PRINT_CONSTANT_POOL_INDEXES:I = 0x2

.field public static final PRINT_EXTRAS:I = 0x8

.field public static final PRINT_VERBOSE:I = 0xf

.field public static final PRINT_VERSION:I = 0x4


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field flags:I


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;
    .param p2, "stream"    # Ljava/io/OutputStream;
    .param p3, "flags"    # I

    .line 36
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 37
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 38
    iput p3, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V
    .registers 4
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;
    .param p2, "stream"    # Ljava/io/Writer;
    .param p3, "flags"    # I

    .line 29
    invoke-direct {p0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 31
    iput p3, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 32
    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintStream;I)V
    .registers 4
    .param p0, "ctype"    # Lgnu/bytecode/ClassType;
    .param p1, "stream"    # Ljava/io/PrintStream;
    .param p2, "flags"    # I

    .line 55
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/OutputStream;I)V

    .line 56
    .local v0, "writer":Lgnu/bytecode/ClassTypeWriter;
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 57
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 58
    return-void
.end method

.method public static print(Lgnu/bytecode/ClassType;Ljava/io/PrintWriter;I)V
    .registers 4
    .param p0, "ctype"    # Lgnu/bytecode/ClassType;
    .param p1, "stream"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I

    .line 48
    new-instance v0, Lgnu/bytecode/ClassTypeWriter;

    invoke-direct {v0, p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;-><init>(Lgnu/bytecode/ClassType;Ljava/io/Writer;I)V

    .line 49
    .local v0, "writer":Lgnu/bytecode/ClassTypeWriter;
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 50
    invoke-virtual {v0}, Lgnu/bytecode/ClassTypeWriter;->flush()V

    .line 51
    return-void
.end method


# virtual methods
.method getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;
    .registers 4
    .param p1, "index"    # I

    .line 210
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 211
    .local v0, "pool":[Lgnu/bytecode/CpoolEntry;
    if-eqz v0, :cond_11

    if-ltz p1, :cond_11

    array-length v1, v0

    if-lt p1, v1, :cond_e

    goto :goto_11

    .line 214
    :cond_e
    aget-object v1, v0, p1

    return-object v1

    .line 212
    :cond_11
    :goto_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public print()V
    .registers 2

    .line 62
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_27

    .line 64
    const-string v0, "Classfile format major version: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMajorVersion()S

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 66
    const-string v0, ", minor version: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getClassfileMinorVersion()S

    move-result v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 68
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    .line 70
    :cond_27
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 71
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printConstantPool()V

    .line 72
    :cond_30
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printClassInfo()V

    .line 73
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printFields()V

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printMethods()V

    .line 75
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes()V

    .line 76
    return-void
.end method

.method public print(Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;

    .line 85
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 86
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->print()V

    .line 87
    return-void
.end method

.method public printAttributes()V
    .registers 3

    .line 91
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 92
    .local v0, "attrs":Lgnu/bytecode/AttrContainer;
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 93
    const-string v1, "Attributes (count: "

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lgnu/bytecode/Attribute;->count(Lgnu/bytecode/AttrContainer;)I

    move-result v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 95
    const-string v1, "):"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->println(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 97
    return-void
.end method

.method public printAttributes(Lgnu/bytecode/AttrContainer;)V
    .registers 3
    .param p1, "container"    # Lgnu/bytecode/AttrContainer;

    .line 101
    invoke-interface {p1}, Lgnu/bytecode/AttrContainer;->getAttributes()Lgnu/bytecode/Attribute;

    move-result-object v0

    .line 102
    .local v0, "attr":Lgnu/bytecode/Attribute;
    :goto_4
    if-eqz v0, :cond_c

    .line 104
    invoke-virtual {v0, p0}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    .line 102
    iget-object v0, v0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_4

    .line 106
    .end local v0    # "attr":Lgnu/bytecode/Attribute;
    :cond_c
    return-void
.end method

.method public printClassInfo()V
    .registers 7

    .line 110
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 111
    const-string v0, "Access flags:"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v0

    .line 113
    .local v0, "modifiers":I
    const/16 v1, 0x43

    invoke-static {v0, v1}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 115
    const-string v1, "This class: "

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v1, v1, Lgnu/bytecode/ClassType;->thisClassIndex:I

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 117
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v1, v1, Lgnu/bytecode/ClassType;->thisClassIndex:I

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 118
    const-string v1, " super: "

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v1, v1, Lgnu/bytecode/ClassType;->superClassIndex:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_40

    .line 120
    const-string v1, "<unknown>"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_5a

    .line 121
    :cond_40
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v1, v1, Lgnu/bytecode/ClassType;->superClassIndex:I

    if-nez v1, :cond_4c

    .line 122
    const-string v1, "0"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_5a

    .line 125
    :cond_4c
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v1, v1, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 126
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v1, v1, Lgnu/bytecode/ClassType;->superClassIndex:I

    invoke-virtual {p0, v1, v2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 128
    :goto_5a
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 129
    const-string v1, "Interfaces (count: "

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->interfaceIndexes:[I

    .line 131
    .local v1, "interfaces":[I
    if-nez v1, :cond_6a

    const/4 v3, 0x0

    goto :goto_6b

    :cond_6a
    array-length v3, v1

    .line 132
    .local v3, "n_interfaces":I
    :goto_6b
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 133
    const-string v4, "):"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 135
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_77
    if-ge v4, v3, :cond_8c

    .line 137
    const-string v5, "- Implements: "

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 138
    aget v5, v1, v4

    .line 139
    .local v5, "index":I
    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 140
    invoke-virtual {p0, v5, v2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 141
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 135
    .end local v5    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 143
    .end local v4    # "i":I
    :cond_8c
    return-void
.end method

.method final printConstantOperand(I)V
    .registers 5
    .param p1, "index"    # I

    .line 251
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 252
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 253
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 255
    .local v0, "pool":[Lgnu/bytecode/CpoolEntry;
    if-eqz v0, :cond_2a

    if-ltz p1, :cond_2a

    array-length v1, v0

    if-ge p1, v1, :cond_2a

    aget-object v1, v0, p1

    move-object v2, v1

    .local v2, "entry":Lgnu/bytecode/CpoolEntry;
    if-nez v1, :cond_1b

    goto :goto_2a

    .line 260
    :cond_1b
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 261
    const/4 v1, 0x1

    invoke-virtual {v2, p0, v1}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 262
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_2f

    .line 257
    .end local v2    # "entry":Lgnu/bytecode/CpoolEntry;
    :cond_2a
    :goto_2a
    const-string v1, "<invalid constant index>"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 264
    :goto_2f
    return-void
.end method

.method public printConstantPool()V
    .registers 6

    .line 291
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget-object v0, v0, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 292
    .local v0, "pool":[Lgnu/bytecode/CpoolEntry;
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v1, v1, Lgnu/bytecode/ConstantPool;->count:I

    .line 293
    .local v1, "length":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_d
    if-gt v2, v1, :cond_2d

    .line 295
    aget-object v3, v0, v2

    .line 296
    .local v3, "entry":Lgnu/bytecode/CpoolEntry;
    if-nez v3, :cond_14

    .line 297
    goto :goto_2a

    .line 298
    :cond_14
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 299
    iget v4, v3, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 300
    const-string v4, ": "

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 301
    const/4 v4, 0x2

    invoke-virtual {v3, p0, v4}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 302
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 293
    .end local v3    # "entry":Lgnu/bytecode/CpoolEntry;
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 304
    .end local v2    # "i":I
    :cond_2d
    return-void
.end method

.method final printConstantTersely(II)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "expected_tag"    # I

    .line 233
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(Lgnu/bytecode/CpoolEntry;I)V

    .line 234
    return-void
.end method

.method final printConstantTersely(Lgnu/bytecode/CpoolEntry;I)V
    .registers 4
    .param p1, "entry"    # Lgnu/bytecode/CpoolEntry;
    .param p2, "expected_tag"    # I

    .line 219
    if-nez p1, :cond_8

    .line 220
    const-string v0, "<invalid constant index>"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_21

    .line 221
    :cond_8
    invoke-virtual {p1}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v0

    if-eq v0, p2, :cond_1d

    .line 223
    const-string v0, "<unexpected constant type "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 225
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_21

    .line 228
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 229
    :goto_21
    return-void
.end method

.method final printContantUtf8AsClass(I)V
    .registers 6
    .param p1, "type_index"    # I

    .line 238
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    .line 239
    .local v0, "entry":Lgnu/bytecode/CpoolEntry;
    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_1b

    .line 241
    move-object v1, v0

    check-cast v1, Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 242
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v3, p0}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    .line 243
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_1e

    .line 245
    :cond_1b
    invoke-virtual {p0, p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 246
    :goto_1e
    return-void
.end method

.method public printFields()V
    .registers 5

    .line 147
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 148
    const-string v0, "Fields (count: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->fields_count:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 150
    const-string v0, "):"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "ifield":I
    iget-object v1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v1, v1, Lgnu/bytecode/ClassType;->fields:Lgnu/bytecode/Field;

    .line 154
    .local v1, "field":Lgnu/bytecode/Field;
    :goto_1c
    if-eqz v1, :cond_5c

    .line 156
    const-string v2, "Field name: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 157
    iget v2, v1, Lgnu/bytecode/Field;->name_index:I

    if-eqz v2, :cond_2c

    .line 158
    iget v2, v1, Lgnu/bytecode/Field;->name_index:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 159
    :cond_2c
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 160
    iget v2, v1, Lgnu/bytecode/Field;->flags:I

    const/16 v3, 0x46

    invoke-static {v2, v3}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 161
    const-string v2, " Signature: "

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 162
    iget v2, v1, Lgnu/bytecode/Field;->signature_index:I

    if-eqz v2, :cond_4c

    .line 163
    iget v2, v1, Lgnu/bytecode/Field;->signature_index:I

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 164
    :cond_4c
    iget-object v2, v1, Lgnu/bytecode/Field;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 165
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 166
    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lgnu/bytecode/Field;->next:Lgnu/bytecode/Field;

    goto :goto_1c

    .line 168
    :cond_5c
    return-void
.end method

.method public printMethod(Lgnu/bytecode/Method;)V
    .registers 4
    .param p1, "method"    # Lgnu/bytecode/Method;

    .line 184
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 185
    const-string v0, "Method name:"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 186
    iget v0, p1, Lgnu/bytecode/Method;->name_index:I

    if-eqz v0, :cond_11

    .line 187
    iget v0, p1, Lgnu/bytecode/Method;->name_index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 188
    :cond_11
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 189
    invoke-virtual {p1}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 191
    iget v0, p1, Lgnu/bytecode/Method;->access_flags:I

    const/16 v1, 0x4d

    invoke-static {v0, v1}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 192
    const-string v0, " Signature: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 193
    iget v0, p1, Lgnu/bytecode/Method;->signature_index:I

    if-eqz v0, :cond_39

    .line 194
    iget v0, p1, Lgnu/bytecode/Method;->signature_index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 195
    :cond_39
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3f
    iget-object v1, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    array-length v1, v1

    if-ge v0, v1, :cond_55

    .line 198
    if-lez v0, :cond_4b

    .line 199
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 200
    :cond_4b
    iget-object v1, p1, Lgnu/bytecode/Method;->arg_types:[Lgnu/bytecode/Type;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 202
    .end local v0    # "i":I
    :cond_55
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 203
    iget-object v0, p1, Lgnu/bytecode/Method;->return_type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Lgnu/bytecode/Type;)V

    .line 204
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 205
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->printAttributes(Lgnu/bytecode/AttrContainer;)V

    .line 206
    return-void
.end method

.method public printMethods()V
    .registers 2

    .line 172
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 173
    const-string v0, "Methods (count: "

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget v0, v0, Lgnu/bytecode/ClassType;->methods_count:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 175
    const-string v0, "):"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lgnu/bytecode/ClassTypeWriter;->println()V

    .line 177
    iget-object v0, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->methods:Lgnu/bytecode/Method;

    .line 178
    .local v0, "method":Lgnu/bytecode/Method;
    :goto_1b
    if-eqz v0, :cond_23

    .line 179
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printMethod(Lgnu/bytecode/Method;)V

    .line 178
    iget-object v0, v0, Lgnu/bytecode/Method;->next:Lgnu/bytecode/Method;

    goto :goto_1b

    .line 180
    :cond_23
    return-void
.end method

.method printName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 324
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public final printOptionalIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 308
    iget v0, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_13

    .line 310
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 311
    invoke-virtual {p0, p1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    .line 312
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 314
    :cond_13
    return-void
.end method

.method public final printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V
    .registers 3
    .param p1, "entry"    # Lgnu/bytecode/CpoolEntry;

    .line 318
    iget v0, p1, Lgnu/bytecode/CpoolEntry;->index:I

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 319
    return-void
.end method

.method public final printQuotedString(Ljava/lang/String;)V
    .registers 9
    .param p1, "string"    # Ljava/lang/String;

    .line 268
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 270
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_4b

    .line 272
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 273
    .local v3, "ch":C
    if-ne v3, v0, :cond_18

    .line 274
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_48

    .line 275
    :cond_18
    const/16 v4, 0x20

    if-lt v3, v4, :cond_24

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_24

    .line 276
    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_48

    .line 277
    :cond_24
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2e

    .line 278
    const-string v4, "\\n"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_48

    .line 281
    :cond_2e
    const-string v4, "\\u"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 282
    const/4 v4, 0x4

    .local v4, "j":I
    :goto_34
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_48

    .line 283
    mul-int/lit8 v5, v4, 0x4

    shr-int v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {p0, v5}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_34

    .line 270
    .end local v3    # "ch":C
    .end local v4    # "j":I
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 286
    .end local v2    # "i":I
    :cond_4b
    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 287
    return-void
.end method

.method public final printSignature(Ljava/lang/String;I)I
    .registers 8
    .param p1, "sig"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 334
    .local v0, "len":I
    if-lt p2, v0, :cond_c

    .line 336
    const-string v1, "<empty signature>"

    invoke-virtual {p0, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 337
    return p2

    .line 339
    :cond_c
    invoke-static {p1, p2}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v1

    .line 340
    .local v1, "sig_length":I
    if-lez v1, :cond_24

    .line 342
    add-int v2, p2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_24

    .line 345
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 346
    add-int v3, p2, v1

    return v3

    .line 349
    .end local v2    # "name":Ljava/lang/String;
    :cond_24
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 350
    .local v2, "c":C
    const/16 v3, 0x28

    if-eq v2, v3, :cond_32

    .line 352
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 353
    add-int/lit8 v3, p2, 0x1

    return v3

    .line 355
    :cond_32
    const/4 v3, 0x0

    .line 356
    .local v3, "nargs":I
    add-int/lit8 p2, p2, 0x1

    .line 357
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 360
    :goto_38
    if-lt p2, v0, :cond_40

    .line 362
    const-string v4, "<truncated method signature>"

    invoke-virtual {p0, v4}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 363
    return p2

    .line 365
    :cond_40
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 366
    const/16 v4, 0x29

    if-ne v2, v4, :cond_53

    .line 368
    add-int/lit8 p2, p2, 0x1

    .line 369
    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 370
    nop

    .line 376
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v4

    return v4

    .line 372
    :cond_53
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "nargs":I
    .local v4, "nargs":I
    if-lez v3, :cond_5c

    .line 373
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 374
    :cond_5c
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result p2

    move v3, v4

    goto :goto_38
.end method

.method public final printSignature(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 453
    if-nez p1, :cond_8

    .line 454
    const-string v0, "<unknown type>"

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_f

    .line 456
    :cond_8
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    .line 457
    :goto_f
    return-void
.end method

.method public final printSignature(Ljava/lang/String;)V
    .registers 5
    .param p1, "sig"    # Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;I)I

    move-result v0

    .line 442
    .local v0, "pos":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 443
    .local v1, "len":I
    if-ge v0, v1, :cond_1c

    .line 445
    const-string v2, "<trailing junk:"

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 447
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 449
    :cond_1c
    return-void
.end method

.method public printSpaces(I)V
    .registers 3
    .param p1, "count"    # I

    .line 461
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_a

    .line 462
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    .line 463
    :cond_a
    return-void
.end method

.method public setClass(Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;

    .line 80
    iput-object p1, p0, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    .line 81
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 43
    iput p1, p0, Lgnu/bytecode/ClassTypeWriter;->flags:I

    .line 44
    return-void
.end method

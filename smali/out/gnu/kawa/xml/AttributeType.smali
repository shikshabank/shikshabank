.class public Lgnu/kawa/xml/AttributeType;
.super Lgnu/kawa/xml/NodeType;
.source "AttributeType.java"

# interfaces
.implements Lgnu/expr/TypeValue;
.implements Ljava/io/Externalizable;
.implements Lgnu/lists/AttributePredicate;


# static fields
.field static final coerceMethod:Lgnu/bytecode/Method;

.field static final coerceOrNullMethod:Lgnu/bytecode/Method;

.field public static final typeAttributeType:Lgnu/bytecode/ClassType;


# instance fields
.field qname:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 174
    const-string v0, "gnu.kawa.xml.AttributeType"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->typeAttributeType:Lgnu/bytecode/ClassType;

    .line 176
    const-string v1, "coerce"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    .line 178
    const-string v1, "coerceOrNull"

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;)V
    .registers 3
    .param p1, "qname"    # Lgnu/mapping/Symbol;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lgnu/kawa/xml/AttributeType;-><init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "qname"    # Lgnu/mapping/Symbol;

    .line 45
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    move-object v0, p1

    goto :goto_23

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTRIBUTE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-direct {p0, v0}, Lgnu/kawa/xml/NodeType;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    .line 48
    return-void
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 158
    invoke-static {p0, p1, p2}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v0

    .line 159
    .local v0, "pos":Lgnu/lists/SeqPosition;
    if-eqz v0, :cond_7

    .line 161
    return-object v0

    .line 160
    :cond_7
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
.end method

.method public static coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;
    .registers 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lgnu/kawa/xml/NodeType;->coerceOrNull(Ljava/lang/Object;I)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 122
    .local v0, "pos":Lgnu/kawa/xml/KNode;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 123
    return-object v1

    .line 124
    :cond_9
    if-eqz p2, :cond_12

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 125
    const/4 p2, 0x0

    .line 126
    :cond_12
    invoke-virtual {v0}, Lgnu/kawa/xml/KNode;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, "curName":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_26

    .line 131
    move-object v3, v2

    check-cast v3, Lgnu/mapping/Symbol;

    .line 132
    .local v3, "qname":Lgnu/mapping/Symbol;
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v3}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "curLocalName":Ljava/lang/String;
    goto :goto_40

    .line 136
    .end local v3    # "curLocalName":Ljava/lang/String;
    .end local v4    # "curNamespaceURI":Ljava/lang/String;
    :cond_26
    instance-of v3, v2, Ljavax/xml/namespace/QName;

    if-eqz v3, :cond_36

    .line 138
    move-object v3, v2

    check-cast v3, Ljavax/xml/namespace/QName;

    .line 140
    .local v3, "qtype":Ljavax/xml/namespace/QName;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    .line 141
    .restart local v4    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "curLocalName":Ljava/lang/String;
    goto :goto_40

    .line 146
    .end local v3    # "curLocalName":Ljava/lang/String;
    .end local v4    # "curNamespaceURI":Ljava/lang/String;
    :cond_36
    const-string v4, ""

    .line 147
    .restart local v4    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 149
    .restart local v3    # "curLocalName":Ljava/lang/String;
    :goto_40
    if-eq p2, v3, :cond_44

    if-nez p2, :cond_49

    :cond_44
    if-eq p1, v4, :cond_4a

    if-nez p1, :cond_49

    goto :goto_4a

    .line 152
    :cond_49
    return-object v1

    .line 151
    :cond_4a
    :goto_4a
    move-object v1, v0

    check-cast v1, Lgnu/kawa/xml/KAttr;

    return-object v1
.end method

.method public static make(Lgnu/mapping/Symbol;)Lgnu/kawa/xml/AttributeType;
    .registers 2
    .param p0, "qname"    # Lgnu/mapping/Symbol;

    .line 35
    new-instance v0, Lgnu/kawa/xml/AttributeType;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v0
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/AttributeType;
    .registers 4
    .param p0, "namespaceURI"    # Ljava/lang/String;
    .param p1, "localName"    # Ljava/lang/String;

    .line 24
    if-eqz p0, :cond_7

    .line 25
    invoke-static {p0, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .local v0, "qname":Lgnu/mapping/Symbol;
    goto :goto_14

    .line 26
    .end local v0    # "qname":Lgnu/mapping/Symbol;
    :cond_7
    const-string v0, ""

    if-ne p1, v0, :cond_e

    .line 27
    sget-object v0, Lgnu/kawa/xml/ElementType;->MATCH_ANY_QNAME:Lgnu/mapping/Symbol;

    .restart local v0    # "qname":Lgnu/mapping/Symbol;
    goto :goto_14

    .line 29
    .end local v0    # "qname":Lgnu/mapping/Symbol;
    :cond_e
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 30
    .restart local v0    # "qname":Lgnu/mapping/Symbol;
    :goto_14
    new-instance v1, Lgnu/kawa/xml/AttributeType;

    invoke-direct {v1, v0}, Lgnu/kawa/xml/AttributeType;-><init>(Lgnu/mapping/Symbol;)V

    return-object v1
.end method


# virtual methods
.method public coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/AttributeType;->coerce(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/lists/SeqPosition;

    move-result-object v0

    return-object v0
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 60
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lgnu/kawa/xml/AttributeType;->coerceMethod:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 63
    return-void
.end method

.method protected emitCoerceOrNullMethod(Lgnu/bytecode/Variable;Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "incoming"    # Lgnu/bytecode/Variable;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 166
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 167
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    if-eqz p1, :cond_9

    .line 168
    invoke-virtual {v0, p1}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 169
    :cond_9
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 171
    sget-object v1, Lgnu/kawa/xml/AttributeType;->coerceOrNullMethod:Lgnu/bytecode/Method;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 172
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .registers 2

    .line 52
    const-string v0, "gnu.kawa.xml.KAttr"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalName()Ljava/lang/String;
    .registers 2

    .line 56
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z
    .registers 9
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I
    .param p3, "attrType"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "namespaceURI":Ljava/lang/String;
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "localName":Ljava/lang/String;
    instance-of v2, p3, Lgnu/mapping/Symbol;

    if-eqz v2, :cond_1c

    .line 88
    move-object v2, p3

    check-cast v2, Lgnu/mapping/Symbol;

    .line 89
    .local v2, "qname":Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "curLocalName":Ljava/lang/String;
    goto :goto_36

    .line 93
    .end local v2    # "curLocalName":Ljava/lang/String;
    .end local v3    # "curNamespaceURI":Ljava/lang/String;
    :cond_1c
    instance-of v2, p3, Ljavax/xml/namespace/QName;

    if-eqz v2, :cond_2c

    .line 95
    move-object v2, p3

    check-cast v2, Ljavax/xml/namespace/QName;

    .line 97
    .local v2, "qtype":Ljavax/xml/namespace/QName;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    .line 98
    .restart local v3    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "curLocalName":Ljava/lang/String;
    goto :goto_36

    .line 103
    .end local v2    # "curLocalName":Ljava/lang/String;
    .end local v3    # "curNamespaceURI":Ljava/lang/String;
    :cond_2c
    const-string v3, ""

    .line 104
    .restart local v3    # "curNamespaceURI":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 106
    .restart local v2    # "curLocalName":Ljava/lang/String;
    :goto_36
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3f

    .line 107
    const/4 v1, 0x0

    .line 108
    :cond_3f
    if-eq v1, v2, :cond_43

    if-nez v1, :cond_48

    :cond_43
    if-eq v0, v3, :cond_4a

    if-nez v0, :cond_48

    goto :goto_4a

    :cond_48
    const/4 v4, 0x0

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v4, 0x1

    :goto_4b
    return v4
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lgnu/kawa/xml/AttributeType;->coerceOrNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/xml/KAttr;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isInstancePos(Lgnu/lists/AbstractSequence;I)Z
    .registers 5
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 72
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v0

    .line 73
    .local v0, "kind":I
    const/16 v1, 0x23

    if-ne v0, v1, :cond_11

    .line 74
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getNextTypeObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lgnu/kawa/xml/AttributeType;->isInstance(Lgnu/lists/AbstractSequence;ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 75
    :cond_11
    const/16 v1, 0x20

    if-ne v0, v1, :cond_1e

    .line 76
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->getPosNext(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/xml/AttributeType;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 77
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_d

    .line 193
    invoke-virtual {p0, v0}, Lgnu/kawa/xml/AttributeType;->setName(Ljava/lang/String;)V

    .line 194
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Symbol;

    iput-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lgnu/kawa/xml/AttributeType;->getName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lgnu/kawa/xml/AttributeType;->qname:Lgnu/mapping/Symbol;

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 186
    return-void
.end method

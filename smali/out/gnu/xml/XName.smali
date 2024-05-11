.class public Lgnu/xml/XName;
.super Lgnu/mapping/Symbol;
.source "XName.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field namespaceNodes:Lgnu/xml/NamespaceBinding;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Symbol;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Symbol;Lgnu/xml/NamespaceBinding;)V
    .registers 5
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "namespaceNodes"    # Lgnu/xml/NamespaceBinding;

    .line 20
    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    .line 21
    iput-object p2, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 22
    return-void
.end method

.method public static checkName(Ljava/lang/String;)I
    .registers 10
    .param p0, "value"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 97
    .local v0, "len":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 98
    return v1

    .line 99
    :cond_8
    const/4 v2, 0x2

    .line 100
    .local v2, "result":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v0, :cond_4f

    .line 102
    if-nez v3, :cond_10

    const/4 v4, 0x1

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    .line 103
    .local v4, "first":Z
    :goto_11
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 104
    .local v3, "ch":I
    const v6, 0xd800

    if-lt v3, v6, :cond_34

    const v7, 0xdc00

    if-ge v3, v7, :cond_34

    if-ge v5, v0, :cond_34

    .line 105
    sub-int v6, v3, v6

    mul-int/lit16 v6, v6, 0x400

    add-int/lit8 v8, v5, 0x1

    .end local v5    # "i":I
    .local v8, "i":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v7

    add-int/2addr v6, v5

    const/high16 v5, 0x10000

    add-int v3, v6, v5

    move v5, v8

    .line 106
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_34
    const/16 v6, 0x3a

    if-ne v3, v6, :cond_3d

    .line 108
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4d

    .line 109
    const/4 v2, 0x1

    goto :goto_4d

    .line 111
    :cond_3d
    invoke-static {v3}, Lgnu/xml/XName;->isNamePart(I)Z

    move-result v6

    if-nez v6, :cond_44

    .line 112
    return v1

    .line 113
    :cond_44
    if-eqz v4, :cond_4d

    invoke-static {v3}, Lgnu/xml/XName;->isNameStart(I)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 114
    const/4 v2, 0x0

    .line 115
    .end local v3    # "ch":I
    .end local v4    # "first":Z
    :cond_4d
    :goto_4d
    move v3, v5

    goto :goto_a

    .line 116
    .end local v5    # "i":I
    :cond_4f
    return v2
.end method

.method public static isNCName(Ljava/lang/String;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 86
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static isName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 81
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static isNamePart(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 67
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_11

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public static isNameStart(I)Z
    .registers 2
    .param p0, "ch"    # I

    .line 57
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStart(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public static isNmToken(Ljava/lang/String;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lgnu/xml/XName;->checkName(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public final getNamespaceNodes()Lgnu/xml/NamespaceBinding;
    .registers 2

    .line 27
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-object v0
.end method

.method lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    :goto_2
    if-eqz v0, :cond_e

    .line 35
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    if-ne p1, v1, :cond_b

    .line 36
    iget-object v1, v0, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    return-object v1

    .line 33
    :cond_b
    iget-object v0, v0, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_2

    .line 38
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lgnu/mapping/Symbol;->readExternal(Ljava/io/ObjectInput;)V

    .line 51
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 52
    return-void
.end method

.method public final setNamespaceNodes(Lgnu/xml/NamespaceBinding;)V
    .registers 2
    .param p1, "nodes"    # Lgnu/xml/NamespaceBinding;

    .line 29
    iput-object p1, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-super {p0, p1}, Lgnu/mapping/Symbol;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 44
    iget-object v0, p0, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

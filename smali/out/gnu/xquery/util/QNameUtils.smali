.class public Lgnu/xquery/util/QNameUtils;
.super Ljava/lang/Object;
.source "QNameUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static localNameFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/Object;

    .line 158
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_22

    if-nez p0, :cond_7

    goto :goto_22

    .line 160
    :cond_7
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_17

    .line 162
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object v0

    return-object v0

    .line 161
    :cond_17
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "local-name-from-QName"

    const-string v3, "xs:QName"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_22
    :goto_22
    return-object p0
.end method

.method public static lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "constructorNamespaces"    # Lgnu/xml/NamespaceBinding;
    .param p2, "prologNamespaces"    # Lgnu/xml/NamespaceBinding;

    .line 94
    move-object v0, p1

    .line 96
    .local v0, "ns":Lgnu/xml/NamespaceBinding;
    :goto_1
    if-nez v0, :cond_8

    .line 98
    invoke-virtual {p2, p0}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "uri":Ljava/lang/String;
    goto :goto_13

    .line 101
    .end local v1    # "uri":Ljava/lang/String;
    :cond_8
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p0, :cond_1a

    .line 103
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "uri":Ljava/lang/String;
    nop

    .line 107
    .end local v0    # "ns":Lgnu/xml/NamespaceBinding;
    :goto_13
    if-nez v1, :cond_19

    if-nez p0, :cond_19

    .line 108
    const-string v1, ""

    .line 109
    :cond_19
    return-object v1

    .line 94
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v0    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_1a
    invoke-virtual {v0}, Lgnu/xml/NamespaceBinding;->getNext()Lgnu/xml/NamespaceBinding;

    move-result-object v0

    goto :goto_1
.end method

.method public static makeQName(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 10
    .param p0, "paramURI"    # Ljava/lang/Object;
    .param p1, "paramQName"    # Ljava/lang/String;

    .line 134
    if-eqz p0, :cond_6

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v0, :cond_8

    .line 135
    :cond_6
    const-string p0, ""

    .line 136
    :cond_8
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 137
    .local v0, "colon":I
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 138
    .local v1, "namespaceURI":Ljava/lang/String;
    if-gez v0, :cond_17

    .line 140
    move-object v2, p1

    .line 141
    .local v2, "localPart":Ljava/lang/String;
    const-string v3, ""

    .local v3, "prefix":Ljava/lang/String;
    goto :goto_26

    .line 145
    .end local v2    # "localPart":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_17
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "localPart":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 148
    .restart local v3    # "prefix":Ljava/lang/String;
    :goto_26
    invoke-static {v2}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "\'"

    if-eqz v4, :cond_61

    if-ltz v0, :cond_36

    invoke-static {v3}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 151
    :cond_36
    if-ltz v0, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3f

    goto :goto_5c

    .line 152
    :cond_3f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "empty uri for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 153
    :cond_5c
    :goto_5c
    invoke-static {v1, v2, v3}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v4

    return-object v4

    .line 150
    :cond_61
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid QName syntax \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static namespaceURIForPrefix(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "prefix"    # Ljava/lang/Object;
    .param p1, "element"    # Ljava/lang/Object;

    .line 196
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->coerce(Ljava/lang/Object;)Lgnu/kawa/xml/KNode;

    move-result-object v0

    .line 197
    .local v0, "el":Lgnu/kawa/xml/KNode;
    const-string v1, "namespace-uri-for-prefix"

    if-eqz v0, :cond_3a

    .line 200
    if-eqz p0, :cond_2f

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p0, v2, :cond_f

    goto :goto_2f

    .line 202
    :cond_f
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_21

    instance-of v2, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_18

    goto :goto_21

    .line 203
    :cond_18
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x1

    const-string v4, "xs:string"

    invoke-direct {v2, v1, v3, p1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_21
    :goto_21
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    if-ne v1, v2, :cond_30

    .line 208
    const/4 v1, 0x0

    goto :goto_30

    .line 201
    .end local v1    # "str":Ljava/lang/String;
    :cond_2f
    :goto_2f
    const/4 v1, 0x0

    .line 210
    .restart local v1    # "str":Ljava/lang/String;
    :cond_30
    :goto_30
    invoke-virtual {v0, v1}, Lgnu/kawa/xml/KNode;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "uri":Ljava/lang/String;
    if-nez v2, :cond_39

    .line 212
    sget-object v3, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v3

    .line 214
    :cond_39
    return-object v2

    .line 198
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "uri":Ljava/lang/String;
    :cond_3a
    new-instance v2, Lgnu/mapping/WrongType;

    const/4 v3, 0x2

    const-string v4, "node()"

    invoke-direct {v2, v1, v3, p1, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public static namespaceURIFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "name"    # Ljava/lang/Object;

    .line 181
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_1f

    if-nez p0, :cond_7

    goto :goto_1f

    .line 185
    :cond_7
    :try_start_7
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_12} :catch_13

    return-object v0

    .line 187
    :catch_13
    move-exception v0

    .line 189
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "namespace-uri"

    const-string v4, "xs:QName"

    invoke-direct {v1, v3, v2, p0, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v1

    .line 182
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :cond_1f
    :goto_1f
    return-object p0
.end method

.method public static prefixFromQName(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/Object;

    .line 167
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_2e

    if-nez p0, :cond_7

    goto :goto_2e

    .line 169
    :cond_7
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_23

    .line 171
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_20

    .line 174
    :cond_1b
    invoke-static {v0}, Lgnu/kawa/xml/XStringType;->makeNCName(Ljava/lang/String;)Lgnu/kawa/xml/XString;

    move-result-object v1

    return-object v1

    .line 173
    :cond_20
    :goto_20
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 176
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_23
    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "prefix-from-QName"

    const-string v3, "xs:QName"

    invoke-direct {v0, v2, v1, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_2e
    :goto_2e
    return-object p0
.end method

.method public static resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;
    .registers 7
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "constructorNamespaces"    # Lgnu/xml/NamespaceBinding;
    .param p2, "prologNamespaces"    # Lgnu/xml/NamespaceBinding;

    .line 119
    invoke-static {p0, p1, p2}, Lgnu/xquery/util/QNameUtils;->lookupPrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "uri":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 122
    return-object v0

    .line 121
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown namespace prefix \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveQName(Ljava/lang/Object;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/Object;
    .registers 10
    .param p0, "qname"    # Ljava/lang/Object;
    .param p1, "constructorNamespaces"    # Lgnu/xml/NamespaceBinding;
    .param p2, "prologNamespaces"    # Lgnu/xml/NamespaceBinding;

    .line 57
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_9

    .line 59
    return-object p0

    .line 60
    :cond_9
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_74

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_15

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_74

    .line 63
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 66
    .local v1, "colon":I
    if-gez v1, :cond_29

    .line 68
    move-object v2, v0

    .line 69
    .local v2, "localPart":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "prefix":Ljava/lang/String;
    goto :goto_38

    .line 73
    .end local v2    # "localPart":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_29
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 74
    .restart local v3    # "prefix":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    .restart local v2    # "localPart":Ljava/lang/String;
    :goto_38
    invoke-static {v2}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    if-eqz v3, :cond_46

    invoke-static {v3}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 81
    :cond_46
    invoke-static {v3, p1, p2}, Lgnu/xquery/util/QNameUtils;->resolvePrefix(Ljava/lang/String;Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "uri":Ljava/lang/String;
    if-nez v3, :cond_4f

    const-string v5, ""

    goto :goto_50

    :cond_4f
    move-object v5, v3

    :goto_50
    invoke-static {v4, v2, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    return-object v5

    .line 79
    .end local v4    # "uri":Ljava/lang/String;
    :cond_55
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid QName syntax \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "colon":I
    .end local v2    # "localPart":Ljava/lang/String;
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad argument to QName"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static resolveQNameUsingElement(Ljava/lang/Object;Lgnu/kawa/xml/KElement;)Ljava/lang/Object;
    .registers 11
    .param p0, "qname"    # Ljava/lang/Object;
    .param p1, "node"    # Lgnu/kawa/xml/KElement;

    .line 11
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_a3

    if-nez p0, :cond_c

    goto/16 :goto_a3

    .line 14
    :cond_c
    instance-of v0, p0, Lgnu/mapping/Values;

    if-nez v0, :cond_9b

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_18

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_9b

    .line 17
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lgnu/xml/TextUtils;->replaceWhitespace(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 20
    .local v1, "colon":I
    if-gez v1, :cond_2c

    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v0

    .local v3, "localPart":Ljava/lang/String;
    goto :goto_3b

    .line 27
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "localPart":Ljava/lang/String;
    :cond_2c
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 28
    .restart local v2    # "prefix":Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    .restart local v3    # "localPart":Ljava/lang/String;
    :goto_3b
    invoke-virtual {p1, v2}, Lgnu/kawa/xml/KElement;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "uri":Ljava/lang/String;
    const-string v5, "\'"

    if-nez v4, :cond_65

    .line 33
    if-nez v2, :cond_48

    .line 34
    const-string v4, ""

    goto :goto_65

    .line 36
    :cond_48
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown namespace for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 38
    :cond_65
    :goto_65
    invoke-static {v3}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    if-eqz v2, :cond_73

    invoke-static {v2}, Lgnu/xquery/util/QNameUtils;->validNCName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 43
    :cond_73
    if-nez v2, :cond_78

    const-string v5, ""

    goto :goto_79

    :cond_78
    move-object v5, v2

    :goto_79
    invoke-static {v4, v3, v5}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v5

    return-object v5

    .line 41
    :cond_7e
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid QName syntax \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 16
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "colon":I
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "localPart":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_9b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "bad argument to QName"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_a3
    :goto_a3
    return-object p0
.end method

.method public static resolveURI(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "relative"    # Ljava/lang/Object;
    .param p1, "base"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 220
    instance-of v0, p0, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_8

    .line 221
    invoke-static {p0}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 222
    :cond_8
    instance-of v0, p1, Lgnu/kawa/xml/KNode;

    if-eqz v0, :cond_10

    .line 223
    invoke-static {p1}, Lgnu/kawa/xml/KNode;->atomicValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 224
    :cond_10
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq p0, v0, :cond_48

    if-nez p0, :cond_17

    goto :goto_48

    .line 226
    :cond_17
    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_1f

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 228
    :cond_1f
    instance-of v0, p1, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_27

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 230
    :cond_27
    instance-of v0, p1, Lgnu/text/Path;

    if-eqz v0, :cond_2f

    move-object v0, p1

    check-cast v0, Lgnu/text/Path;

    goto :goto_33

    :cond_2f
    invoke-static {p1}, Lgnu/text/URIPath;->makeURI(Ljava/lang/Object;)Lgnu/text/URIPath;

    move-result-object v0

    .line 231
    .local v0, "baseP":Lgnu/text/Path;
    :goto_33
    instance-of v1, p0, Lgnu/text/Path;

    if-eqz v1, :cond_3f

    .line 232
    move-object v1, p0

    check-cast v1, Lgnu/text/Path;

    invoke-virtual {v0, v1}, Lgnu/text/Path;->resolve(Lgnu/text/Path;)Lgnu/text/Path;

    move-result-object v1

    return-object v1

    .line 234
    :cond_3f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/Path;->resolve(Ljava/lang/String;)Lgnu/text/Path;

    move-result-object v1

    return-object v1

    .line 225
    .end local v0    # "baseP":Lgnu/text/Path;
    :cond_48
    :goto_48
    return-object p0
.end method

.method public static validNCName(Ljava/lang/String;)Z
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 127
    invoke-static {p0}, Lgnu/xml/XName;->isName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.class public Lgnu/mapping/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"

# interfaces
.implements Lgnu/mapping/EnvironmentKey;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Externalizable;


# static fields
.field public static final FUNCTION:Lgnu/mapping/Symbol;

.field public static final PLIST:Lgnu/mapping/Symbol;


# instance fields
.field protected name:Ljava/lang/String;

.field namespace:Lgnu/mapping/Namespace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 350
    const-string v0, "(function)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->FUNCTION:Lgnu/mapping/Symbol;

    .line 362
    const-string v0, "(property-list)"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/mapping/Symbol;->PLIST:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V
    .registers 3
    .param p1, "ns"    # Lgnu/mapping/Namespace;
    .param p2, "name"    # Ljava/lang/String;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 292
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 293
    return-void
.end method

.method public static equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z
    .registers 8
    .param p0, "sym1"    # Lgnu/mapping/Symbol;
    .param p1, "sym2"    # Lgnu/mapping/Symbol;

    .line 305
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 306
    return v0

    .line 307
    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_22

    if-nez p1, :cond_a

    goto :goto_22

    .line 312
    :cond_a
    iget-object v2, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    iget-object v3, p1, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-ne v2, v3, :cond_21

    .line 315
    iget-object v2, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 316
    .local v2, "namespace1":Lgnu/mapping/Namespace;
    iget-object v3, p1, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 319
    .local v3, "namespace2":Lgnu/mapping/Namespace;
    if-eqz v2, :cond_21

    if-eqz v3, :cond_21

    .line 320
    iget-object v4, v2, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    iget-object v5, v3, Lgnu/mapping/Namespace;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0

    .line 322
    .end local v2    # "namespace1":Lgnu/mapping/Namespace;
    .end local v3    # "namespace2":Lgnu/mapping/Namespace;
    :cond_21
    return v1

    .line 308
    :cond_22
    :goto_22
    return v1
.end method

.method public static make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "namespace"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    goto :goto_f

    :cond_c
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Namespace;

    .line 119
    .local v0, "ns":Lgnu/mapping/Namespace;
    :goto_f
    if-eqz v0, :cond_1d

    if-nez p1, :cond_14

    goto :goto_1d

    .line 121
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1

    .line 120
    :cond_1d
    :goto_1d
    invoke-static {p1}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 105
    invoke-static {p0, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 277
    new-instance v0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgnu/mapping/Symbol;-><init>(Lgnu/mapping/Namespace;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "local"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 249
    invoke-static {p1}, Lgnu/mapping/Namespace;->makeUnknownNamespace(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 11
    .param p0, "symbol"    # Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 185
    .local v0, "slen":I
    const/4 v1, -0x1

    .local v1, "lbr":I
    const/4 v2, -0x1

    .line 186
    .local v2, "rbr":I
    const/4 v3, 0x0

    .line 187
    .local v3, "braceCount":I
    const/4 v4, 0x0

    .line 188
    .local v4, "mainStart":I
    const/4 v5, 0x0

    .line 189
    .local v5, "prefixEnd":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    if-ge v6, v0, :cond_45

    .line 191
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 192
    .local v7, "ch":C
    const/16 v8, 0x3a

    if-ne v7, v8, :cond_1a

    if-nez v3, :cond_1a

    .line 194
    move v5, v6

    .line 195
    add-int/lit8 v4, v6, 0x1

    .line 196
    goto :goto_45

    .line 198
    :cond_1a
    const/16 v9, 0x7b

    if-ne v7, v9, :cond_24

    .line 200
    if-gez v1, :cond_22

    .line 202
    move v5, v6

    .line 203
    move v1, v6

    .line 205
    :cond_22
    add-int/lit8 v3, v3, 0x1

    .line 207
    :cond_24
    const/16 v9, 0x7d

    if-ne v7, v9, :cond_42

    .line 209
    add-int/lit8 v3, v3, -0x1

    .line 210
    if-nez v3, :cond_3e

    .line 212
    move v2, v6

    .line 213
    if-ge v6, v0, :cond_3a

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_3a

    add-int/lit8 v8, v6, 0x2

    goto :goto_3c

    :cond_3a
    add-int/lit8 v8, v6, 0x1

    :goto_3c
    move v4, v8

    .line 214
    goto :goto_45

    .line 216
    :cond_3e
    if-gez v3, :cond_42

    .line 218
    move v4, v5

    .line 219
    goto :goto_45

    .line 189
    .end local v7    # "ch":C
    :cond_42
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 223
    .end local v6    # "i":I
    :cond_45
    :goto_45
    const/4 v6, 0x0

    if-ltz v1, :cond_61

    if-lez v2, :cond_61

    .line 225
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "uri":Ljava/lang/String;
    if-lez v5, :cond_57

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_58

    :cond_57
    const/4 v6, 0x0

    .line 227
    .local v6, "prefix":Ljava/lang/String;
    :goto_58
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7, v6}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v8

    return-object v8

    .line 229
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    :cond_61
    if-lez v5, :cond_70

    .line 231
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lgnu/mapping/Symbol;->makeWithUnknownNamespace(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v6

    return-object v6

    .line 236
    :cond_70
    invoke-static {p0}, Lgnu/mapping/Symbol;->valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;

    move-result-object v6

    return-object v6
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/mapping/SimpleSymbol;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 126
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "spec"    # Ljava/lang/Object;

    .line 131
    if-eqz p1, :cond_29

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_7

    goto :goto_29

    .line 134
    :cond_7
    instance-of v0, p1, Lgnu/mapping/Namespace;

    if-eqz v0, :cond_f

    .line 135
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Namespace;

    .local v0, "ns":Lgnu/mapping/Namespace;
    goto :goto_20

    .line 136
    .end local v0    # "ns":Lgnu/mapping/Namespace;
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_16

    .line 137
    sget-object v0, Lgnu/mapping/Namespace;->EmptyNamespace:Lgnu/mapping/Namespace;

    .restart local v0    # "ns":Lgnu/mapping/Namespace;
    goto :goto_20

    .line 141
    .end local v0    # "ns":Lgnu/mapping/Namespace;
    :cond_16
    check-cast p1, Ljava/lang/CharSequence;

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    .line 147
    .restart local v0    # "ns":Lgnu/mapping/Namespace;
    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    return-object v1

    .line 132
    .end local v0    # "ns":Lgnu/mapping/Namespace;
    :cond_29
    :goto_29
    invoke-static {p0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 163
    invoke-static {p1, p2}, Lgnu/mapping/Namespace;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    .line 298
    .local v0, "other":Lgnu/mapping/Symbol;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 300
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 299
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "comparing Symbols in different namespaces"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 330
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    invoke-static {p0, v0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final getKeyProperty()Ljava/lang/Object;
    .registers 2

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getKeySymbol()Lgnu/mapping/Symbol;
    .registers 1

    .line 40
    return-object p0
.end method

.method public final getLocalName()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocalPart()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespace()Lgnu/mapping/Namespace;
    .registers 2

    .line 341
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    return-object v0
.end method

.method public final getNamespaceURI()Ljava/lang/String;
    .registers 3

    .line 54
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 55
    .local v0, "ns":Lgnu/mapping/Namespace;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public final getPrefix()Ljava/lang/String;
    .registers 3

    .line 65
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 66
    .local v0, "ns":Lgnu/mapping/Namespace;
    if-nez v0, :cond_7

    const-string v1, ""

    goto :goto_9

    :cond_7
    iget-object v1, v0, Lgnu/mapping/Namespace;->prefix:Ljava/lang/String;

    :goto_9
    return-object v1
.end method

.method public final hasEmptyNamespace()Z
    .registers 4

    .line 72
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 74
    .local v0, "ns":Lgnu/mapping/Namespace;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lgnu/mapping/Namespace;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "nsname":Ljava/lang/String;
    if-eqz v1, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    .end local v2    # "nsname":Ljava/lang/String;
    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 335
    iget-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public matches(Lgnu/mapping/EnvironmentKey;)Z
    .registers 3
    .param p1, "key"    # Lgnu/mapping/EnvironmentKey;

    .line 44
    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-static {v0, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lgnu/mapping/EnvironmentKey;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public matches(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;

    .line 48
    invoke-static {p1, p0}, Lgnu/mapping/Symbol;->equals(Lgnu/mapping/Symbol;Lgnu/mapping/Symbol;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
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

    .line 414
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Namespace;

    iput-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 415
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgnu/mapping/Symbol;->name:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    if-nez v0, :cond_5

    .line 422
    return-object p0

    .line 423
    :cond_5
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public final setNamespace(Lgnu/mapping/Namespace;)V
    .registers 2
    .param p1, "ns"    # Lgnu/mapping/Namespace;

    .line 346
    iput-object p1, p0, Lgnu/mapping/Symbol;->namespace:Lgnu/mapping/Namespace;

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 366
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lgnu/mapping/Symbol;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(C)Ljava/lang/String;
    .registers 9
    .param p1, "style"    # C

    .line 377
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "prefix":Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    .line 380
    .local v4, "hasUri":Z
    :goto_15
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 381
    .local v2, "hasPrefix":Z
    :goto_1f
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "name":Ljava/lang/String;
    if-nez v4, :cond_29

    if-eqz v2, :cond_28

    goto :goto_29

    .line 398
    :cond_28
    return-object v3

    .line 384
    :cond_29
    :goto_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v5, "sbuf":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_39

    const/16 v6, 0x55

    if-ne p1, v6, :cond_36

    if-nez v4, :cond_39

    .line 386
    :cond_36
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_39
    if-eqz v4, :cond_52

    const/16 v6, 0x50

    if-ne p1, v6, :cond_41

    if-nez v2, :cond_52

    .line 389
    :cond_41
    const/16 v6, 0x7b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    :cond_52
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    .line 404
    .local v0, "ns":Lgnu/mapping/Namespace;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 406
    return-void
.end method

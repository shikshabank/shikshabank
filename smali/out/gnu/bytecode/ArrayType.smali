.class public Lgnu/bytecode/ArrayType;
.super Lgnu/bytecode/ObjectType;
.source "ArrayType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public elements:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "elements"    # Lgnu/bytecode/Type;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;)V
    .registers 3
    .param p1, "elements"    # Lgnu/bytecode/Type;
    .param p2, "name"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/ArrayType;->this_name:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 22
    return-void
.end method

.method public static make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;
    .registers 5
    .param p0, "elements"    # Lgnu/bytecode/Type;

    .line 53
    iget-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 54
    .local v0, "array_type":Lgnu/bytecode/ArrayType;
    if-nez v0, :cond_23

    .line 56
    new-instance v1, Lgnu/bytecode/ArrayType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    move-object v0, v1

    .line 57
    iput-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 59
    :cond_23
    return-object v0
.end method

.method static make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 41
    .local v0, "elements":Lgnu/bytecode/Type;
    iget-object v1, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 42
    .local v1, "array_type":Lgnu/bytecode/ArrayType;
    if-nez v1, :cond_1b

    .line 44
    new-instance v2, Lgnu/bytecode/ArrayType;

    invoke-direct {v2, v0, p0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    move-object v1, v2

    .line 45
    iput-object v1, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 47
    :cond_1b
    return-object v1
.end method


# virtual methods
.method public compare(Lgnu/bytecode/Type;)I
    .registers 4
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 127
    sget-object v0, Lgnu/bytecode/ArrayType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_6

    .line 128
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_6
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_16

    .line 130
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ArrayType;

    iget-object v1, v1, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    return v0

    .line 131
    :cond_16
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lgnu/bytecode/ArrayType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_27

    goto :goto_29

    .line 135
    :cond_27
    const/4 v0, -0x3

    return v0

    .line 133
    :cond_29
    :goto_29
    const/4 v0, -0x1

    return v0
.end method

.method public getComponentType()Lgnu/bytecode/Type;
    .registers 2

    .line 62
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .registers 3

    .line 33
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 34
    .local v0, "eltype":Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    if-ne v1, v0, :cond_c

    move-object v1, p0

    goto :goto_10

    :cond_c
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    :goto_10
    return-object v1
.end method

.method public getInternalName()Ljava/lang/String;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .registers 6
    .param p1, "filter"    # Lgnu/bytecode/Filter;
    .param p2, "searchSupers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .line 104
    .local p3, "result":Ljava/util/List;, "Ljava/util/List<Lgnu/bytecode/Method;>;"
    const/4 v0, 0x0

    if-lez p2, :cond_1e

    .line 106
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1, v0, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v0

    .line 107
    .local v0, "count":I
    const/4 v1, 0x1

    if-le p2, v1, :cond_1d

    sget-object v1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    invoke-interface {p1, v1}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 109
    if-eqz p3, :cond_1b

    .line 111
    sget-object v1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    .line 113
    .local v1, "meth":Lgnu/bytecode/Method;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "meth":Lgnu/bytecode/Method;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 120
    :cond_1d
    return v0

    .line 122
    .end local v0    # "count":I
    :cond_1e
    return v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .registers 5

    .line 71
    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    if-nez v0, :cond_21

    .line 73
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "cname":Ljava/lang/String;
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 75
    .local v1, "elClass":Ljava/lang/Class;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    .line 78
    .end local v0    # "cname":Ljava/lang/String;
    .end local v1    # "elClass":Ljava/lang/Class;
    :cond_21
    iget v0, p0, Lgnu/bytecode/ArrayType;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/bytecode/ArrayType;->flags:I
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    .line 91
    goto :goto_2f

    .line 80
    :catch_28
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    iget v1, p0, Lgnu/bytecode/ArrayType;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_32

    .line 92
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_2f
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    return-object v0

    .line 84
    .restart local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_32
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such array class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, "rex":Ljava/lang/RuntimeException;
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v1
.end method

.method public getSignature()Ljava/lang/String;
    .registers 3

    .line 26
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ArrayType;->setSignature(Ljava/lang/String;)V

    .line 28
    :cond_20
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

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

    .line 146
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 147
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iget-object v0, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 152
    .local v0, "array_type":Lgnu/bytecode/ArrayType;
    if-eqz v0, :cond_7

    .line 153
    return-object v0

    .line 156
    :cond_7
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iput-object p0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 157
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

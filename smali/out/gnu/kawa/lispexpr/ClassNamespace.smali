.class public Lgnu/kawa/lispexpr/ClassNamespace;
.super Lgnu/mapping/Namespace;
.source "ClassNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .registers 4
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;

    .line 34
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 37
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;

    .line 18
    sget-object v0, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v0

    .line 20
    :try_start_3
    sget-object v1, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, "old":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v2, :cond_12

    .line 22
    move-object v2, v1

    check-cast v2, Lgnu/kawa/lispexpr/ClassNamespace;

    monitor-exit v0

    return-object v2

    .line 23
    :cond_12
    new-instance v2, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-direct {v2, p1}, Lgnu/kawa/lispexpr/ClassNamespace;-><init>(Lgnu/bytecode/ClassType;)V

    .line 24
    .local v2, "ns":Lgnu/kawa/lispexpr/ClassNamespace;
    sget-object v3, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v0

    return-object v2

    .line 26
    .end local v1    # "old":Ljava/lang/Object;
    .end local v2    # "ns":Lgnu/kawa/lispexpr/ClassNamespace;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    :try_start_0
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-static {v0, p1}, Lgnu/kawa/functions/GetNamedPart;->getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 45
    :catchall_7
    move-exception v0

    .line 47
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .registers 2

    .line 13
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    return-object v0
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

    .line 59
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ClassNamespace;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 68
    sget-object v1, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    .line 69
    .local v1, "ns":Lgnu/mapping/Namespace;
    instance-of v2, v1, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v2, :cond_13

    .line 70
    return-object v1

    .line 71
    :cond_13
    sget-object v2, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v1    # "ns":Lgnu/mapping/Namespace;
    :cond_18
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

    .line 53
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

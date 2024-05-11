.class public Lgnu/mapping/SharedLocation;
.super Lgnu/mapping/NamedLocation;
.source "SharedLocation.java"


# instance fields
.field timestamp:I


# direct methods
.method public constructor <init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V
    .registers 4
    .param p1, "symbol"    # Lgnu/mapping/Symbol;
    .param p2, "property"    # Ljava/lang/Object;
    .param p3, "timestamp"    # I

    .line 15
    invoke-direct {p0, p1, p2}, Lgnu/mapping/NamedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    .line 16
    iput p3, p0, Lgnu/mapping/SharedLocation;->timestamp:I

    .line 17
    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "defaultValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 21
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    .end local p0    # "this":Lgnu/mapping/SharedLocation;
    :cond_c
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;

    if-ne v0, v1, :cond_14

    move-object v0, p1

    goto :goto_16

    :cond_14
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :goto_16
    monitor-exit p0

    return-object v0

    .line 21
    .end local p1    # "defaultValue":Ljava/lang/Object;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isBound()Z
    .registers 3

    monitor-enter p0

    .line 27
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z

    move-result v0

    goto :goto_15

    .end local p0    # "this":Lgnu/mapping/SharedLocation;
    :cond_c
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/Location;->UNBOUND:Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return v0

    .line 27
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized set(Ljava/lang/Object;)V
    .registers 5
    .param p1, "newValue"    # Ljava/lang/Object;

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    if-nez v0, :cond_8

    .line 33
    iput-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    goto :goto_31

    .line 34
    .end local p0    # "this":Lgnu/mapping/SharedLocation;
    :cond_8
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    sget-object v1, Lgnu/mapping/SharedLocation;->DIRECT_ON_SET:Ljava/lang/Object;

    if-ne v0, v1, :cond_14

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 37
    iput-object p1, p0, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    goto :goto_31

    .line 39
    :cond_14
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 40
    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getEnvironment()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/mapping/SharedLocation;->getKeyProperty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_31

    .line 42
    :cond_2c
    iget-object v0, p0, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 43
    :goto_31
    monitor-exit p0

    return-void

    .line 31
    .end local p1    # "newValue":Ljava/lang/Object;
    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

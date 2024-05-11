.class public Lgnu/mapping/ConstrainedLocation;
.super Lgnu/mapping/Location;
.source "ConstrainedLocation.java"


# instance fields
.field protected base:Lgnu/mapping/Location;

.field protected converter:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;
    .registers 3
    .param p0, "base"    # Lgnu/mapping/Location;
    .param p1, "converter"    # Lgnu/mapping/Procedure;

    .line 15
    new-instance v0, Lgnu/mapping/ConstrainedLocation;

    invoke-direct {v0}, Lgnu/mapping/ConstrainedLocation;-><init>()V

    .line 16
    .local v0, "cloc":Lgnu/mapping/ConstrainedLocation;
    iput-object p0, v0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    .line 17
    iput-object p1, v0, Lgnu/mapping/ConstrainedLocation;->converter:Lgnu/mapping/Procedure;

    .line 18
    return-object v0
.end method


# virtual methods
.method protected coerce(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 50
    :try_start_0
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->converter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    return-object v0

    .line 52
    :catchall_7
    move-exception v0

    .line 54
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProperty()Ljava/lang/Object;
    .registers 2

    .line 28
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKeySymbol()Lgnu/mapping/Symbol;
    .registers 2

    .line 23
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public isBound()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isBound()Z

    move-result v0

    return v0
.end method

.method public isConstant()Z
    .registers 2

    .line 33
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->isConstant()Z

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {p0, p1}, Lgnu/mapping/ConstrainedLocation;->coerce(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setRestore(Ljava/lang/Object;)V
    .registers 3
    .param p1, "oldValue"    # Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public setWithSave(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lgnu/mapping/ConstrainedLocation;->base:Lgnu/mapping/Location;

    invoke-virtual {p0, p1}, Lgnu/mapping/ConstrainedLocation;->coerce(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

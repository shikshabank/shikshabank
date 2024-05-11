.class public Lgnu/mapping/LocationProc;
.super Lgnu/mapping/Procedure0or1;
.source "LocationProc.java"

# interfaces
.implements Lgnu/mapping/HasSetter;


# instance fields
.field loc:Lgnu/mapping/Location;


# direct methods
.method public constructor <init>(Lgnu/mapping/Location;)V
    .registers 2
    .param p1, "loc"    # Lgnu/mapping/Location;

    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 16
    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 17
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)V
    .registers 3
    .param p1, "loc"    # Lgnu/mapping/Location;
    .param p2, "converter"    # Lgnu/mapping/Procedure;

    .line 27
    invoke-direct {p0}, Lgnu/mapping/Procedure0or1;-><init>()V

    .line 28
    iput-object p1, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 29
    if-eqz p2, :cond_a

    .line 30
    invoke-virtual {p0, p2}, Lgnu/mapping/LocationProc;->pushConverter(Lgnu/mapping/Procedure;)V

    .line 31
    :cond_a
    return-void
.end method

.method public static makeNamed(Lgnu/mapping/Symbol;Lgnu/mapping/Location;)Lgnu/mapping/LocationProc;
    .registers 3
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "loc"    # Lgnu/mapping/Location;

    .line 21
    new-instance v0, Lgnu/mapping/LocationProc;

    invoke-direct {v0, p1}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    .line 22
    .local v0, "lproc":Lgnu/mapping/LocationProc;
    invoke-virtual {v0, p0}, Lgnu/mapping/LocationProc;->setSymbol(Ljava/lang/Object;)V

    .line 23
    return-object v0
.end method


# virtual methods
.method public apply0()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lgnu/mapping/LocationProc;->set0(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public final getLocation()Lgnu/mapping/Location;
    .registers 2

    .line 61
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    return-object v0
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .registers 2

    .line 56
    new-instance v0, Lgnu/mapping/Setter0;

    invoke-direct {v0, p0}, Lgnu/mapping/Setter0;-><init>(Lgnu/mapping/Procedure;)V

    return-object v0
.end method

.method public pushConverter(Lgnu/mapping/Procedure;)V
    .registers 3
    .param p1, "converter"    # Lgnu/mapping/Procedure;

    .line 35
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-static {v0, p1}, Lgnu/mapping/ConstrainedLocation;->make(Lgnu/mapping/Location;Lgnu/mapping/Procedure;)Lgnu/mapping/ConstrainedLocation;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    .line 36
    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v0, p1}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 66
    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, "n":Ljava/lang/Object;
    if-eqz v0, :cond_b

    .line 68
    invoke-super {p0}, Lgnu/mapping/Procedure0or1;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 69
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#<location-proc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgnu/mapping/LocationProc;->loc:Lgnu/mapping/Location;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

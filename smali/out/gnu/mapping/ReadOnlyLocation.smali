.class public Lgnu/mapping/ReadOnlyLocation;
.super Lgnu/mapping/ConstrainedLocation;
.source "ReadOnlyLocation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lgnu/mapping/ConstrainedLocation;-><init>()V

    return-void
.end method

.method public static make(Lgnu/mapping/Location;)Lgnu/mapping/ReadOnlyLocation;
    .registers 2
    .param p0, "base"    # Lgnu/mapping/Location;

    .line 10
    new-instance v0, Lgnu/mapping/ReadOnlyLocation;

    invoke-direct {v0}, Lgnu/mapping/ReadOnlyLocation;-><init>()V

    .line 11
    .local v0, "rloc":Lgnu/mapping/ReadOnlyLocation;
    iput-object p0, v0, Lgnu/mapping/ReadOnlyLocation;->base:Lgnu/mapping/Location;

    .line 12
    return-object v0
.end method


# virtual methods
.method protected coerce(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "newValue"    # Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "attempt to modify read-only location"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgnu/mapping/ReadOnlyLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    .line 25
    .local v1, "name":Lgnu/mapping/Symbol;
    if-eqz v1, :cond_15

    .line 27
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 30
    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isConstant()Z
    .registers 2

    .line 17
    const/4 v0, 0x1

    return v0
.end method

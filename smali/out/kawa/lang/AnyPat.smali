.class public Lkawa/lang/AnyPat;
.super Lkawa/lang/Pattern;
.source "AnyPat.java"

# interfaces
.implements Lgnu/text/Printable;
.implements Ljava/io/Externalizable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lkawa/lang/Pattern;-><init>()V

    return-void
.end method

.method public static make()Lkawa/lang/AnyPat;
    .registers 1

    .line 15
    new-instance v0, Lkawa/lang/AnyPat;

    invoke-direct {v0}, Lkawa/lang/AnyPat;-><init>()V

    return-object v0
.end method


# virtual methods
.method public match(Ljava/lang/Object;[Ljava/lang/Object;I)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "vars"    # [Ljava/lang/Object;
    .param p3, "start_vars"    # I

    .line 24
    aput-object p1, p2, p3

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public print(Lgnu/lists/Consumer;)V
    .registers 3
    .param p1, "out"    # Lgnu/lists/Consumer;

    .line 19
    const-string v0, "#<match any>"

    invoke-interface {p1, v0}, Lgnu/lists/Consumer;->write(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public varCount()I
    .registers 2

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    return-void
.end method

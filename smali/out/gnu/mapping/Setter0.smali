.class public Lgnu/mapping/Setter0;
.super Lgnu/mapping/Setter;
.source "Setter0.java"


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;)V
    .registers 2
    .param p1, "getter"    # Lgnu/mapping/Procedure;

    .line 7
    invoke-direct {p0, p1}, Lgnu/mapping/Setter;-><init>(Lgnu/mapping/Procedure;)V

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lgnu/mapping/Setter0;->getter:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->set0(Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 16
    array-length v0, p1

    .line 17
    .local v0, "nargs":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 19
    iget-object v1, p0, Lgnu/mapping/Setter0;->getter:Lgnu/mapping/Procedure;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->set0(Ljava/lang/Object;)V

    .line 20
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v1

    .line 18
    :cond_f
    new-instance v1, Lgnu/mapping/WrongArguments;

    invoke-direct {v1, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v1
.end method

.method public numArgs()I
    .registers 2

    .line 9
    const/16 v0, 0x1001

    return v0
.end method

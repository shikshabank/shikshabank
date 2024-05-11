.class public Lkawa/lang/Continuation;
.super Lgnu/mapping/MethodProc;
.source "Continuation.java"


# static fields
.field static counter:I


# instance fields
.field id:I

.field public invoked:Z


# direct methods
.method public constructor <init>(Lgnu/mapping/CallContext;)V
    .registers 2
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;Lkawa/lang/Continuation;)Ljava/lang/Object;
    .registers 4
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "cont"    # Lkawa/lang/Continuation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 48
    instance-of v0, p0, Lkawa/lang/CalledContinuation;

    if-eqz v0, :cond_16

    move-object v0, p0

    check-cast v0, Lkawa/lang/CalledContinuation;

    move-object v1, v0

    .local v1, "cex":Lkawa/lang/CalledContinuation;
    iget-object v0, v0, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    if-ne v0, p1, :cond_16

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkawa/lang/Continuation;->invoked:Z

    .line 52
    iget-object v0, v1, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    invoke-static {v0}, Lgnu/mapping/Values;->make([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 50
    .end local v1    # "cex":Lkawa/lang/CalledContinuation;
    :cond_16
    throw p0
.end method

.method public static handleException$X(Ljava/lang/Throwable;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V
    .registers 9
    .param p0, "ex"    # Ljava/lang/Throwable;
    .param p1, "cont"    # Lkawa/lang/Continuation;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 34
    instance-of v0, p0, Lkawa/lang/CalledContinuation;

    if-eqz v0, :cond_20

    move-object v0, p0

    check-cast v0, Lkawa/lang/CalledContinuation;

    move-object v1, v0

    .local v1, "cex":Lkawa/lang/CalledContinuation;
    iget-object v0, v0, Lkawa/lang/CalledContinuation;->continuation:Lkawa/lang/Continuation;

    if-ne v0, p1, :cond_20

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p1, Lkawa/lang/Continuation;->invoked:Z

    .line 38
    iget-object v0, v1, Lkawa/lang/CalledContinuation;->values:[Ljava/lang/Object;

    .line 39
    .local v0, "values":[Ljava/lang/Object;
    array-length v2, v0

    .line 40
    .local v2, "nvalues":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_1f

    .line 41
    iget-object v4, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Lgnu/lists/Consumer;->writeObject(Ljava/lang/Object;)V

    .line 40
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 42
    .end local v3    # "i":I
    :cond_1f
    return-void

    .line 36
    .end local v0    # "values":[Ljava/lang/Object;
    .end local v1    # "cex":Lkawa/lang/CalledContinuation;
    .end local v2    # "nvalues":I
    :cond_20
    goto :goto_22

    :goto_21
    throw p0

    :goto_22
    goto :goto_21
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 23
    iget-boolean v0, p0, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v0, :cond_c

    .line 24
    new-instance v0, Lkawa/lang/GenericError;

    const-string v1, "implementation restriction: continuation can only be used once"

    invoke-direct {v0, v1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_c
    new-instance v0, Lkawa/lang/CalledContinuation;

    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-direct {v0, v1, p0, p1}, Lkawa/lang/CalledContinuation;-><init>([Ljava/lang/Object;Lkawa/lang/Continuation;Lgnu/mapping/CallContext;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#<continuation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lkawa/lang/Continuation;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lkawa/lang/Continuation;->invoked:Z

    if-eqz v1, :cond_18

    const-string v1, " (invoked)>"

    goto :goto_1a

    :cond_18
    const-string v1, ">"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

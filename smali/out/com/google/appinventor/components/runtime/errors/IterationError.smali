.class public Lcom/google/appinventor/components/runtime/errors/IterationError;
.super Lcom/google/appinventor/components/runtime/errors/DispatchableError;
.source "IterationError.java"


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "arguments"    # [Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;
    .registers 5
    .param p0, "index"    # I
    .param p1, "e"    # Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    .line 29
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_38

    .line 37
    return-object p1

    .line 33
    :sswitch_8
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IterationError;

    const/16 v1, 0xd4f

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/errors/IterationError;->prepend(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 35
    :sswitch_18
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IterationError;

    const/16 v1, 0xd50

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/errors/IterationError;->prepend(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    .line 31
    :sswitch_28
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IterationError;

    const/16 v1, 0xd4e

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/appinventor/components/runtime/errors/IterationError;->prepend(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/IterationError;-><init>(I[Ljava/lang/Object;)V

    return-object v0

    :sswitch_data_38
    .sparse-switch
        0xd4d -> :sswitch_28
        0xd51 -> :sswitch_18
        0xd52 -> :sswitch_8
    .end sparse-switch
.end method

.method private static prepend(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "index"    # I
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 42
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    .local v0, "newArguments":[Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 44
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public getExpected()Ljava/lang/String;
    .registers 3

    .line 21
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFound()Ljava/lang/String;
    .registers 3

    .line 25
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 3

    .line 17
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

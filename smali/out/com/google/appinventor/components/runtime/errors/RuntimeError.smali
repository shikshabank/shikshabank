.class public abstract Lcom/google/appinventor/components/runtime/errors/RuntimeError;
.super Ljava/lang/RuntimeException;
.source "RuntimeError.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public static convertToRuntimeError(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/errors/RuntimeError;
    .registers 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 41
    instance-of v0, p0, Lcom/google/appinventor/components/runtime/errors/RuntimeError;

    if-eqz v0, :cond_8

    .line 42
    move-object v0, p0

    check-cast v0, Lcom/google/appinventor/components/runtime/errors/RuntimeError;

    return-object v0

    .line 46
    :cond_8
    instance-of v0, p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    if-eqz v0, :cond_12

    .line 47
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/ArrayIndexOutOfBoundsError;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/ArrayIndexOutOfBoundsError;-><init>()V

    return-object v0

    .line 49
    :cond_12
    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_1c

    .line 50
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>()V

    return-object v0

    .line 52
    :cond_1c
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_26

    .line 53
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/UninitializedInstanceError;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/errors/UninitializedInstanceError;-><init>()V

    return-object v0

    .line 57
    :cond_26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

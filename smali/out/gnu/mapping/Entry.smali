.class Lgnu/mapping/Entry;
.super Ljava/lang/Object;
.source "Table2D.java"


# instance fields
.field chain:Lgnu/mapping/Entry;

.field key1:Ljava/lang/Object;

.field key2:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey1()Ljava/lang/Object;
    .registers 3

    .line 365
    iget-object v0, p0, Lgnu/mapping/Entry;->key1:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    .line 366
    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 368
    :cond_d
    return-object v0
.end method

.method public getKey2()Ljava/lang/Object;
    .registers 3

    .line 374
    iget-object v0, p0, Lgnu/mapping/Entry;->key2:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_d

    .line 375
    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 377
    :cond_d
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    .line 385
    iget-object v0, p0, Lgnu/mapping/Entry;->value:Ljava/lang/Object;

    if-ne v0, p0, :cond_5

    const/4 v0, 0x0

    :cond_5
    return-object v0
.end method

.method public matches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 382
    invoke-virtual {p0}, Lgnu/mapping/Entry;->getKey1()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Lgnu/mapping/Entry;->getKey2()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

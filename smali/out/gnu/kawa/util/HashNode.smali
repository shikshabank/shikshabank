.class public Lgnu/kawa/util/HashNode;
.super Ljava/lang/Object;
.source "HashNode.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lgnu/kawa/util/HashNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgnu/kawa/util/HashNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    .line 57
    iput-object p2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    instance-of v0, p1, Lgnu/kawa/util/HashNode;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 73
    return v1

    .line 77
    :cond_6
    move-object v0, p1

    check-cast v0, Lgnu/kawa/util/HashNode;

    .line 78
    .local v0, "h2":Lgnu/kawa/util/HashNode;
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v2, :cond_12

    iget-object v2, v0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    if-nez v2, :cond_2c

    goto :goto_1a

    :cond_12
    iget-object v3, v0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :goto_1a
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_23

    iget-object v2, v0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_2c

    goto :goto_2b

    :cond_23
    iget-object v3, v0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :goto_2b
    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 28
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 32
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 46
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->key:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    if-nez v2, :cond_10

    goto :goto_14

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_14
    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 36
    .local p0, "this":Lgnu/kawa/util/HashNode;, "Lgnu/kawa/util/HashNode<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 37
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lgnu/kawa/util/HashNode;->value:Ljava/lang/Object;

    .line 38
    return-object v0
.end method

.class public abstract Lgnu/bytecode/CpoolEntry;
.super Ljava/lang/Object;
.source "CpoolEntry.java"


# instance fields
.field hash:I

.field public index:I

.field next:Lgnu/bytecode/CpoolEntry;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ConstantPool;I)V
    .registers 9
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;
    .param p2, "h"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p2, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    .line 55
    iget-boolean v0, p1, Lgnu/bytecode/ConstantPool;->locked:Z

    if-nez v0, :cond_61

    .line 57
    iget v0, p1, Lgnu/bytecode/ConstantPool;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lgnu/bytecode/ConstantPool;->count:I

    iput v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    .line 60
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    if-nez v0, :cond_1c

    .line 61
    const/16 v0, 0x3c

    new-array v0, v0, [Lgnu/bytecode/CpoolEntry;

    iput-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    goto :goto_3b

    .line 62
    :cond_1c
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    iget-object v1, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v1, v1

    if-lt v0, v1, :cond_3b

    .line 64
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v0, v0

    .line 65
    .local v0, "old_size":I
    iget-object v1, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 66
    .local v1, "new_size":I
    new-array v2, v1, [Lgnu/bytecode/CpoolEntry;

    .line 67
    .local v2, "new_pool":[Lgnu/bytecode/CpoolEntry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v0, :cond_39

    .line 68
    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    aget-object v4, v4, v3

    aput-object v4, v2, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 69
    .end local v3    # "i":I
    :cond_39
    iput-object v2, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    .line 73
    .end local v0    # "old_size":I
    .end local v1    # "new_size":I
    .end local v2    # "new_pool":[Lgnu/bytecode/CpoolEntry;
    :cond_3b
    :goto_3b
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    if-eqz v0, :cond_54

    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L    # 0.6

    iget-object v4, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    array-length v4, v4

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v2

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_57

    .line 74
    :cond_54
    invoke-virtual {p1}, Lgnu/bytecode/ConstantPool;->rehash()V

    .line 77
    :cond_57
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->pool:[Lgnu/bytecode/CpoolEntry;

    iget v1, p0, Lgnu/bytecode/CpoolEntry;->index:I

    aput-object p0, v0, v1

    .line 79
    invoke-virtual {p0, p1}, Lgnu/bytecode/CpoolEntry;->add_hashed(Lgnu/bytecode/ConstantPool;)V

    .line 80
    return-void

    .line 56
    :cond_61
    new-instance v0, Ljava/lang/Error;

    const-string v1, "adding new entry to locked contant pool"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_6a

    :goto_69
    throw v0

    :goto_6a
    goto :goto_69
.end method


# virtual methods
.method add_hashed(Lgnu/bytecode/ConstantPool;)V
    .registers 5
    .param p1, "cpool"    # Lgnu/bytecode/ConstantPool;

    .line 44
    iget-object v0, p1, Lgnu/bytecode/ConstantPool;->hashTab:[Lgnu/bytecode/CpoolEntry;

    .line 45
    .local v0, "hashTab":[Lgnu/bytecode/CpoolEntry;
    iget v1, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    array-length v2, v0

    rem-int/2addr v1, v2

    .line 46
    .local v1, "index":I
    aget-object v2, v0, v1

    iput-object v2, p0, Lgnu/bytecode/CpoolEntry;->next:Lgnu/bytecode/CpoolEntry;

    .line 47
    aput-object p0, v0, v1

    .line 48
    return-void
.end method

.method public getIndex()I
    .registers 2

    .line 26
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->index:I

    return v0
.end method

.method public abstract getTag()I
.end method

.method public hashCode()I
    .registers 2

    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolEntry;->hash:I

    return v0
.end method

.method public abstract print(Lgnu/bytecode/ClassTypeWriter;I)V
.end method

.method abstract write(Ljava/io/DataOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

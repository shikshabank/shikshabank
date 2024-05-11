.class public Lgnu/lists/S8Vector;
.super Lgnu/lists/ByteVector;
.source "S8Vector.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 14
    sget-object v0, Lgnu/lists/ByteVector;->empty:[B

    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 27
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 28
    new-array v0, p1, [B

    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 29
    iput p1, p0, Lgnu/lists/S8Vector;->size:I

    .line 30
    return-void
.end method

.method public constructor <init>(IB)V
    .registers 4
    .param p1, "size"    # I
    .param p2, "value"    # B

    .line 18
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 19
    new-array v0, p1, [B

    .line 20
    .local v0, "array":[B
    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 21
    iput p1, p0, Lgnu/lists/S8Vector;->size:I

    .line 22
    :goto_9
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_10

    .line 23
    aput-byte p2, v0, p1

    goto :goto_9

    .line 24
    :cond_10
    return-void
.end method

.method public constructor <init>(Lgnu/lists/Sequence;)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/Sequence;

    .line 39
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 40
    invoke-interface {p1}, Lgnu/lists/Sequence;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    .line 41
    invoke-virtual {p0, p1}, Lgnu/lists/S8Vector;->addAll(Ljava/util/Collection;)Z

    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1, "data"    # [B

    .line 33
    invoke-direct {p0}, Lgnu/lists/ByteVector;-><init>()V

    .line 34
    iput-object p1, p0, Lgnu/lists/S8Vector;->data:[B

    .line 35
    array-length v0, p1

    iput v0, p0, Lgnu/lists/S8Vector;->size:I

    .line 36
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    move-object v0, p1

    check-cast v0, Lgnu/lists/S8Vector;

    invoke-static {p0, v0}, Lgnu/lists/S8Vector;->compareToInt(Lgnu/lists/SimpleVector;Lgnu/lists/SimpleVector;)I

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 51
    iget v0, p0, Lgnu/lists/S8Vector;->size:I

    if-gt p1, v0, :cond_d

    .line 53
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(B)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 52
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final getBuffer(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 58
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte v0, v0, p1

    invoke-static {v0}, Lgnu/lists/Convert;->toObject(B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getElementKind()I
    .registers 2

    .line 70
    const/16 v0, 0x12

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 73
    const-string v0, "s8"

    return-object v0
.end method

.method public final intAtBuffer(I)I
    .registers 3
    .param p1, "index"    # I

    .line 46
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public setBuffer(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lgnu/lists/S8Vector;->data:[B

    aget-byte v0, v0, p1

    .line 64
    .local v0, "old":B
    iget-object v1, p0, Lgnu/lists/S8Vector;->data:[B

    invoke-static {p2}, Lgnu/lists/Convert;->toByte(Ljava/lang/Object;)B

    move-result v2

    aput-byte v2, v1, p1

    .line 65
    invoke-static {v0}, Lgnu/lists/Convert;->toObject(B)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

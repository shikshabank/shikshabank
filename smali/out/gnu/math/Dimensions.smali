.class public Lgnu/math/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# static fields
.field public static Empty:Lgnu/math/Dimensions;

.field private static hashTable:[Lgnu/math/Dimensions;


# instance fields
.field bases:[Lgnu/math/BaseUnit;

.field private chain:Lgnu/math/Dimensions;

.field hash_code:I

.field powers:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const/16 v0, 0x64

    new-array v0, v0, [Lgnu/math/Dimensions;

    sput-object v0, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    .line 41
    new-instance v0, Lgnu/math/Dimensions;

    invoke-direct {v0}, Lgnu/math/Dimensions;-><init>()V

    sput-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Lgnu/math/BaseUnit;

    iput-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 47
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    invoke-direct {p0, v2}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 49
    return-void
.end method

.method constructor <init>(Lgnu/math/BaseUnit;)V
    .registers 6
    .param p1, "unit"    # Lgnu/math/BaseUnit;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/math/BaseUnit;

    iput-object v0, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 55
    const/4 v1, 0x1

    new-array v2, v1, [S

    iput-object v2, p0, Lgnu/math/Dimensions;->powers:[S

    .line 56
    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 57
    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v3, v0, v1

    .line 58
    iget-object v0, p0, Lgnu/math/Dimensions;->powers:[S

    aput-short v1, v0, v2

    .line 59
    iget v0, p1, Lgnu/math/BaseUnit;->index:I

    invoke-direct {p0, v0}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 60
    return-void
.end method

.method private constructor <init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V
    .registers 15
    .param p1, "a"    # Lgnu/math/Dimensions;
    .param p2, "mul_a"    # I
    .param p3, "b"    # Lgnu/math/Dimensions;
    .param p4, "mul_b"    # I
    .param p5, "hash_code"    # I

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    .local v0, "a_i":I
    const/4 v1, 0x0

    .line 67
    .local v1, "b_i":I
    iput p5, p0, Lgnu/math/Dimensions;->hash_code:I

    .line 68
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v0

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v2, v3, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 69
    :cond_13
    const/4 v1, 0x0

    :goto_14
    iget-object v2, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v2, v3, :cond_1f

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 70
    :cond_1f
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    .line 71
    .local v2, "t_i":I
    new-array v3, v2, [Lgnu/math/BaseUnit;

    iput-object v3, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    .line 72
    new-array v3, v2, [S

    iput-object v3, p0, Lgnu/math/Dimensions;->powers:[S

    .line 73
    const/4 v3, 0x0

    move v2, v3

    move v1, v3

    move v0, v3

    .line 76
    :goto_2f
    iget-object v3, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v3, v3, v0

    .line 77
    .local v3, "a_base":Lgnu/math/BaseUnit;
    iget-object v4, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v4, v4, v1

    .line 79
    .local v4, "b_base":Lgnu/math/BaseUnit;
    iget v5, v3, Lgnu/math/BaseUnit;->index:I

    iget v6, v4, Lgnu/math/BaseUnit;->index:I

    if-ge v5, v6, :cond_46

    .line 81
    iget-object v5, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v0

    mul-int v5, v5, p2

    .line 82
    .local v5, "pow":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 84
    .end local v5    # "pow":I
    :cond_46
    iget v5, v4, Lgnu/math/BaseUnit;->index:I

    iget v6, v3, Lgnu/math/BaseUnit;->index:I

    if-ge v5, v6, :cond_56

    .line 86
    move-object v3, v4

    .line 87
    iget-object v5, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v1

    mul-int v5, v5, p4

    .line 88
    .restart local v5    # "pow":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    .line 90
    .end local v5    # "pow":I
    :cond_56
    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_65

    .line 91
    nop

    .line 104
    .end local v3    # "a_base":Lgnu/math/BaseUnit;
    .end local v4    # "b_base":Lgnu/math/BaseUnit;
    iget-object v3, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object v4, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    aput-object v4, v3, v2

    .line 105
    invoke-direct {p0, p5}, Lgnu/math/Dimensions;->enterHash(I)V

    .line 106
    return-void

    .line 94
    .restart local v3    # "a_base":Lgnu/math/BaseUnit;
    .restart local v4    # "b_base":Lgnu/math/BaseUnit;
    :cond_65
    iget-object v5, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v0

    mul-int v5, v5, p2

    iget-object v6, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v1

    mul-int v6, v6, p4

    add-int/2addr v5, v6

    .line 95
    .restart local v5    # "pow":I
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 96
    if-nez v5, :cond_79

    .line 97
    goto :goto_2f

    .line 99
    :cond_79
    :goto_79
    int-to-short v6, v5

    if-ne v6, v5, :cond_89

    .line 101
    iget-object v6, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aput-object v3, v6, v2

    .line 102
    iget-object v6, p0, Lgnu/math/Dimensions;->powers:[S

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "t_i":I
    .local v7, "t_i":I
    int-to-short v8, v5

    aput-short v8, v6, v2

    .line 103
    .end local v3    # "a_base":Lgnu/math/BaseUnit;
    .end local v4    # "b_base":Lgnu/math/BaseUnit;
    .end local v5    # "pow":I
    move v2, v7

    goto :goto_2f

    .line 100
    .end local v7    # "t_i":I
    .restart local v2    # "t_i":I
    .restart local v3    # "a_base":Lgnu/math/BaseUnit;
    .restart local v4    # "b_base":Lgnu/math/BaseUnit;
    .restart local v5    # "pow":I
    :cond_89
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "overflow in dimensions"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw v6

    :goto_92
    goto :goto_91
.end method

.method private enterHash(I)V
    .registers 5
    .param p1, "hash_code"    # I

    .line 34
    iput p1, p0, Lgnu/math/Dimensions;->hash_code:I

    .line 35
    const v0, 0x7fffffff

    and-int/2addr v0, p1

    sget-object v1, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v2, v1

    rem-int/2addr v0, v2

    .line 36
    .local v0, "index":I
    aget-object v2, v1, v0

    iput-object v2, p0, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    .line 37
    aput-object p0, v1, v0

    .line 38
    return-void
.end method

.method private matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z
    .registers 13
    .param p1, "a"    # Lgnu/math/Dimensions;
    .param p2, "mul_a"    # I
    .param p3, "b"    # Lgnu/math/Dimensions;
    .param p4, "mul_b"    # I

    .line 112
    const/4 v0, 0x0

    .local v0, "a_i":I
    const/4 v1, 0x0

    .line 113
    .local v1, "b_i":I
    const/4 v2, 0x0

    .line 115
    .local v2, "t_i":I
    :goto_3
    iget-object v3, p1, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v3, v3, v0

    .line 116
    .local v3, "a_base":Lgnu/math/BaseUnit;
    iget-object v4, p3, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v4, v4, v1

    .line 118
    .local v4, "b_base":Lgnu/math/BaseUnit;
    iget v5, v3, Lgnu/math/BaseUnit;->index:I

    iget v6, v4, Lgnu/math/BaseUnit;->index:I

    const/4 v7, 0x0

    if-ge v5, v6, :cond_1b

    .line 120
    iget-object v5, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v0

    mul-int v5, v5, p2

    .line 121
    .local v5, "pow":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 123
    .end local v5    # "pow":I
    :cond_1b
    iget v5, v4, Lgnu/math/BaseUnit;->index:I

    iget v6, v3, Lgnu/math/BaseUnit;->index:I

    if-ge v5, v6, :cond_2b

    .line 125
    move-object v3, v4

    .line 126
    iget-object v5, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v1

    mul-int v5, v5, p4

    .line 127
    .restart local v5    # "pow":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 129
    .end local v5    # "pow":I
    :cond_2b
    sget-object v5, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne v4, v5, :cond_37

    .line 130
    iget-object v5, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v5, v5, v2

    if-ne v5, v4, :cond_36

    const/4 v7, 0x1

    :cond_36
    return v7

    .line 133
    :cond_37
    iget-object v5, p1, Lgnu/math/Dimensions;->powers:[S

    aget-short v5, v5, v0

    mul-int v5, v5, p2

    iget-object v6, p3, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v1

    mul-int v6, v6, p4

    add-int/2addr v5, v6

    .line 134
    .restart local v5    # "pow":I
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 135
    if-nez v5, :cond_4b

    .line 136
    goto :goto_3

    .line 138
    :cond_4b
    :goto_4b
    iget-object v6, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v6, v6, v2

    if-ne v6, v3, :cond_5c

    iget-object v6, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v6, v6, v2

    if-eq v6, v5, :cond_58

    goto :goto_5c

    .line 140
    :cond_58
    nop

    .end local v3    # "a_base":Lgnu/math/BaseUnit;
    .end local v4    # "b_base":Lgnu/math/BaseUnit;
    .end local v5    # "pow":I
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto :goto_3

    .line 139
    .restart local v3    # "a_base":Lgnu/math/BaseUnit;
    .restart local v4    # "b_base":Lgnu/math/BaseUnit;
    .restart local v5    # "pow":I
    :cond_5c
    :goto_5c
    return v7
.end method

.method public static product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;
    .registers 14
    .param p0, "a"    # Lgnu/math/Dimensions;
    .param p1, "mul_a"    # I
    .param p2, "b"    # Lgnu/math/Dimensions;
    .param p3, "mul_b"    # I

    .line 147
    invoke-virtual {p0}, Lgnu/math/Dimensions;->hashCode()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p2}, Lgnu/math/Dimensions;->hashCode()I

    move-result v1

    mul-int v1, v1, p3

    add-int/2addr v0, v1

    .line 148
    .local v0, "hash":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    sget-object v2, Lgnu/math/Dimensions;->hashTable:[Lgnu/math/Dimensions;

    array-length v3, v2

    rem-int/2addr v1, v3

    .line 149
    .local v1, "index":I
    aget-object v2, v2, v1

    move-object v8, v2

    .line 150
    .local v8, "dim":Lgnu/math/Dimensions;
    :goto_18
    if-eqz v8, :cond_28

    .line 152
    iget v2, v8, Lgnu/math/Dimensions;->hash_code:I

    if-ne v2, v0, :cond_25

    invoke-direct {v8, p0, p1, p2, p3}, Lgnu/math/Dimensions;->matchesProduct(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 153
    return-object v8

    .line 150
    :cond_25
    iget-object v8, v8, Lgnu/math/Dimensions;->chain:Lgnu/math/Dimensions;

    goto :goto_18

    .line 155
    :cond_28
    new-instance v9, Lgnu/math/Dimensions;

    move-object v2, v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, v0

    invoke-direct/range {v2 .. v7}, Lgnu/math/Dimensions;-><init>(Lgnu/math/Dimensions;ILgnu/math/Dimensions;II)V

    return-object v9
.end method


# virtual methods
.method public getPower(Lgnu/math/BaseUnit;)I
    .registers 5
    .param p1, "unit"    # Lgnu/math/BaseUnit;

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v1, v1, v0

    iget v1, v1, Lgnu/math/BaseUnit;->index:I

    iget v2, p1, Lgnu/math/BaseUnit;->index:I

    if-gt v1, v2, :cond_19

    .line 163
    iget-object v1, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_16

    .line 164
    iget-object v1, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v1, v1, v0

    return v1

    .line 161
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .line 30
    iget v0, p0, Lgnu/math/Dimensions;->hash_code:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 171
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 172
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    sget-object v3, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-eq v2, v3, :cond_2e

    .line 174
    if-lez v1, :cond_15

    .line 175
    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    :cond_15
    iget-object v2, p0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v2, p0, Lgnu/math/Dimensions;->powers:[S

    aget-short v2, v2, v1

    .line 178
    .local v2, "pow":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2b

    .line 180
    const/16 v3, 0x5e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    .end local v2    # "pow":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 184
    .end local v1    # "i":I
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

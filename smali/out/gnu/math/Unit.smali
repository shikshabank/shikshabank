.class public abstract Lgnu/math/Unit;
.super Lgnu/math/Quantity;
.source "Unit.java"


# static fields
.field public static Empty:Lgnu/math/BaseUnit;

.field public static NON_COMBINABLE:D

.field public static final cm:Lgnu/math/Unit;

.field public static final date:Lgnu/math/NamedUnit;

.field public static final duration:Lgnu/math/BaseUnit;

.field public static final gram:Lgnu/math/BaseUnit;

.field public static final hour:Lgnu/math/Unit;

.field public static final in:Lgnu/math/Unit;

.field public static final meter:Lgnu/math/BaseUnit;

.field public static final minute:Lgnu/math/Unit;

.field public static final mm:Lgnu/math/Unit;

.field public static final month:Lgnu/math/NamedUnit;

.field public static final pica:Lgnu/math/Unit;

.field public static final pt:Lgnu/math/Unit;

.field public static final radian:Lgnu/math/Unit;

.field public static final second:Lgnu/math/NamedUnit;

.field static table:[Lgnu/math/NamedUnit;


# instance fields
.field base:Lgnu/math/Unit;

.field dims:Lgnu/math/Dimensions;

.field factor:D

.field products:Lgnu/math/MulUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 22
    const/16 v0, 0x64

    new-array v0, v0, [Lgnu/math/NamedUnit;

    sput-object v0, Lgnu/math/Unit;->table:[Lgnu/math/NamedUnit;

    .line 146
    new-instance v0, Lgnu/math/BaseUnit;

    invoke-direct {v0}, Lgnu/math/BaseUnit;-><init>()V

    sput-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    .line 147
    sget-object v0, Lgnu/math/Dimensions;->Empty:Lgnu/math/Dimensions;

    iget-object v0, v0, Lgnu/math/Dimensions;->bases:[Lgnu/math/BaseUnit;

    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 203
    const-wide/16 v0, 0x0

    sput-wide v0, Lgnu/math/Unit;->NON_COMBINABLE:D

    .line 205
    new-instance v0, Lgnu/math/BaseUnit;

    const-string v1, "m"

    const-string v2, "Length"

    invoke-direct {v0, v1, v2}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lgnu/math/Unit;->meter:Lgnu/math/BaseUnit;

    .line 206
    new-instance v1, Lgnu/math/BaseUnit;

    const-string v2, "duration"

    const-string v3, "Time"

    invoke-direct {v1, v2, v3}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    .line 207
    new-instance v2, Lgnu/math/BaseUnit;

    const-string v3, "g"

    const-string v4, "Mass"

    invoke-direct {v2, v3, v4}, Lgnu/math/BaseUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lgnu/math/Unit;->gram:Lgnu/math/BaseUnit;

    .line 208
    const-string v2, "cm"

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->cm:Lgnu/math/Unit;

    .line 209
    const-string v3, "mm"

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v3, v4, v5, v2}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->mm:Lgnu/math/Unit;

    .line 210
    const-string v2, "in"

    const-wide v3, 0x3f9a027525460aa6L    # 0.0254

    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->in:Lgnu/math/Unit;

    .line 211
    const-string v2, "pt"

    const-wide v3, 0x3f371ea11d1f0955L    # 3.527778E-4

    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v2

    sput-object v2, Lgnu/math/Unit;->pt:Lgnu/math/Unit;

    .line 212
    const-string v2, "pica"

    const-wide v3, 0x3f7156f8ac9bf739L    # 0.004233333

    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->pica:Lgnu/math/Unit;

    .line 213
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const-string v2, "rad"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->radian:Lgnu/math/Unit;

    .line 215
    new-instance v0, Lgnu/math/NamedUnit;

    sget-wide v2, Lgnu/math/Unit;->NON_COMBINABLE:D

    const-string v4, "date"

    invoke-direct {v0, v4, v2, v3, v1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v0, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    .line 217
    new-instance v0, Lgnu/math/NamedUnit;

    sget-wide v2, Lgnu/math/Unit;->NON_COMBINABLE:D

    const-string v4, "s"

    invoke-direct {v0, v4, v2, v3, v1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v0, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    .line 219
    new-instance v2, Lgnu/math/NamedUnit;

    sget-wide v3, Lgnu/math/Unit;->NON_COMBINABLE:D

    const-string v5, "month"

    invoke-direct {v2, v5, v3, v4, v1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    sput-object v2, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    .line 221
    const-string v1, "min"

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {v1, v2, v3, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->minute:Lgnu/math/Unit;

    .line 222
    const-string v1, "hour"

    invoke-static {v1, v2, v3, v0}, Lgnu/math/Unit;->define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;

    move-result-object v0

    sput-object v0, Lgnu/math/Unit;->hour:Lgnu/math/Unit;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 109
    invoke-direct {p0}, Lgnu/math/Quantity;-><init>()V

    .line 110
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lgnu/math/Unit;->factor:D

    .line 111
    return-void
.end method

.method public static define(Ljava/lang/String;DLgnu/math/Unit;)Lgnu/math/Unit;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "factor"    # D
    .param p3, "base"    # Lgnu/math/Unit;

    .line 125
    new-instance v0, Lgnu/math/NamedUnit;

    invoke-direct {v0, p0, p1, p2, p3}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;DLgnu/math/Unit;)V

    return-object v0
.end method

.method public static define(Ljava/lang/String;Lgnu/math/DQuantity;)Lgnu/math/Unit;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Lgnu/math/DQuantity;

    .line 120
    new-instance v0, Lgnu/math/NamedUnit;

    invoke-direct {v0, p0, p1}, Lgnu/math/NamedUnit;-><init>(Ljava/lang/String;Lgnu/math/DQuantity;)V

    return-object v0
.end method

.method public static divide(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;
    .registers 4
    .param p0, "unit1"    # Lgnu/math/Unit;
    .param p1, "unit2"    # Lgnu/math/Unit;

    .line 100
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {p0, v0, p1, v1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lgnu/math/NamedUnit;->lookup(Ljava/lang/String;)Lgnu/math/NamedUnit;

    move-result-object v0

    return-object v0
.end method

.method public static make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Lgnu/math/Quantity;

    .line 115
    invoke-static {p0, p1}, Lgnu/math/NamedUnit;->make(Ljava/lang/String;Lgnu/math/Quantity;)Lgnu/math/NamedUnit;

    move-result-object v0

    return-object v0
.end method

.method public static pow(Lgnu/math/Unit;I)Lgnu/math/Unit;
    .registers 4
    .param p0, "unit"    # Lgnu/math/Unit;
    .param p1, "power"    # I

    .line 105
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v0

    return-object v0
.end method

.method static times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;
    .registers 11
    .param p0, "unit1"    # Lgnu/math/Unit;
    .param p1, "power1"    # I
    .param p2, "unit2"    # Lgnu/math/Unit;
    .param p3, "power2"    # I

    .line 35
    if-ne p0, p2, :cond_6

    .line 37
    add-int/2addr p1, p3

    .line 38
    sget-object p2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    .line 39
    const/4 p3, 0x0

    .line 41
    :cond_6
    if-eqz p1, :cond_c

    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v0, :cond_11

    .line 43
    :cond_c
    move-object p0, p2

    .line 44
    move p1, p3

    .line 45
    sget-object p2, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    .line 46
    const/4 p3, 0x0

    .line 48
    :cond_11
    if-eqz p3, :cond_17

    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p2, v0, :cond_20

    .line 50
    :cond_17
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 51
    return-object p0

    .line 52
    :cond_1b
    if-nez p1, :cond_20

    .line 53
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    return-object v0

    .line 55
    :cond_20
    instance-of v0, p0, Lgnu/math/MulUnit;

    if-eqz v0, :cond_a4

    .line 57
    move-object v0, p0

    check-cast v0, Lgnu/math/MulUnit;

    .line 58
    .local v0, "munit1":Lgnu/math/MulUnit;
    iget-object v1, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v1, p2, :cond_3b

    .line 59
    iget v1, v0, Lgnu/math/MulUnit;->power1:I

    mul-int v1, v1, p1

    add-int/2addr v1, p3

    iget-object v2, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v3, v0, Lgnu/math/MulUnit;->power2:I

    mul-int v3, v3, p1

    invoke-static {p2, v1, v2, v3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v1

    return-object v1

    .line 61
    :cond_3b
    iget-object v1, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v1, p2, :cond_4f

    .line 62
    iget-object v1, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v2, v0, Lgnu/math/MulUnit;->power1:I

    mul-int v2, v2, p1

    iget v3, v0, Lgnu/math/MulUnit;->power2:I

    mul-int v3, v3, p1

    add-int/2addr v3, p3

    invoke-static {v1, v2, p2, v3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v1

    return-object v1

    .line 64
    :cond_4f
    instance-of v1, p2, Lgnu/math/MulUnit;

    if-eqz v1, :cond_a4

    .line 66
    move-object v1, p2

    check-cast v1, Lgnu/math/MulUnit;

    .line 67
    .local v1, "munit2":Lgnu/math/MulUnit;
    iget-object v2, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v2, v3, :cond_7d

    iget-object v2, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v2, v3, :cond_7d

    .line 68
    iget-object v2, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v3, v0, Lgnu/math/MulUnit;->power1:I

    mul-int v3, v3, p1

    iget v4, v1, Lgnu/math/MulUnit;->power1:I

    mul-int v4, v4, p3

    add-int/2addr v3, v4

    iget-object v4, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v5, v0, Lgnu/math/MulUnit;->power2:I

    mul-int v5, v5, p1

    iget v6, v1, Lgnu/math/MulUnit;->power2:I

    mul-int v6, v6, p3

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v2

    return-object v2

    .line 72
    :cond_7d
    iget-object v2, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v2, v3, :cond_a4

    iget-object v2, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget-object v3, v1, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v2, v3, :cond_a4

    .line 73
    iget-object v2, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v3, v0, Lgnu/math/MulUnit;->power1:I

    mul-int v3, v3, p1

    iget v4, v1, Lgnu/math/MulUnit;->power2:I

    mul-int v4, v4, p3

    add-int/2addr v3, v4

    iget-object v4, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v5, v0, Lgnu/math/MulUnit;->power2:I

    mul-int v5, v5, p1

    iget v6, v1, Lgnu/math/MulUnit;->power1:I

    mul-int v6, v6, p3

    add-int/2addr v5, v6

    invoke-static {v2, v3, v4, v5}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v2

    return-object v2

    .line 79
    .end local v0    # "munit1":Lgnu/math/MulUnit;
    .end local v1    # "munit2":Lgnu/math/MulUnit;
    :cond_a4
    instance-of v0, p2, Lgnu/math/MulUnit;

    if-eqz v0, :cond_d3

    .line 81
    move-object v0, p2

    check-cast v0, Lgnu/math/MulUnit;

    .line 82
    .local v0, "munit2":Lgnu/math/MulUnit;
    iget-object v1, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v1, p0, :cond_bf

    .line 83
    iget v1, v0, Lgnu/math/MulUnit;->power1:I

    mul-int v1, v1, p3

    add-int/2addr v1, p1

    iget-object v2, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v3, v0, Lgnu/math/MulUnit;->power2:I

    mul-int v3, v3, p3

    invoke-static {p0, v1, v2, v3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v1

    return-object v1

    .line 85
    :cond_bf
    iget-object v1, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v1, p0, :cond_d3

    .line 86
    iget-object v1, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v2, v0, Lgnu/math/MulUnit;->power1:I

    mul-int v2, v2, p3

    iget v3, v0, Lgnu/math/MulUnit;->power2:I

    mul-int v3, v3, p3

    add-int/2addr v3, p1

    :try_start_ce
    invoke-static {v1, v2, p0, v3}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v1
    :try_end_d2
    .catchall {:try_start_ce .. :try_end_d2} :catchall_d8

    return-object v1

    .line 90
    .end local v0    # "munit2":Lgnu/math/MulUnit;
    :cond_d3
    invoke-static {p0, p1, p2, p3}, Lgnu/math/MulUnit;->make(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v0

    return-object v0

    .line 86
    .end local p0    # "unit1":Lgnu/math/Unit;
    .end local p1    # "power1":I
    .end local p2    # "unit2":Lgnu/math/Unit;
    .end local p3    # "power2":I
    :catchall_d8
    move-exception p0

    throw p0
.end method

.method public static times(Lgnu/math/Unit;Lgnu/math/Unit;)Lgnu/math/Unit;
    .registers 3
    .param p0, "unit1"    # Lgnu/math/Unit;
    .param p1, "unit2"    # Lgnu/math/Unit;

    .line 95
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, v0}, Lgnu/math/Unit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final dimensions()Lgnu/math/Dimensions;
    .registers 2

    .line 24
    iget-object v0, p0, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    return-object v0
.end method

.method public final doubleValue()D
    .registers 3

    .line 26
    iget-wide v0, p0, Lgnu/math/Unit;->factor:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 28
    iget-object v0, p0, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    invoke-virtual {v0}, Lgnu/math/Dimensions;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExact()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public final isZero()Z
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public number()Lgnu/math/Complex;
    .registers 2

    .line 128
    invoke-static {}, Lgnu/math/DFloNum;->one()Lgnu/math/DFloNum;

    move-result-object v0

    return-object v0
.end method

.method public power(Lgnu/math/IntNum;)Lgnu/math/Numeric;
    .registers 4
    .param p1, "y"    # Lgnu/math/IntNum;

    .line 134
    iget-object v0, p1, Lgnu/math/IntNum;->words:[I

    if-nez v0, :cond_b

    .line 136
    iget v0, p1, Lgnu/math/IntNum;->ival:I

    invoke-static {p0, v0}, Lgnu/math/Unit;->pow(Lgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v0

    return-object v0

    .line 135
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unit raised to bignum power"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sqrt()Lgnu/math/Unit;
    .registers 3

    .line 141
    sget-object v0, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v0, :cond_5

    .line 142
    return-object p0

    .line 143
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unimplemented Unit.sqrt"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 182
    invoke-virtual {p0}, Lgnu/math/Unit;->getName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 184
    return-object v0

    .line 185
    :cond_7
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v1, :cond_e

    .line 186
    const-string v1, "unit"

    return-object v1

    .line 188
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lgnu/math/Unit;->factor:D

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<unnamed unit>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(D)Ljava/lang/String;
    .registers 6
    .param p1, "val"    # D

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "str":Ljava/lang/String;
    sget-object v1, Lgnu/math/Unit;->Empty:Lgnu/math/BaseUnit;

    if-ne p0, v1, :cond_9

    .line 158
    return-object v0

    .line 160
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/math/Unit;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Lgnu/math/RealNum;)Ljava/lang/String;
    .registers 4
    .param p1, "val"    # Lgnu/math/RealNum;

    .line 165
    invoke-virtual {p1}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lgnu/math/Unit;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unit()Lgnu/math/Unit;
    .registers 1

    .line 193
    return-object p0
.end method

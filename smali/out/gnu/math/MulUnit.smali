.class Lgnu/math/MulUnit;
.super Lgnu/math/Unit;
.source "MulUnit.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field next:Lgnu/math/MulUnit;

.field power1:I

.field power2:I

.field unit1:Lgnu/math/Unit;

.field unit2:Lgnu/math/Unit;


# direct methods
.method constructor <init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V
    .registers 10
    .param p1, "unit1"    # Lgnu/math/Unit;
    .param p2, "power1"    # I
    .param p3, "unit2"    # Lgnu/math/Unit;
    .param p4, "power2"    # I

    .line 20
    invoke-direct {p0}, Lgnu/math/Unit;-><init>()V

    .line 21
    iput-object p1, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    .line 22
    iput-object p3, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    .line 23
    iput p2, p0, Lgnu/math/MulUnit;->power1:I

    .line 24
    iput p4, p0, Lgnu/math/MulUnit;->power2:I

    .line 25
    iget-object v0, p1, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    iget-object v1, p3, Lgnu/math/Unit;->dims:Lgnu/math/Dimensions;

    invoke-static {v0, p2, v1, p4}, Lgnu/math/Dimensions;->product(Lgnu/math/Dimensions;ILgnu/math/Dimensions;I)Lgnu/math/Dimensions;

    move-result-object v0

    iput-object v0, p0, Lgnu/math/MulUnit;->dims:Lgnu/math/Dimensions;

    .line 27
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1d

    .line 28
    iget-wide v0, p1, Lgnu/math/Unit;->factor:D

    iput-wide v0, p0, Lgnu/math/MulUnit;->factor:D

    goto :goto_26

    .line 30
    :cond_1d
    iget-wide v0, p1, Lgnu/math/Unit;->factor:D

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lgnu/math/MulUnit;->factor:D

    .line 31
    :goto_26
    if-gez p4, :cond_36

    .line 33
    neg-int v0, p4

    .local v0, "i":I
    :goto_29
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_35

    .line 34
    iget-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    iget-wide v3, p3, Lgnu/math/Unit;->factor:D

    div-double/2addr v1, v3

    iput-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    goto :goto_29

    .end local v0    # "i":I
    :cond_35
    goto :goto_44

    .line 38
    :cond_36
    move v0, p4

    .restart local v0    # "i":I
    :goto_37
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_44

    .line 39
    iget-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    iget-wide v3, p3, Lgnu/math/Unit;->factor:D

    mul-double v1, v1, v3

    iput-wide v1, p0, Lgnu/math/MulUnit;->factor:D

    goto :goto_37

    .line 42
    .end local v0    # "i":I
    :cond_44
    :goto_44
    iget-object v0, p1, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    iput-object v0, p0, Lgnu/math/MulUnit;->next:Lgnu/math/MulUnit;

    .line 43
    iput-object p0, p1, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    .line 44
    return-void
.end method

.method constructor <init>(Lgnu/math/Unit;Lgnu/math/Unit;I)V
    .registers 5
    .param p1, "unit1"    # Lgnu/math/Unit;
    .param p2, "unit2"    # Lgnu/math/Unit;
    .param p3, "power2"    # I

    .line 48
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lgnu/math/MulUnit;-><init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V

    .line 49
    return-void
.end method

.method static lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;
    .registers 6
    .param p0, "unit1"    # Lgnu/math/Unit;
    .param p1, "power1"    # I
    .param p2, "unit2"    # Lgnu/math/Unit;
    .param p3, "power2"    # I

    .line 83
    iget-object v0, p0, Lgnu/math/Unit;->products:Lgnu/math/MulUnit;

    .local v0, "u":Lgnu/math/MulUnit;
    :goto_2
    if-eqz v0, :cond_18

    .line 85
    iget-object v1, v0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    if-ne v1, p0, :cond_15

    iget-object v1, v0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    if-ne v1, p2, :cond_15

    iget v1, v0, Lgnu/math/MulUnit;->power1:I

    if-ne v1, p1, :cond_15

    iget v1, v0, Lgnu/math/MulUnit;->power2:I

    if-ne v1, p3, :cond_15

    .line 87
    return-object v0

    .line 83
    :cond_15
    iget-object v0, v0, Lgnu/math/MulUnit;->next:Lgnu/math/MulUnit;

    goto :goto_2

    .line 89
    .end local v0    # "u":Lgnu/math/MulUnit;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public static make(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;
    .registers 6
    .param p0, "unit1"    # Lgnu/math/Unit;
    .param p1, "power1"    # I
    .param p2, "unit2"    # Lgnu/math/Unit;
    .param p3, "power2"    # I

    .line 94
    invoke-static {p0, p1, p2, p3}, Lgnu/math/MulUnit;->lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v0

    .line 95
    .local v0, "u":Lgnu/math/MulUnit;
    if-eqz v0, :cond_7

    .line 96
    return-object v0

    .line 97
    :cond_7
    new-instance v1, Lgnu/math/MulUnit;

    invoke-direct {v1, p0, p1, p2, p3}, Lgnu/math/MulUnit;-><init>(Lgnu/math/Unit;ILgnu/math/Unit;I)V

    return-object v1
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 115
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    .line 116
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/MulUnit;->power1:I

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/math/Unit;

    iput-object v0, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    .line 118
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lgnu/math/MulUnit;->power2:I

    .line 119
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    iget v1, p0, Lgnu/math/MulUnit;->power1:I

    iget-object v2, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    iget v3, p0, Lgnu/math/MulUnit;->power2:I

    invoke-static {v0, v1, v2, v3}, Lgnu/math/MulUnit;->lookup(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/MulUnit;

    move-result-object v0

    .line 124
    .local v0, "u":Lgnu/math/MulUnit;
    if-eqz v0, :cond_f

    .line 125
    return-object v0

    .line 126
    :cond_f
    return-object p0
.end method

.method public sqrt()Lgnu/math/Unit;
    .registers 5

    .line 75
    iget v0, p0, Lgnu/math/MulUnit;->power1:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_19

    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_19

    .line 76
    iget-object v2, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    shr-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    shr-int/lit8 v1, v1, 0x1

    invoke-static {v2, v0, v3, v1}, Lgnu/math/MulUnit;->times(Lgnu/math/Unit;ILgnu/math/Unit;I)Lgnu/math/Unit;

    move-result-object v0

    return-object v0

    .line 77
    :cond_19
    invoke-super {p0}, Lgnu/math/Unit;->sqrt()Lgnu/math/Unit;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 54
    .local v0, "str":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 55
    iget v1, p0, Lgnu/math/MulUnit;->power1:I

    const/16 v2, 0x5e

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1b

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 58
    iget v1, p0, Lgnu/math/MulUnit;->power1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 60
    :cond_1b
    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    if-eqz v1, :cond_35

    .line 62
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    iget-object v1, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    if-eq v1, v3, :cond_35

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 67
    iget v1, p0, Lgnu/math/MulUnit;->power2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 70
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lgnu/math/MulUnit;->unit1:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 107
    iget v0, p0, Lgnu/math/MulUnit;->power1:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lgnu/math/MulUnit;->unit2:Lgnu/math/Unit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 109
    iget v0, p0, Lgnu/math/MulUnit;->power2:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 110
    return-void
.end method

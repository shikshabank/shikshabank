.class public Lgnu/expr/KawaConvert;
.super Lgnu/lists/Convert;
.source "KawaConvert.java"


# static fields
.field public static instance:Lgnu/lists/Convert;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lgnu/expr/KawaConvert;

    invoke-direct {v0}, Lgnu/expr/KawaConvert;-><init>()V

    sput-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/lists/Convert;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/lists/Convert;
    .registers 1

    .line 13
    sget-object v0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-object v0
.end method

.method public static setInstance(Lgnu/lists/Convert;)V
    .registers 1
    .param p0, "value"    # Lgnu/lists/Convert;

    .line 15
    sput-object p0, Lgnu/expr/KawaConvert;->instance:Lgnu/lists/Convert;

    return-void
.end method


# virtual methods
.method public byteToObject(B)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # B

    .line 29
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public byteToObjectUnsigned(B)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # B

    .line 49
    and-int/lit16 v0, p1, 0xff

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public charToObject(C)Ljava/lang/Object;
    .registers 3
    .param p1, "ch"    # C

    .line 19
    invoke-static {p1}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    return-object v0
.end method

.method public doubleToObject(D)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # D

    .line 74
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    return-object v0
.end method

.method public floatToObject(F)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # F

    .line 69
    float-to-double v0, p1

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    return-object v0
.end method

.method public intToObject(I)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # I

    .line 39
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public intToObjectUnsigned(I)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # I

    .line 59
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public longToObject(J)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # J

    .line 44
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public longToObjectUnsigned(J)Ljava/lang/Object;
    .registers 4
    .param p1, "value"    # J

    .line 64
    invoke-static {p1, p2}, Lgnu/math/IntNum;->makeU(J)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public objectToChar(Ljava/lang/Object;)C
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 24
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->charValue()C

    move-result v0

    return v0
.end method

.method public shortToObject(S)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # S

    .line 34
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public shortToObjectUnsigned(S)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # S

    .line 54
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

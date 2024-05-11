.class public Lgnu/xquery/util/BooleanValue;
.super Lgnu/mapping/Procedure1;
.source "BooleanValue.java"


# static fields
.field public static final booleanValue:Lgnu/xquery/util/BooleanValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lgnu/xquery/util/BooleanValue;

    const-string v1, "boolean-value"

    invoke-direct {v0, v1}, Lgnu/xquery/util/BooleanValue;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xquery/util/BooleanValue;->booleanValue:Lgnu/xquery/util/BooleanValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.xquery.util.CompileMisc:validateBooleanValue"

    invoke-virtual {p0, v0, v1}, Lgnu/xquery/util/BooleanValue;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public static booleanValue(Ljava/lang/Object;)Z
    .registers 8
    .param p0, "value"    # Ljava/lang/Object;

    .line 26
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 27
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 28
    :cond_c
    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    instance-of v0, p0, Lgnu/math/RealNum;

    if-nez v0, :cond_1a

    instance-of v0, p0, Lgnu/math/Numeric;

    if-nez v0, :cond_2f

    .line 31
    :cond_1a
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 32
    .local v3, "d":D
    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_2e

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1

    .line 34
    .end local v3    # "d":D
    :cond_2f
    instance-of v0, p0, Lgnu/lists/SeqPosition;

    if-eqz v0, :cond_34

    .line 35
    return v2

    .line 36
    :cond_34
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_6b

    instance-of v0, p0, Lgnu/text/Path;

    if-nez v0, :cond_6b

    instance-of v0, p0, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v0, :cond_41

    goto :goto_6b

    .line 40
    :cond_41
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_61

    .line 42
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    .line 43
    .local v0, "values":Lgnu/mapping/Values;
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->getPosNext(I)Ljava/lang/Object;

    move-result-object v3

    .line 44
    .local v3, "value1":Ljava/lang/Object;
    sget-object v4, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    if-ne v3, v4, :cond_51

    .line 45
    return v1

    .line 46
    :cond_51
    invoke-virtual {v0, v1}, Lgnu/mapping/Values;->nextDataIndex(I)I

    move-result v1

    .line 47
    .local v1, "next":I
    if-gez v1, :cond_5c

    .line 48
    invoke-static {v3}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 49
    :cond_5c
    instance-of v4, v3, Lgnu/lists/SeqPosition;

    if-eqz v4, :cond_61

    .line 50
    return v2

    .line 52
    .end local v0    # "values":Lgnu/mapping/Values;
    .end local v1    # "next":I
    .end local v3    # "value1":Ljava/lang/Object;
    :cond_61
    new-instance v0, Lgnu/mapping/WrongType;

    const-string v1, "fn:boolean"

    const-string v3, "boolean-convertible-value"

    invoke-direct {v0, v1, v2, p0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_6b
    :goto_6b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_76

    const/4 v1, 0x1

    :cond_76
    return v1
.end method

.method public static not(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 57
    invoke-static {p0}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 62
    invoke-static {p1}, Lgnu/xquery/util/BooleanValue;->booleanValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_b
    return-object v0
.end method

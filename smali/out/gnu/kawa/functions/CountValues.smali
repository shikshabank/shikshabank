.class public Lgnu/kawa/functions/CountValues;
.super Lgnu/mapping/Procedure1;
.source "CountValues.java"


# static fields
.field public static final countValues:Lgnu/kawa/functions/CountValues;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lgnu/kawa/functions/CountValues;

    invoke-direct {v0}, Lgnu/kawa/functions/CountValues;-><init>()V

    sput-object v0, Lgnu/kawa/functions/CountValues;->countValues:Lgnu/kawa/functions/CountValues;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    return-void
.end method

.method public static countValues(Ljava/lang/Object;)I
    .registers 2
    .param p0, "arg"    # Ljava/lang/Object;

    .line 16
    instance-of v0, p0, Lgnu/mapping/Values;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lgnu/mapping/Values;

    invoke-virtual {v0}, Lgnu/mapping/Values;->size()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 5
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 26
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 27
    .local v0, "consumer":Lgnu/lists/Consumer;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getNextArg()Ljava/lang/Object;

    move-result-object v1

    .line 28
    .local v1, "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->lastArg()V

    .line 29
    invoke-static {v1}, Lgnu/kawa/functions/CountValues;->countValues(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v2}, Lgnu/lists/Consumer;->writeInt(I)V

    .line 30
    return-void
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg"    # Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Lgnu/kawa/functions/CountValues;->countValues(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

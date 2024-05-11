.class public Lgnu/kawa/xml/NodeCompare;
.super Lgnu/mapping/Procedure2;
.source "NodeCompare.java"


# static fields
.field public static final $Eq:Lgnu/kawa/xml/NodeCompare;

.field public static final $Gr:Lgnu/kawa/xml/NodeCompare;

.field public static final $Ls:Lgnu/kawa/xml/NodeCompare;

.field public static final $Ne:Lgnu/kawa/xml/NodeCompare;

.field static final RESULT_EQU:I = 0x0

.field static final RESULT_GRT:I = 0x1

.field static final RESULT_LSS:I = -0x1

.field static final TRUE_IF_EQU:I = 0x8

.field static final TRUE_IF_GRT:I = 0x10

.field static final TRUE_IF_LSS:I = 0x4


# instance fields
.field flags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    const-string v0, "is"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    .line 27
    const-string v0, "isnot"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    .line 28
    const-string v0, ">>"

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Gr:Lgnu/kawa/xml/NodeCompare;

    .line 29
    const-string v0, "<<"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lgnu/kawa/xml/NodeCompare;->make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/NodeCompare;->$Ls:Lgnu/kawa/xml/NodeCompare;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    return-void
.end method

.method public static make(Ljava/lang/String;I)Lgnu/kawa/xml/NodeCompare;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "flags"    # I

    .line 33
    new-instance v0, Lgnu/kawa/xml/NodeCompare;

    invoke-direct {v0}, Lgnu/kawa/xml/NodeCompare;-><init>()V

    .line 34
    .local v0, "proc":Lgnu/kawa/xml/NodeCompare;
    invoke-virtual {v0, p0}, Lgnu/kawa/xml/NodeCompare;->setName(Ljava/lang/String;)V

    .line 35
    iput p1, v0, Lgnu/kawa/xml/NodeCompare;->flags:I

    .line 36
    return-object v0
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    .line 41
    if-eqz p1, :cond_6f

    if-nez p2, :cond_5

    goto :goto_6f

    .line 43
    :cond_5
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p1, v0, :cond_a

    .line 44
    return-object p1

    .line 45
    :cond_a
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne p2, v0, :cond_f

    .line 46
    return-object p2

    .line 50
    :cond_f
    instance-of v0, p1, Lgnu/lists/AbstractSequence;

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 52
    check-cast p1, Lgnu/lists/AbstractSequence;

    .line 53
    invoke-virtual {p1}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v0

    goto :goto_25

    .line 59
    :cond_1b
    :try_start_1b
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 60
    iget-object v2, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 61
    invoke-virtual {v0}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v0
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_24} :catch_69

    .line 66
    move-object p1, v2

    .line 68
    :goto_25
    instance-of v2, p2, Lgnu/lists/AbstractSequence;

    if-eqz v2, :cond_30

    .line 70
    check-cast p2, Lgnu/lists/AbstractSequence;

    .line 71
    invoke-virtual {p2}, Lgnu/lists/AbstractSequence;->startPos()I

    move-result v2

    goto :goto_3a

    .line 77
    :cond_30
    :try_start_30
    move-object v2, p2

    check-cast v2, Lgnu/lists/SeqPosition;

    .line 78
    iget-object v3, v2, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    .line 79
    invoke-virtual {v2}, Lgnu/lists/SeqPosition;->getPos()I

    move-result v2
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_39} :catch_62

    .line 84
    move-object p2, v3

    .line 88
    :goto_3a
    if-ne p1, p2, :cond_41

    .line 89
    invoke-virtual {p1, v0, v2}, Lgnu/lists/AbstractSequence;->compare(II)I

    move-result p1

    goto :goto_53

    .line 90
    :cond_41
    sget-object v0, Lgnu/kawa/xml/NodeCompare;->$Eq:Lgnu/kawa/xml/NodeCompare;

    if-ne p0, v0, :cond_48

    .line 91
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 92
    :cond_48
    sget-object v0, Lgnu/kawa/xml/NodeCompare;->$Ne:Lgnu/kawa/xml/NodeCompare;

    if-ne p0, v0, :cond_4f

    .line 93
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 95
    :cond_4f
    invoke-virtual {p1, p2}, Lgnu/lists/AbstractSequence;->stableCompare(Lgnu/lists/AbstractSequence;)I

    move-result p1

    .line 96
    :goto_53
    add-int/lit8 p1, p1, 0x3

    shl-int p1, v1, p1

    iget p2, p0, Lgnu/kawa/xml/NodeCompare;->flags:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_5f

    .line 97
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 99
    :cond_5f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 81
    :catch_62
    move-exception p1

    .line 83
    const/4 v0, 0x2

    invoke-static {p1, p0, v0, p2}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object p1

    throw p1

    .line 63
    :catch_69
    move-exception p2

    .line 65
    invoke-static {p2, p0, v1, p1}, Lgnu/mapping/WrongType;->make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;

    move-result-object p1

    throw p1

    .line 42
    :cond_6f
    :goto_6f
    const/4 p1, 0x0

    return-object p1
.end method
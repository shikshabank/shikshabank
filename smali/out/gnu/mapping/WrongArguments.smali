.class public Lgnu/mapping/WrongArguments;
.super Ljava/lang/IllegalArgumentException;
.source "WrongArguments.java"


# instance fields
.field public number:I

.field proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;

.field public usage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgnu/mapping/Procedure;I)V
    .registers 3
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "argCount"    # I

    .line 83
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 84
    iput-object p1, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    .line 85
    iput p2, p0, Lgnu/mapping/WrongArguments;->number:I

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "u"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 89
    iput-object p1, p0, Lgnu/mapping/WrongArguments;->procname:Ljava/lang/String;

    .line 90
    iput p2, p0, Lgnu/mapping/WrongArguments;->number:I

    .line 91
    iput-object p3, p0, Lgnu/mapping/WrongArguments;->usage:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;
    .registers 7
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "argCount"    # I

    .line 21
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->numArgs()I

    move-result v0

    .line 22
    .local v0, "num":I
    and-int/lit16 v1, v0, 0xfff

    .line 23
    .local v1, "min":I
    shr-int/lit8 v2, v0, 0xc

    .line 24
    .local v2, "max":I
    invoke-virtual {p0}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "pname":Ljava/lang/String;
    if-nez v3, :cond_16

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 27
    :cond_16
    invoke-static {v3, v1, v2, p1}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static checkArgCount(Ljava/lang/String;III)Ljava/lang/String;
    .registers 7
    .param p0, "pname"    # Ljava/lang/String;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "argCount"    # I

    .line 33
    if-ge p3, p1, :cond_4

    .line 34
    const/4 v0, 0x0

    .local v0, "tooMany":Z
    goto :goto_9

    .line 35
    .end local v0    # "tooMany":Z
    :cond_4
    if-ltz p2, :cond_61

    if-le p3, p2, :cond_61

    .line 36
    const/4 v0, 0x1

    .line 39
    .restart local v0    # "tooMany":Z
    :goto_9
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 40
    .local v1, "buf":Ljava/lang/StringBuffer;
    const-string v2, "call to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    if-nez p0, :cond_1d

    .line 42
    const-string v2, "unnamed procedure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 45
    :cond_1d
    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 49
    :goto_28
    if-eqz v0, :cond_2d

    const-string v2, " has too many"

    goto :goto_2f

    :cond_2d
    const-string v2, " has too few"

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v2, " arguments ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    if-ne p1, p2, :cond_45

    .line 54
    const-string v2, "; must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_57

    .line 59
    :cond_45
    const-string v2, "; min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    if-ltz p2, :cond_57

    .line 63
    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    :cond_57
    :goto_57
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 38
    .end local v0    # "tooMany":Z
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    .line 73
    iget-object v0, p0, Lgnu/mapping/WrongArguments;->proc:Lgnu/mapping/Procedure;

    if-eqz v0, :cond_d

    .line 75
    iget v1, p0, Lgnu/mapping/WrongArguments;->number:I

    invoke-static {v0, v1}, Lgnu/mapping/WrongArguments;->checkArgCount(Lgnu/mapping/Procedure;I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 77
    return-object v0

    .line 79
    .end local v0    # "msg":Ljava/lang/String;
    :cond_d
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

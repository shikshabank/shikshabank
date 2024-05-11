.class public Lgnu/mapping/WrongType;
.super Lgnu/mapping/WrappedException;
.source "WrongType.java"


# static fields
.field public static final ARG_CAST:I = -0x4

.field public static final ARG_DESCRIPTION:I = -0x3

.field public static final ARG_UNKNOWN:I = -0x1

.field public static final ARG_VARNAME:I = -0x2


# instance fields
.field public argValue:Ljava/lang/Object;

.field public expectedType:Ljava/lang/Object;

.field public number:I

.field public proc:Lgnu/mapping/Procedure;

.field public procname:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "n"    # I
    .param p2, "argValue"    # Ljava/lang/Object;
    .param p3, "expectedType"    # Lgnu/bytecode/Type;

    .line 85
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 86
    iput p1, p0, Lgnu/mapping/WrongType;->number:I

    .line 87
    iput-object p2, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 88
    iput-object p3, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 89
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V
    .registers 5
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "n"    # I
    .param p3, "ex"    # Ljava/lang/ClassCastException;

    .line 54
    invoke-direct {p0, p3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 55
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 56
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 57
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .registers 5
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "n"    # I
    .param p3, "argValue"    # Ljava/lang/Object;

    .line 68
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 69
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 70
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 71
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 72
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Lgnu/bytecode/Type;)V
    .registers 6
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "n"    # I
    .param p3, "argValue"    # Ljava/lang/Object;
    .param p4, "expectedType"    # Lgnu/bytecode/Type;

    .line 76
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 77
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 78
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 79
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 80
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 81
    iput-object p4, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 6
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "n"    # I
    .param p3, "argValue"    # Ljava/lang/Object;
    .param p4, "expectedType"    # Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/ClassCastException;
    .param p2, "proc"    # Lgnu/mapping/Procedure;
    .param p3, "n"    # I
    .param p4, "argValue"    # Ljava/lang/Object;

    .line 63
    invoke-direct {p0, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 64
    iput-object p4, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5
    .param p1, "ex"    # Ljava/lang/ClassCastException;
    .param p2, "procname"    # Ljava/lang/String;
    .param p3, "n"    # I
    .param p4, "argValue"    # Ljava/lang/Object;

    .line 115
    invoke-direct {p0, p2, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 116
    iput-object p4, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V
    .registers 4
    .param p1, "procname"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "ex"    # Ljava/lang/ClassCastException;

    .line 107
    invoke-direct {p0, p3}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/Throwable;)V

    .line 108
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 109
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p1, "procName"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "argValue"    # Ljava/lang/Object;
    .param p4, "expectedType"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lgnu/mapping/WrappedException;-><init>()V

    .line 99
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 100
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 101
    iput-object p3, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 102
    iput-object p4, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "u"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    iput-object p1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    .line 48
    iput p2, p0, Lgnu/mapping/WrongType;->number:I

    .line 49
    iput-object p3, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;I)Lgnu/mapping/WrongType;
    .registers 4
    .param p0, "ex"    # Ljava/lang/ClassCastException;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "n"    # I

    .line 122
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Lgnu/mapping/Procedure;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .registers 5
    .param p0, "ex"    # Ljava/lang/ClassCastException;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "n"    # I
    .param p3, "argValue"    # Ljava/lang/Object;

    .line 135
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    .line 136
    .local v0, "wex":Lgnu/mapping/WrongType;
    iput-object p3, v0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 137
    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;I)Lgnu/mapping/WrongType;
    .registers 4
    .param p0, "ex"    # Ljava/lang/ClassCastException;
    .param p1, "procname"    # Ljava/lang/String;
    .param p2, "n"    # I

    .line 128
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    return-object v0
.end method

.method public static make(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)Lgnu/mapping/WrongType;
    .registers 5
    .param p0, "ex"    # Ljava/lang/ClassCastException;
    .param p1, "procname"    # Ljava/lang/String;
    .param p2, "n"    # I
    .param p3, "argValue"    # Ljava/lang/Object;

    .line 144
    new-instance v0, Lgnu/mapping/WrongType;

    invoke-direct {v0, p1, p2, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/ClassCastException;)V

    .line 145
    .local v0, "wex":Lgnu/mapping/WrongType;
    iput-object p3, v0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    .line 146
    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 9

    .line 151
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 152
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    const/4 v2, -0x2

    const/4 v3, -0x3

    if-ne v1, v3, :cond_13

    .line 154
    iget-object v1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 156
    :cond_13
    const/4 v4, -0x4

    if-eq v1, v4, :cond_2d

    if-ne v1, v2, :cond_19

    goto :goto_2d

    .line 162
    :cond_19
    const-string v1, "Argument "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    if-lez v1, :cond_32

    .line 165
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_32

    .line 158
    :cond_2d
    :goto_2d
    const-string v1, "Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_32
    :goto_32
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    const-string v4, ")"

    const-string v5, " ("

    if-eqz v1, :cond_61

    .line 171
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "argString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_5b

    .line 175
    const/4 v6, 0x0

    const/16 v7, 0x2f

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v6, "..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5e

    .line 179
    :cond_5b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :goto_5e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    .end local v1    # "argString":Ljava/lang/String;
    :cond_61
    iget-object v1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    if-eqz v1, :cond_7d

    iget v1, p0, Lgnu/mapping/WrongType;->number:I

    if-eq v1, v3, :cond_7d

    .line 184
    if-ne v1, v2, :cond_6e

    const-string v1, " for variable \'"

    goto :goto_70

    :cond_6e
    const-string v1, " to \'"

    :goto_70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    iget-object v1, p0, Lgnu/mapping/WrongType;->procname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_7d
    const-string v1, " has wrong type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    if-eqz v1, :cond_99

    .line 191
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v1, p0, Lgnu/mapping/WrongType;->argValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_99
    iget-object v1, p0, Lgnu/mapping/WrongType;->expectedType:Ljava/lang/Object;

    .line 196
    .local v1, "expectType":Ljava/lang/Object;
    if-nez v1, :cond_af

    iget v2, p0, Lgnu/mapping/WrongType;->number:I

    if-lez v2, :cond_af

    iget-object v3, p0, Lgnu/mapping/WrongType;->proc:Lgnu/mapping/Procedure;

    instance-of v6, v3, Lgnu/mapping/MethodProc;

    if-eqz v6, :cond_af

    .line 197
    check-cast v3, Lgnu/mapping/MethodProc;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Lgnu/mapping/MethodProc;->getParameterType(I)Lgnu/bytecode/Type;

    move-result-object v1

    .line 198
    :cond_af
    if-eqz v1, :cond_d7

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_d7

    .line 200
    const-string v2, " (expected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    instance-of v2, v1, Lgnu/bytecode/Type;

    if-eqz v2, :cond_c6

    .line 202
    move-object v2, v1

    check-cast v2, Lgnu/bytecode/Type;

    invoke-virtual {v2}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_d1

    .line 203
    :cond_c6
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_d1

    .line 204
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 205
    :cond_d1
    :goto_d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_d7
    invoke-virtual {p0}, Lgnu/mapping/WrongType;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 209
    .local v2, "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_ee

    .line 211
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_ee

    .line 214
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    .end local v3    # "msg":Ljava/lang/String;
    :cond_ee
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

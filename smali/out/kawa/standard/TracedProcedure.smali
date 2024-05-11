.class public Lkawa/standard/TracedProcedure;
.super Lgnu/mapping/ProcedureN;
.source "TracedProcedure.java"


# static fields
.field static curIndentSym:Lgnu/mapping/Symbol;

.field static indentationStep:I


# instance fields
.field enabled:Z

.field public proc:Lgnu/mapping/Procedure;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const/4 v0, 0x2

    sput v0, Lkawa/standard/TracedProcedure;->indentationStep:I

    .line 15
    const-string v0, "current-indentation"

    invoke-static {v0}, Lgnu/mapping/Symbol;->makeUninterned(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;Z)V
    .registers 4
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "enable"    # Z

    .line 18
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 19
    iput-object p1, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    .line 20
    iput-boolean p2, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 21
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 23
    invoke-virtual {p0, v0}, Lkawa/standard/TracedProcedure;->setName(Ljava/lang/String;)V

    .line 24
    :cond_10
    return-void
.end method

.method public static doTrace(Lgnu/mapping/Procedure;Z)Lgnu/mapping/Procedure;
    .registers 3
    .param p0, "proc"    # Lgnu/mapping/Procedure;
    .param p1, "enable"    # Z

    .line 114
    instance-of v0, p0, Lkawa/standard/TracedProcedure;

    if-eqz v0, :cond_a

    .line 116
    move-object v0, p0

    check-cast v0, Lkawa/standard/TracedProcedure;

    iput-boolean p1, v0, Lkawa/standard/TracedProcedure;->enabled:Z

    .line 117
    return-object p0

    .line 120
    :cond_a
    new-instance v0, Lkawa/standard/TracedProcedure;

    invoke-direct {v0, p0, p1}, Lkawa/standard/TracedProcedure;-><init>(Lgnu/mapping/Procedure;Z)V

    return-object v0
.end method

.method static indent(ILjava/io/PrintWriter;)V
    .registers 3
    .param p0, "i"    # I
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 43
    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_a

    .line 44
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 45
    :cond_a
    return-void
.end method

.method static put(Ljava/lang/Object;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "out"    # Ljava/io/PrintWriter;

    .line 30
    const/16 v0, 0x32

    const/4 v1, 0x1

    :try_start_3
    invoke-static {p0, p1, v0, v1}, Lgnu/kawa/functions/ObjectFormat;->format(Ljava/lang/Object;Ljava/io/Writer;IZ)Z

    move-result v0

    if-nez v0, :cond_e

    .line 31
    const-string v0, "..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_f

    .line 38
    :cond_e
    goto :goto_1d

    .line 33
    :catch_f
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "<caught "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 37
    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 39
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1d
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 49
    iget-boolean v0, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v0, :cond_b4

    .line 51
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    .line 52
    .local v0, "env":Lgnu/mapping/Environment;
    sget-object v1, Lkawa/standard/TracedProcedure;->curIndentSym:Lgnu/mapping/Symbol;

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getLocation(Lgnu/mapping/Symbol;)Lgnu/mapping/Location;

    move-result-object v1

    .line 53
    .local v1, "curIndentLoc":Lgnu/mapping/Location;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "oldIndent":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/math/IntNum;

    if-nez v4, :cond_20

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "curIndent":I
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v5

    invoke-virtual {v1, v5}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    goto :goto_27

    .line 61
    .end local v4    # "curIndent":I
    :cond_20
    move-object v4, v3

    check-cast v4, Lgnu/math/IntNum;

    invoke-virtual {v4}, Lgnu/math/IntNum;->intValue()I

    move-result v4

    .line 62
    .restart local v4    # "curIndent":I
    :goto_27
    invoke-static {}, Lgnu/mapping/OutPort;->errDefault()Lgnu/mapping/OutPort;

    move-result-object v5

    .line 63
    .local v5, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v6

    .line 64
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_33

    .line 65
    const-string v6, "??"

    .line 68
    :cond_33
    invoke-static {v4, v5}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 69
    const-string v7, "call to "

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    array-length v7, p1

    .line 72
    .local v7, "len":I
    const-string v8, " ("

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_45
    if-ge v8, v7, :cond_56

    .line 75
    if-lez v8, :cond_4e

    .line 76
    const/16 v9, 0x20

    invoke-virtual {v5, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 77
    :cond_4e
    aget-object v9, p1, v8

    invoke-static {v9, v5}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 73
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    .line 79
    .end local v8    # "i":I
    :cond_56
    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    sget v8, Lkawa/standard/TracedProcedure;->indentationStep:I

    add-int/2addr v8, v4

    invoke-static {v8}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v8

    .line 84
    .local v8, "newIndentation":Lgnu/math/IntNum;
    invoke-virtual {v1, v8}, Lgnu/mapping/Location;->setWithSave(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 87
    .local v9, "save":Ljava/lang/Object;
    :try_start_66
    iget-object v10, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v10, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_6c} :catch_89
    .catchall {:try_start_66 .. :try_end_6c} :catchall_87

    .line 97
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {v1, v9}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    .line 98
    nop

    .line 101
    invoke-static {v4, v5}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 102
    const-string v10, "return from "

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    const-string v10, " => "

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-static {v2, v5}, Lkawa/standard/TracedProcedure;->put(Ljava/lang/Object;Ljava/io/PrintWriter;)V

    .line 106
    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 107
    return-object v2

    .line 97
    .end local v2    # "result":Ljava/lang/Object;
    :catchall_87
    move-exception v10

    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_b0

    .line 89
    .end local v2    # "result":Ljava/lang/Object;
    :catch_89
    move-exception v10

    .line 91
    .restart local v2    # "result":Ljava/lang/Object;
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_8a
    invoke-static {v4, v5}, Lkawa/standard/TracedProcedure;->indent(ILjava/io/PrintWriter;)V

    .line 92
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "procedure "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " throws exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    nop

    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "curIndentLoc":Lgnu/mapping/Location;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "oldIndent":Ljava/lang/Object;
    .end local v4    # "curIndent":I
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "newIndentation":Lgnu/math/IntNum;
    .end local v9    # "save":Ljava/lang/Object;
    .end local p1    # "args":[Ljava/lang/Object;
    throw v10
    :try_end_af
    .catchall {:try_start_8a .. :try_end_af} :catchall_af

    .line 97
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "env":Lgnu/mapping/Environment;
    .restart local v1    # "curIndentLoc":Lgnu/mapping/Location;
    .restart local v2    # "result":Ljava/lang/Object;
    .restart local v3    # "oldIndent":Ljava/lang/Object;
    .restart local v4    # "curIndent":I
    .restart local v5    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "len":I
    .restart local v8    # "newIndentation":Lgnu/math/IntNum;
    .restart local v9    # "save":Ljava/lang/Object;
    .restart local p1    # "args":[Ljava/lang/Object;
    :catchall_af
    move-exception v10

    :goto_b0
    invoke-virtual {v1, v9}, Lgnu/mapping/Location;->setRestore(Ljava/lang/Object;)V

    throw v10

    .line 109
    .end local v0    # "env":Lgnu/mapping/Environment;
    .end local v1    # "curIndentLoc":Lgnu/mapping/Location;
    .end local v2    # "result":Ljava/lang/Object;
    .end local v3    # "oldIndent":Ljava/lang/Object;
    .end local v4    # "curIndent":I
    .end local v5    # "out":Ljava/io/PrintWriter;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "newIndentation":Lgnu/math/IntNum;
    .end local v9    # "save":Ljava/lang/Object;
    :cond_b4
    iget-object v0, p0, Lkawa/standard/TracedProcedure;->proc:Lgnu/mapping/Procedure;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "ps"    # Ljava/io/PrintWriter;

    .line 125
    const-string v0, "#<procedure "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lkawa/standard/TracedProcedure;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "n":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 128
    const-string v1, "<unnamed>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_14

    .line 130
    :cond_11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    :goto_14
    iget-boolean v1, p0, Lkawa/standard/TracedProcedure;->enabled:Z

    if-eqz v1, :cond_1b

    const-string v1, ", traced>"

    goto :goto_1d

    :cond_1b
    const-string v1, ">"

    :goto_1d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    return-void
.end method

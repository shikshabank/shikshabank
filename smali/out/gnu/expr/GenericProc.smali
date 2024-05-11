.class public Lgnu/expr/GenericProc;
.super Lgnu/mapping/MethodProc;
.source "GenericProc.java"


# instance fields
.field count:I

.field maxArgs:I

.field protected methods:[Lgnu/mapping/MethodProc;

.field minArgs:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static make([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .registers 2
    .param p0, "args"    # [Ljava/lang/Object;

    .line 300
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 301
    .local v0, "result":Lgnu/expr/GenericProc;
    invoke-virtual {v0, p0}, Lgnu/expr/GenericProc;->setProperties([Ljava/lang/Object;)V

    .line 302
    return-object v0
.end method

.method public static varargs makeWithoutSorting([Ljava/lang/Object;)Lgnu/expr/GenericProc;
    .registers 7
    .param p0, "args"    # [Ljava/lang/Object;

    .line 307
    new-instance v0, Lgnu/expr/GenericProc;

    invoke-direct {v0}, Lgnu/expr/GenericProc;-><init>()V

    .line 309
    .local v0, "result":Lgnu/expr/GenericProc;
    array-length v1, p0

    .line 310
    .local v1, "alen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_23

    .line 312
    aget-object v3, p0, v2

    .line 313
    .local v3, "arg":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Keyword;

    if-eqz v4, :cond_1a

    .line 314
    move-object v4, v3

    check-cast v4, Lgnu/expr/Keyword;

    add-int/lit8 v2, v2, 0x1

    aget-object v5, p0, v2

    invoke-virtual {v0, v4, v5}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    goto :goto_20

    .line 316
    :cond_1a
    move-object v4, v3

    check-cast v4, Lgnu/mapping/MethodProc;

    invoke-virtual {v0, v4}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    .line 310
    .end local v3    # "arg":Ljava/lang/Object;
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 319
    .end local v2    # "i":I
    :cond_23
    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lgnu/mapping/MethodProc;)V
    .registers 8
    .param p1, "method"    # Lgnu/mapping/MethodProc;

    monitor-enter p0

    .line 75
    :try_start_1
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    .line 76
    .local v0, "oldCount":I
    invoke-virtual {p0, p1}, Lgnu/expr/GenericProc;->addAtEnd(Lgnu/mapping/MethodProc;)V

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_24

    .line 80
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lgnu/mapping/MethodProc;->mostSpecific(Lgnu/mapping/MethodProc;Lgnu/mapping/MethodProc;)Lgnu/mapping/MethodProc;

    move-result-object v2

    .line 81
    .local v2, "best":Lgnu/mapping/MethodProc;
    if-ne v2, p1, :cond_21

    .line 83
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    invoke-static {v3, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iget-object v3, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v3, v1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_26

    .line 85
    goto :goto_24

    .line 78
    .end local v2    # "best":Lgnu/mapping/MethodProc;
    .end local p0    # "this":Lgnu/expr/GenericProc;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 88
    .end local v1    # "i":I
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 74
    .end local v0    # "oldCount":I
    .end local p1    # "method":Lgnu/mapping/MethodProc;
    :catchall_26
    move-exception p1

    monitor-exit p0

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method protected declared-synchronized add([Lgnu/mapping/MethodProc;)V
    .registers 5
    .param p1, "procs"    # [Lgnu/mapping/MethodProc;

    monitor-enter p0

    .line 43
    :try_start_1
    array-length v0, p1

    .line 44
    .local v0, "n":I
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v1, :cond_a

    .line 45
    new-array v1, v0, [Lgnu/mapping/MethodProc;

    iput-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 46
    .end local p0    # "this":Lgnu/expr/GenericProc;
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_15

    .line 47
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_17

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 48
    .end local v1    # "i":I
    :cond_15
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "n":I
    .end local p1    # "procs":[Lgnu/mapping/MethodProc;
    :catchall_17
    move-exception p1

    monitor-exit p0

    goto :goto_1b

    :goto_1a
    throw p1

    :goto_1b
    goto :goto_1a
.end method

.method public declared-synchronized addAtEnd(Lgnu/mapping/MethodProc;)V
    .registers 6
    .param p1, "method"    # Lgnu/mapping/MethodProc;

    monitor-enter p0

    .line 52
    :try_start_1
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    .line 53
    .local v0, "oldCount":I
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    if-nez v1, :cond_e

    .line 54
    const/16 v1, 0x8

    new-array v1, v1, [Lgnu/mapping/MethodProc;

    iput-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    goto :goto_1c

    .line 55
    .end local p0    # "this":Lgnu/expr/GenericProc;
    :cond_e
    array-length v2, v1

    if-lt v0, v2, :cond_1c

    .line 57
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Lgnu/mapping/MethodProc;

    .line 58
    .local v2, "copy":[Lgnu/mapping/MethodProc;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    iput-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    .line 62
    .end local v2    # "copy":[Lgnu/mapping/MethodProc;
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aput-object p1, v1, v0

    .line 64
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->minArgs()I

    move-result v1

    .line 65
    .local v1, "n":I
    iget v2, p0, Lgnu/expr/GenericProc;->minArgs:I

    if-lt v1, v2, :cond_2c

    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-nez v2, :cond_2e

    .line 66
    :cond_2c
    iput v1, p0, Lgnu/expr/GenericProc;->minArgs:I

    .line 67
    :cond_2e
    invoke-virtual {p1}, Lgnu/mapping/MethodProc;->maxArgs()I

    move-result v2

    move v1, v2

    .line 68
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3a

    iget v2, p0, Lgnu/expr/GenericProc;->maxArgs:I

    if-le v1, v2, :cond_3c

    .line 69
    :cond_3a
    iput v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    .line 70
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/expr/GenericProc;->count:I
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    .line 71
    monitor-exit p0

    return-void

    .line 51
    .end local v0    # "oldCount":I
    .end local v1    # "n":I
    .end local p1    # "method":Lgnu/mapping/MethodProc;
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 111
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 112
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 113
    :cond_f
    array-length v0, p1

    invoke-static {p0, v0}, Lgnu/expr/GenericProc;->checkArgCount(Lgnu/mapping/Procedure;I)V

    .line 114
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 115
    .local v0, "ctx":Lgnu/mapping/CallContext;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v1, v2, :cond_2e

    .line 117
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v1

    .line 118
    .local v2, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, v0}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 119
    .local v3, "m":I
    if-nez v3, :cond_2b

    .line 120
    invoke-virtual {v0}, Lgnu/mapping/CallContext;->runUntilValue()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 115
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "m":I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 122
    .end local v1    # "i":I
    :cond_2e
    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lgnu/mapping/WrongType;-><init>(Lgnu/mapping/Procedure;ILjava/lang/ClassCastException;)V

    goto :goto_37

    :goto_36
    throw v1

    :goto_37
    goto :goto_36
.end method

.method public getMethod(I)Lgnu/mapping/MethodProc;
    .registers 3
    .param p1, "i"    # I

    .line 33
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, p1

    :goto_a
    return-object v0
.end method

.method public getMethodCount()I
    .registers 2

    .line 28
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    return v0
.end method

.method public isApplicable([Lgnu/bytecode/Type;)I
    .registers 7
    .param p1, "args"    # [Lgnu/bytecode/Type;

    .line 127
    const/4 v0, -0x1

    .line 128
    .local v0, "best":I
    iget v1, p0, Lgnu/expr/GenericProc;->count:I

    .local v1, "i":I
    :goto_3
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_17

    .line 130
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v1

    .line 131
    .local v2, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v3

    .line 132
    .local v3, "result":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 133
    return v4

    .line 134
    :cond_13
    if-nez v3, :cond_16

    .line 135
    const/4 v0, 0x0

    .line 136
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "result":I
    :cond_16
    goto :goto_3

    .line 137
    .end local v1    # "i":I
    :cond_17
    return v0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .registers 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 142
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 143
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 144
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v2, :cond_22

    .line 146
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v0

    .line 147
    .local v2, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1}, Lgnu/mapping/MethodProc;->match0(Lgnu/mapping/CallContext;)I

    move-result v3

    .line 148
    .local v3, "code":I
    if-nez v3, :cond_1f

    .line 149
    return v1

    .line 144
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "code":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 151
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p1, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 152
    const/4 v0, -0x1

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 157
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 158
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 159
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v2, :cond_22

    .line 161
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v0

    .line 162
    .local v2, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2}, Lgnu/mapping/MethodProc;->match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 163
    .local v3, "code":I
    if-nez v3, :cond_1f

    .line 164
    return v1

    .line 159
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "code":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 166
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 167
    const/4 v0, -0x1

    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 172
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 173
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 174
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v2, :cond_22

    .line 176
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v0

    .line 177
    .local v2, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2, p3}, Lgnu/mapping/MethodProc;->match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 178
    .local v3, "code":I
    if-nez v3, :cond_1f

    .line 179
    return v1

    .line 174
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "code":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 181
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 182
    const/4 v0, -0x1

    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 187
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 188
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 189
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v2, :cond_22

    .line 191
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v0

    .line 192
    .local v2, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v2, p1, p2, p3, p4}, Lgnu/mapping/MethodProc;->match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 193
    .local v3, "code":I
    if-nez v3, :cond_1f

    .line 194
    return v1

    .line 189
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "code":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 196
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 197
    const/4 v0, -0x1

    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 15
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 203
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    .line 204
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v0, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 205
    :cond_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    iget v2, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v0, v2, :cond_2d

    .line 207
    iget-object v2, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v2, v2, v0

    .line 208
    .local v2, "method":Lgnu/mapping/MethodProc;
    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lgnu/mapping/MethodProc;->match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v3

    .line 209
    .local v3, "code":I
    if-nez v3, :cond_2a

    .line 210
    return v1

    .line 205
    .end local v2    # "method":Lgnu/mapping/MethodProc;
    .end local v3    # "code":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 212
    .end local v0    # "i":I
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 213
    const/4 v0, -0x1

    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 14
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 218
    iget v0, p0, Lgnu/expr/GenericProc;->count:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    .line 219
    iget-object v0, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0

    .line 220
    :cond_f
    array-length v0, p1

    .line 221
    .local v0, "alen":I
    new-array v3, v0, [Lgnu/bytecode/Type;

    .line 222
    .local v3, "atypes":[Lgnu/bytecode/Type;
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v4

    .line 226
    .local v4, "language":Lgnu/expr/Language;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_17
    if-ge v5, v0, :cond_36

    .line 228
    aget-object v6, p1, v5

    .line 230
    .local v6, "arg":Ljava/lang/Object;
    if-nez v6, :cond_20

    .line 231
    sget-object v7, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    .local v7, "atype":Lgnu/bytecode/Type;
    goto :goto_31

    .line 234
    .end local v7    # "atype":Lgnu/bytecode/Type;
    :cond_20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 235
    .local v7, "aclass":Ljava/lang/Class;
    if-eqz v4, :cond_2c

    .line 236
    invoke-virtual {v4, v7}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v7, v8

    .local v8, "atype":Lgnu/bytecode/Type;
    goto :goto_31

    .line 238
    .end local v8    # "atype":Lgnu/bytecode/Type;
    :cond_2c
    invoke-static {v7}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    move-object v7, v8

    .line 240
    .local v7, "atype":Lgnu/bytecode/Type;
    :goto_31
    aput-object v7, v3, v5

    .line 226
    .end local v6    # "arg":Ljava/lang/Object;
    .end local v7    # "atype":Lgnu/bytecode/Type;
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 242
    .end local v5    # "j":I
    :cond_36
    iget v5, p0, Lgnu/expr/GenericProc;->count:I

    new-array v5, v5, [I

    .line 243
    .local v5, "codes":[I
    const/4 v6, 0x0

    .line 244
    .local v6, "defCount":I
    const/4 v7, 0x0

    .line 245
    .local v7, "maybeCount":I
    const/4 v8, -0x1

    .line 246
    .local v8, "bestIndex":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e
    iget v10, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v9, v10, :cond_5d

    .line 248
    iget-object v10, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v10, v10, v9

    invoke-virtual {v10, v3}, Lgnu/mapping/MethodProc;->isApplicable([Lgnu/bytecode/Type;)I

    move-result v10

    .line 249
    .local v10, "code":I
    if-nez v6, :cond_4f

    if-ltz v10, :cond_4f

    .line 250
    move v8, v9

    .line 251
    :cond_4f
    if-lez v10, :cond_54

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 253
    :cond_54
    if-nez v10, :cond_58

    .line 254
    add-int/lit8 v7, v7, 0x1

    .line 255
    :cond_58
    :goto_58
    aput v10, v5, v9

    .line 246
    .end local v10    # "code":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    .line 257
    .end local v9    # "i":I
    :cond_5d
    if-eq v6, v2, :cond_85

    if-nez v6, :cond_64

    if-ne v7, v2, :cond_64

    goto :goto_85

    .line 259
    :cond_64
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    iget v9, p0, Lgnu/expr/GenericProc;->count:I

    if-ge v2, v9, :cond_80

    .line 261
    aget v9, v5, v2

    .line 262
    .local v9, "code":I
    if-ltz v9, :cond_7d

    if-nez v9, :cond_72

    if-lez v6, :cond_72

    .line 263
    goto :goto_7d

    .line 264
    :cond_72
    iget-object v10, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v10, v10, v2

    .line 265
    .local v10, "method":Lgnu/mapping/MethodProc;
    invoke-virtual {v10, p1, p2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v9

    .line 266
    if-nez v9, :cond_7d

    .line 267
    return v1

    .line 259
    .end local v9    # "code":I
    .end local v10    # "method":Lgnu/mapping/MethodProc;
    :cond_7d
    :goto_7d
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 269
    .end local v2    # "i":I
    :cond_80
    const/4 v1, 0x0

    iput-object v1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    .line 270
    const/4 v1, -0x1

    return v1

    .line 258
    :cond_85
    :goto_85
    iget-object v1, p0, Lgnu/expr/GenericProc;->methods:[Lgnu/mapping/MethodProc;

    aget-object v1, v1, v8

    invoke-virtual {v1, p1, p2}, Lgnu/mapping/MethodProc;->matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v1

    return v1
.end method

.method public numArgs()I
    .registers 3

    .line 38
    iget v0, p0, Lgnu/expr/GenericProc;->minArgs:I

    iget v1, p0, Lgnu/expr/GenericProc;->maxArgs:I

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    return v0
.end method

.method public final setProperties([Ljava/lang/Object;)V
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;

    .line 286
    array-length v0, p1

    .line 287
    .local v0, "alen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1e

    .line 289
    aget-object v2, p1, v1

    .line 290
    .local v2, "arg":Ljava/lang/Object;
    instance-of v3, v2, Lgnu/expr/Keyword;

    if-eqz v3, :cond_15

    .line 291
    move-object v3, v2

    check-cast v3, Lgnu/expr/Keyword;

    add-int/lit8 v1, v1, 0x1

    aget-object v4, p1, v1

    invoke-virtual {p0, v3, v4}, Lgnu/expr/GenericProc;->setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V

    goto :goto_1b

    .line 293
    :cond_15
    move-object v3, v2

    check-cast v3, Lgnu/mapping/MethodProc;

    invoke-virtual {p0, v3}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    .line 287
    .end local v2    # "arg":Ljava/lang/Object;
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 295
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method public setProperty(Lgnu/expr/Keyword;Ljava/lang/Object;)V
    .registers 5
    .param p1, "key"    # Lgnu/expr/Keyword;
    .param p2, "value"    # Ljava/lang/Object;

    .line 275
    invoke-virtual {p1}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "name":Ljava/lang/String;
    const-string v1, "name"

    if-ne v0, v1, :cond_10

    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/GenericProc;->setName(Ljava/lang/String;)V

    goto :goto_22

    .line 278
    :cond_10
    const-string v1, "method"

    if-ne v0, v1, :cond_1b

    .line 279
    move-object v1, p2

    check-cast v1, Lgnu/mapping/MethodProc;

    invoke-virtual {p0, v1}, Lgnu/expr/GenericProc;->add(Lgnu/mapping/MethodProc;)V

    goto :goto_22

    .line 281
    :cond_1b
    invoke-virtual {p1}, Lgnu/expr/Keyword;->asSymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-super {p0, v1, p2}, Lgnu/mapping/MethodProc;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    :goto_22
    return-void
.end method

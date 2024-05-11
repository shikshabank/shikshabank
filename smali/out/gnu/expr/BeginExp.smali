.class public Lgnu/expr/BeginExp;
.super Lgnu/expr/Expression;
.source "BeginExp.java"


# instance fields
.field compileOptions:Ljava/util/Vector;

.field exps:[Lgnu/expr/Expression;

.field length:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;Lgnu/expr/Expression;)V
    .registers 6
    .param p1, "exp0"    # Lgnu/expr/Expression;
    .param p2, "exp1"    # Lgnu/expr/Expression;

    .line 40
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 41
    const/4 v0, 0x2

    new-array v1, v0, [Lgnu/expr/Expression;

    iput-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 42
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 43
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 44
    iput v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 45
    return-void
.end method

.method public constructor <init>([Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "ex"    # [Lgnu/expr/Expression;

    .line 37
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v0, p1

    iput v0, p0, Lgnu/expr/BeginExp;->length:I

    return-void
.end method

.method public static final canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 5
    .param p0, "exp"    # Lgnu/expr/Expression;

    .line 52
    instance-of v0, p0, Lgnu/expr/BeginExp;

    if-eqz v0, :cond_20

    .line 54
    move-object v0, p0

    check-cast v0, Lgnu/expr/BeginExp;

    .line 55
    .local v0, "bexp":Lgnu/expr/BeginExp;
    iget-object v1, v0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v1, :cond_c

    .line 56
    return-object p0

    .line 57
    :cond_c
    iget v1, v0, Lgnu/expr/BeginExp;->length:I

    .line 58
    .local v1, "len":I
    if-nez v1, :cond_13

    .line 59
    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v2

    .line 60
    :cond_13
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 61
    iget-object v2, v0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v2

    return-object v2

    .line 63
    .end local v0    # "bexp":Lgnu/expr/BeginExp;
    .end local v1    # "len":I
    :cond_20
    return-object p0
.end method

.method public static final canonicalize([Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .registers 3
    .param p0, "exps"    # [Lgnu/expr/Expression;

    .line 68
    array-length v0, p0

    .line 69
    .local v0, "len":I
    if-nez v0, :cond_6

    .line 70
    sget-object v1, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v1

    .line 71
    :cond_6
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 72
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lgnu/expr/BeginExp;->canonicalize(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v1

    return-object v1

    .line 73
    :cond_11
    new-instance v1, Lgnu/expr/BeginExp;

    invoke-direct {v1, p0}, Lgnu/expr/BeginExp;-><init>([Lgnu/expr/Expression;)V

    return-object v1
.end method


# virtual methods
.method public final add(Lgnu/expr/Expression;)V
    .registers 6
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 78
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    if-nez v0, :cond_a

    .line 79
    const/16 v0, 0x8

    new-array v0, v0, [Lgnu/expr/Expression;

    iput-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 80
    :cond_a
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    iget-object v1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    array-length v2, v1

    if-ne v0, v2, :cond_1b

    .line 82
    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [Lgnu/expr/Expression;

    .line 83
    .local v2, "ex":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 86
    .end local v2    # "ex":[Lgnu/expr/Expression;
    :cond_1b
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgnu/expr/BeginExp;->length:I

    aput-object p1, v0, v1

    .line 87
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .registers 6
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 107
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 109
    .local v0, "n":I
    iget-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 110
    .local v1, "consumerSave":Lgnu/lists/Consumer;
    sget-object v2, Lgnu/lists/VoidConsumer;->instance:Lgnu/lists/VoidConsumer;

    iput-object v2, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 113
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_1b

    .line 114
    :try_start_d
    iget-object v3, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_17

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 118
    :catchall_17
    move-exception v3

    iput-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    throw v3

    :cond_1b
    iput-object v1, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 119
    nop

    .line 120
    iget-object v3, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V

    .line 121
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 7
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 137
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 140
    :try_start_3
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 141
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_16

    .line 142
    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v2, v2, v1

    sget-object v3, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v2, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 143
    :cond_16
    iget-object v2, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_22

    .line 147
    .end local v0    # "n":I
    .end local v1    # "i":I
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    .line 148
    nop

    .line 149
    return-void

    .line 147
    :catchall_22
    move-exception v0

    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method public final getExpressionCount()I
    .registers 2

    .line 90
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    return v0
.end method

.method public final getExpressions()[Lgnu/expr/Expression;
    .registers 2

    .line 89
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 3

    .line 203
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public popOptions(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 131
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 132
    iget-object v0, p1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    iget-object v1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->popOptionValues(Ljava/util/Vector;)V

    .line 133
    :cond_d
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 10
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 171
    const-string v0, "(Begin"

    const-string v1, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 173
    invoke-virtual {p0, p1}, Lgnu/expr/BeginExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 174
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_50

    .line 176
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 177
    const-string v0, "(CompileOptions"

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 179
    .local v0, "sizeOptions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v0, :cond_4d

    .line 181
    iget-object v4, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 182
    .local v4, "key":Ljava/lang/Object;
    iget-object v5, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    add-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 183
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 184
    const-string v6, ""

    invoke-virtual {p1, v6, v6, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p1, v4}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    const/16 v7, 0x3a

    invoke-virtual {p1, v7}, Lgnu/mapping/OutPort;->print(C)V

    .line 186
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 187
    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1, v6}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 179
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x3

    goto :goto_21

    .line 190
    .end local v3    # "i":I
    :cond_4d
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 192
    .end local v0    # "sizeOptions":I
    :cond_50
    iget v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 193
    .local v0, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_53
    if-ge v2, v0, :cond_62

    .line 195
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 196
    iget-object v3, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 198
    .end local v2    # "i":I
    :cond_62
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public pushOptions(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 125
    iget-object v0, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 126
    iget-object v0, p1, Lgnu/expr/Compilation;->currentOptions:Lgnu/text/Options;

    iget-object v1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lgnu/text/Options;->pushOptionValues(Ljava/util/Vector;)V

    .line 127
    :cond_d
    return-void
.end method

.method public setCompileOptions(Ljava/util/Vector;)V
    .registers 2
    .param p1, "options"    # Ljava/util/Vector;

    .line 100
    iput-object p1, p0, Lgnu/expr/BeginExp;->compileOptions:Ljava/util/Vector;

    .line 101
    return-void
.end method

.method public final setExpressions([Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "exps"    # [Lgnu/expr/Expression;

    .line 94
    iput-object p1, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 95
    array-length v0, p1

    iput v0, p0, Lgnu/expr/BeginExp;->length:I

    .line 96
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 153
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v0}, Lgnu/expr/BeginExp;->pushOptions(Lgnu/expr/Compilation;)V

    .line 156
    :try_start_5
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitBeginExp(Lgnu/expr/BeginExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f

    .line 160
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    return-object v0

    :catchall_f
    move-exception v0

    iget-object v1, p1, Lgnu/expr/ExpVisitor;->comp:Lgnu/expr/Compilation;

    invoke-virtual {p0, v1}, Lgnu/expr/BeginExp;->popOptions(Lgnu/expr/Compilation;)V

    throw v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 166
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    iget v1, p0, Lgnu/expr/BeginExp;->length:I

    invoke-virtual {p1, v0, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/BeginExp;->exps:[Lgnu/expr/Expression;

    .line 167
    return-void
.end method

.class public Lgnu/expr/LetExp;
.super Lgnu/expr/ScopeExp;
.source "LetExp.java"


# instance fields
.field public body:Lgnu/expr/Expression;

.field public inits:[Lgnu/expr/Expression;


# direct methods
.method public constructor <init>([Lgnu/expr/Expression;)V
    .registers 2
    .param p1, "i"    # [Lgnu/expr/Expression;

    .line 15
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    iput-object p1, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 11
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lgnu/expr/LetExp;->setIndexes()V

    .line 31
    invoke-static {p0}, Lgnu/expr/ScopeExp;->nesting(Lgnu/expr/ScopeExp;)I

    move-result v0

    .line 32
    .local v0, "level":I
    iget v1, p0, Lgnu/expr/LetExp;->frameSize:I

    .line 34
    .local v1, "i":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 35
    .local v2, "evalFrame":[Ljava/lang/Object;
    iget-object v3, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 36
    .local v3, "evalFrames":[[Ljava/lang/Object;
    if-nez v3, :cond_16

    .line 38
    add-int/lit8 v4, v0, 0xa

    new-array v3, v4, [[Ljava/lang/Object;

    .line 39
    iput-object v3, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    goto :goto_25

    .line 41
    :cond_16
    array-length v4, v3

    if-lt v0, v4, :cond_25

    .line 43
    add-int/lit8 v4, v0, 0xa

    new-array v4, v4, [[Ljava/lang/Object;

    .line 44
    .local v4, "newFrames":[[Ljava/lang/Object;
    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    move-object v3, v4

    iput-object v4, p1, Lgnu/mapping/CallContext;->evalFrames:[[Ljava/lang/Object;

    .line 47
    .end local v4    # "newFrames":[[Ljava/lang/Object;
    :cond_25
    :goto_25
    aget-object v4, v3, v0

    .line 48
    .local v4, "oldFrame":[Ljava/lang/Object;
    aput-object v2, v3, v0

    .line 52
    const/4 v1, 0x0

    .line 53
    :try_start_2a
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v5

    .local v5, "decl":Lgnu/expr/Declaration;
    :goto_2e
    if-eqz v5, :cond_62

    .line 56
    iget-object v6, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v6, v6, v1

    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v6, v7, :cond_39

    .line 57
    goto :goto_5a

    .line 58
    :cond_39
    invoke-virtual {p0, v1, p1}, Lgnu/expr/LetExp;->evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v6

    .line 59
    .local v6, "value":Ljava/lang/Object;
    iget-object v7, v5, Lgnu/expr/Declaration;->type:Lgnu/bytecode/Type;

    .line 60
    .local v7, "type":Lgnu/bytecode/Type;
    if-eqz v7, :cond_4a

    sget-object v8, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v7, v8, :cond_4a

    .line 61
    invoke-virtual {v7, v6}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    .line 62
    :cond_4a
    invoke-virtual {v5}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v8

    if-eqz v8, :cond_58

    .line 64
    invoke-virtual {v5}, Lgnu/expr/Declaration;->makeIndirectLocationFor()Lgnu/mapping/Location;

    move-result-object v8

    .line 65
    .local v8, "loc":Lgnu/mapping/Location;
    invoke-virtual {v8, v6}, Lgnu/mapping/Location;->set(Ljava/lang/Object;)V

    .line 66
    move-object v6, v8

    .line 68
    .end local v8    # "loc":Lgnu/mapping/Location;
    :cond_58
    aput-object v6, v2, v1

    .line 54
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "type":Lgnu/bytecode/Type;
    :goto_5a
    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v6

    move-object v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 70
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_62
    iget-object v5, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v5, p1}, Lgnu/expr/Expression;->apply(Lgnu/mapping/CallContext;)V
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_6b

    .line 74
    aput-object v4, v3, v0

    .line 75
    nop

    .line 76
    return-void

    .line 74
    :catchall_6b
    move-exception v5

    aput-object v4, v3, v0

    goto :goto_70

    :goto_6f
    throw v5

    :goto_70
    goto :goto_6f
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 13
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 150
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 164
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 165
    .local v1, "decl":Lgnu/expr/Declaration;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v3, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v2, v4, :cond_5e

    .line 168
    aget-object v3, v3, v2

    .line 169
    .local v3, "init":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v4

    .line 170
    .local v4, "needsInit":Z
    if-eqz v4, :cond_20

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 171
    invoke-virtual {v1, v0}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    .line 172
    :cond_20
    if-eqz v4, :cond_52

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v6

    if-eqz v6, :cond_2d

    sget-object v6, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v3, v6, :cond_2d

    goto :goto_52

    .line 177
    :cond_2d
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 178
    .local v6, "varType":Lgnu/bytecode/Type;
    invoke-static {v1}, Lgnu/expr/CheckedTarget;->getInstance(Lgnu/expr/Declaration;)Lgnu/expr/Target;

    move-result-object v7

    .line 179
    .local v7, "varTarget":Lgnu/expr/Target;
    sget-object v8, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v3, v8, :cond_54

    .line 182
    instance-of v8, v6, Lgnu/bytecode/PrimType;

    if-eqz v8, :cond_49

    .line 183
    new-instance v8, Lgnu/expr/QuoteExp;

    new-instance v9, Ljava/lang/Byte;

    invoke-direct {v9, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {v8, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    move-object v3, v8

    goto :goto_54

    .line 184
    :cond_49
    if-eqz v6, :cond_54

    sget-object v5, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v6, v5, :cond_54

    .line 185
    sget-object v3, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    goto :goto_54

    .line 174
    .end local v6    # "varType":Lgnu/bytecode/Type;
    .end local v7    # "varTarget":Lgnu/expr/Target;
    :cond_52
    :goto_52
    sget-object v7, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    .line 188
    .restart local v7    # "varTarget":Lgnu/expr/Target;
    :cond_54
    :goto_54
    invoke-virtual {v3, p1, v7}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 165
    .end local v3    # "init":Lgnu/expr/Expression;
    .end local v4    # "needsInit":Z
    .end local v7    # "varTarget":Lgnu/expr/Target;
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_9

    .line 191
    .end local v2    # "i":I
    :cond_5e
    invoke-virtual {p0}, Lgnu/expr/LetExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 194
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v2

    invoke-virtual {p0, p1, v5, v2}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 196
    iget-object v2, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 197
    invoke-virtual {p0, v0}, Lgnu/expr/LetExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 198
    return-void
.end method

.method protected evalVariable(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .registers 5
    .param p1, "i"    # I
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v0, v0, p1

    .line 25
    .local v0, "init":Lgnu/expr/Expression;
    invoke-virtual {v0, p2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getBody()Lgnu/expr/Expression;
    .registers 2

    .line 17
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .registers 2

    .line 202
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method protected mustCompile()Z
    .registers 2

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 4
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 236
    const-string v0, "(Let"

    const-string v1, ")"

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/LetExp;->print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public print(Lgnu/mapping/OutPort;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "out"    # Lgnu/mapping/OutPort;
    .param p2, "startTag"    # Ljava/lang/String;
    .param p3, "endTag"    # Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/LetExp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p3, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 243
    invoke-virtual {p0, p1}, Lgnu/expr/LetExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 244
    const-string v0, "("

    const/4 v1, 0x0

    const-string v2, ")"

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 246
    .local v3, "decl":Lgnu/expr/Declaration;
    const/4 v4, 0x0

    .line 248
    .local v4, "i":I
    :goto_30
    if-eqz v3, :cond_6e

    .line 250
    if-lez v4, :cond_37

    .line 251
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 252
    :cond_37
    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 253
    invoke-virtual {v3, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 254
    iget-object v5, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    if-eqz v5, :cond_66

    .line 256
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 257
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(C)V

    .line 258
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 263
    iget-object v5, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v6, v5

    if-lt v4, v6, :cond_57

    .line 264
    const-string v5, "<missing init>"

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 265
    :cond_57
    aget-object v5, v5, v4

    if-nez v5, :cond_61

    .line 266
    const-string v5, "<null>"

    invoke-virtual {p1, v5}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 268
    :cond_61
    invoke-virtual {v5, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 269
    :goto_64
    add-int/lit8 v4, v4, 0x1

    .line 272
    :cond_66
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    goto :goto_30

    .line 274
    :cond_6e
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 276
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    if-nez v0, :cond_7e

    .line 277
    const-string v0, "<null body>"

    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_81

    .line 279
    :cond_7e
    invoke-virtual {v0, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 280
    :goto_81
    invoke-virtual {p1, p3}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setBody(Lgnu/expr/Expression;)V
    .registers 2
    .param p1, "body"    # Lgnu/expr/Expression;

    .line 18
    iput-object p1, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    return-void
.end method

.method store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V
    .registers 7
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "i"    # I
    .param p3, "decl"    # Lgnu/expr/Declaration;

    .line 124
    if-eqz p3, :cond_3a

    .line 126
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lgnu/expr/LetExp;->store_rest(Lgnu/expr/Compilation;ILgnu/expr/Declaration;)V

    .line 127
    invoke-virtual {p3}, Lgnu/expr/Declaration;->needsInit()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 129
    invoke-virtual {p3}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 131
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 132
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aget-object v1, v1, p2

    sget-object v2, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v1, v2, :cond_34

    .line 134
    invoke-virtual {p3}, Lgnu/expr/Declaration;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/Object;
    sget-object v2, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {p1, v1, v2}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 136
    invoke-static {v1}, Lgnu/expr/BindingInitializer;->makeLocationMethod(Ljava/lang/Object;)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 137
    .end local v1    # "name":Ljava/lang/Object;
    goto :goto_37

    .line 140
    :cond_34
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 143
    .end local v0    # "code":Lgnu/bytecode/CodeAttr;
    :cond_37
    :goto_37
    invoke-virtual {p3, p1}, Lgnu/expr/Declaration;->compileStore(Lgnu/expr/Compilation;)V

    .line 146
    :cond_3a
    return-void
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
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

    .line 207
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitLetExp(Lgnu/expr/LetExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 4
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

    .line 229
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LetExp;->visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 230
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 231
    iget-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LetExp;->body:Lgnu/expr/Expression;

    .line 232
    :cond_f
    return-void
.end method

.method public visitInitializers(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 10
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

    .line 212
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0}, Lgnu/expr/LetExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 213
    .local v0, "decl":Lgnu/expr/Declaration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    array-length v3, v2

    if-ge v1, v3, :cond_75

    .line 215
    aget-object v2, v2, v1

    .line 216
    .local v2, "init0":Lgnu/expr/Expression;
    if-eqz v2, :cond_48

    .line 218
    invoke-virtual {p1, v2, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v3

    .line 219
    .local v3, "init":Lgnu/expr/Expression;
    if-eqz v3, :cond_25

    .line 221
    iget-object v4, p0, Lgnu/expr/LetExp;->inits:[Lgnu/expr/Expression;

    aput-object v3, v4, v1

    .line 222
    iget-object v4, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    if-ne v4, v2, :cond_1e

    .line 223
    iput-object v3, v0, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .line 213
    .end local v2    # "init0":Lgnu/expr/Expression;
    .end local v3    # "init":Lgnu/expr/Expression;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_5

    .line 220
    .restart local v2    # "init0":Lgnu/expr/Expression;
    .restart local v3    # "init":Lgnu/expr/Expression;
    :cond_25
    new-instance v4, Ljava/lang/Error;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "null2 init for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " was:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4

    .line 217
    .end local v3    # "init":Lgnu/expr/Expression;
    :cond_48
    new-instance v3, Ljava/lang/Error;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null1 init for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " d:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 225
    .end local v1    # "i":I
    .end local v2    # "init0":Lgnu/expr/Expression;
    :cond_75
    return-void
.end method

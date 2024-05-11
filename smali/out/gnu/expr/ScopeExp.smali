.class public abstract Lgnu/expr/ScopeExp;
.super Lgnu/expr/Expression;
.source "ScopeExp.java"


# static fields
.field static counter:I


# instance fields
.field decls:Lgnu/expr/Declaration;

.field protected frameSize:I

.field public id:I

.field last:Lgnu/expr/Declaration;

.field public outer:Lgnu/expr/ScopeExp;

.field private scope:Lgnu/bytecode/Scope;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 316
    sget v0, Lgnu/expr/ScopeExp;->counter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lgnu/expr/ScopeExp;->counter:I

    iput v0, p0, Lgnu/expr/ScopeExp;->id:I

    .line 113
    return-void
.end method

.method public static duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V
    .registers 6
    .param p0, "oldDecl"    # Lgnu/expr/Declaration;
    .param p1, "newDecl"    # Lgnu/expr/Declaration;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 220
    const/16 v0, 0x65

    const-string v1, "duplicate declaration of \'"

    const-string v2, "\'"

    invoke-virtual {p2, v0, p1, v1, v2}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "(this is the previous declaration of \'"

    const-string v2, "\')"

    invoke-virtual {p2, v0, p0, v1, v2}, Lgnu/expr/Compilation;->error(CLgnu/expr/Declaration;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static nesting(Lgnu/expr/ScopeExp;)I
    .registers 2
    .param p0, "sc"    # Lgnu/expr/ScopeExp;

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "n":I
    :goto_1
    if-eqz p0, :cond_8

    .line 277
    iget-object p0, p0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 280
    :cond_8
    return v0
.end method


# virtual methods
.method public add(Lgnu/expr/Declaration;)V
    .registers 3
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 40
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-nez v0, :cond_7

    .line 41
    iput-object p1, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_9

    .line 43
    :cond_7
    iput-object p1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 44
    :goto_9
    iput-object p1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 45
    iput-object p0, p1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 46
    return-void
.end method

.method public add(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .registers 4
    .param p1, "prev"    # Lgnu/expr/Declaration;
    .param p2, "decl"    # Lgnu/expr/Declaration;

    .line 52
    if-nez p1, :cond_9

    .line 54
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 55
    iput-object p2, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_f

    .line 59
    :cond_9
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 60
    iput-object p2, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 62
    :goto_f
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p1, :cond_15

    .line 63
    iput-object p2, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 64
    :cond_15
    iput-object p0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 65
    return-void
.end method

.method public final addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 3
    .param p1, "name"    # Ljava/lang/Object;

    .line 230
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;)V

    .line 231
    .local v0, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p0, v0}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 232
    return-object v0
.end method

.method public final addDeclaration(Ljava/lang/Object;Lgnu/bytecode/Type;)Lgnu/expr/Declaration;
    .registers 4
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 242
    new-instance v0, Lgnu/expr/Declaration;

    invoke-direct {v0, p1, p2}, Lgnu/expr/Declaration;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 243
    .local v0, "decl":Lgnu/expr/Declaration;
    invoke-virtual {p0, v0}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 244
    return-object v0
.end method

.method public final addDeclaration(Lgnu/expr/Declaration;)V
    .registers 2
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 252
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->add(Lgnu/expr/Declaration;)V

    .line 253
    return-void
.end method

.method public countDecls()I
    .registers 3

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "n":I
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_5
    if-eqz v1, :cond_e

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 258
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_5

    .line 260
    .end local v1    # "decl":Lgnu/expr/Declaration;
    :cond_e
    return v0
.end method

.method public countNonDynamicDecls()I
    .registers 5

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "n":I
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_5
    if-eqz v1, :cond_17

    .line 267
    const-wide/32 v2, 0x10000000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_12

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 266
    :cond_12
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_5

    .line 269
    .end local v1    # "decl":Lgnu/expr/Declaration;
    :cond_17
    return v0
.end method

.method public currentLambda()Lgnu/expr/LambdaExp;
    .registers 3

    .line 120
    move-object v0, p0

    .line 123
    .local v0, "exp":Lgnu/expr/ScopeExp;
    :goto_1
    if-nez v0, :cond_5

    .line 124
    const/4 v1, 0x0

    return-object v1

    .line 125
    :cond_5
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_d

    .line 126
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    return-object v1

    .line 121
    :cond_d
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1
.end method

.method public currentModule()Lgnu/expr/ModuleExp;
    .registers 3

    .line 145
    move-object v0, p0

    .line 148
    .local v0, "exp":Lgnu/expr/ScopeExp;
    :goto_1
    if-nez v0, :cond_5

    .line 149
    const/4 v1, 0x0

    return-object v1

    .line 150
    :cond_5
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-eqz v1, :cond_d

    .line 151
    move-object v1, v0

    check-cast v1, Lgnu/expr/ModuleExp;

    return-object v1

    .line 146
    :cond_d
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1
.end method

.method public firstDecl()Lgnu/expr/Declaration;
    .registers 2

    .line 16
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    return-object v0
.end method

.method public getDefine(Ljava/lang/Object;CLgnu/expr/Compilation;)Lgnu/expr/Declaration;
    .registers 10
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "severity"    # C
    .param p3, "parser"    # Lgnu/expr/Compilation;

    .line 201
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 202
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_b

    .line 203
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_28

    .line 204
    :cond_b
    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, 0x10200

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_20

    .line 206
    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, -0x10201

    and-long/2addr v1, v3

    iput-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    goto :goto_28

    .line 209
    :cond_20
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 210
    .local v1, "newDecl":Lgnu/expr/Declaration;
    invoke-static {v0, v1, p3}, Lgnu/expr/ScopeExp;->duplicateDeclarationError(Lgnu/expr/Declaration;Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    .line 211
    move-object v0, v1

    .line 213
    .end local v1    # "newDecl":Lgnu/expr/Declaration;
    :goto_28
    return-object v0
.end method

.method public getNoDefine(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 7
    .param p1, "name"    # Ljava/lang/Object;

    .line 189
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 190
    .local v0, "decl":Lgnu/expr/Declaration;
    if-nez v0, :cond_12

    .line 192
    invoke-virtual {p0, p1}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 193
    iget-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    const-wide/32 v3, 0x10200

    or-long/2addr v1, v3

    iput-wide v1, v0, Lgnu/expr/Declaration;->flags:J

    .line 195
    :cond_12
    return-object v0
.end method

.method public getVarScope()Lgnu/bytecode/Scope;
    .registers 3

    .line 20
    iget-object v0, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 21
    .local v0, "sc":Lgnu/bytecode/Scope;
    if-nez v0, :cond_c

    .line 22
    new-instance v1, Lgnu/bytecode/Scope;

    invoke-direct {v1}, Lgnu/bytecode/Scope;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 23
    :cond_c
    return-object v0
.end method

.method public lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;
    .registers 4
    .param p1, "sym"    # Ljava/lang/Object;

    .line 162
    if-eqz p1, :cond_16

    .line 164
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 165
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_6
    if-eqz v0, :cond_16

    .line 167
    iget-object v1, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 168
    return-object v0

    .line 165
    :cond_11
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_6

    .line 171
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookup(Ljava/lang/Object;Lgnu/expr/Language;I)Lgnu/expr/Declaration;
    .registers 6
    .param p1, "sym"    # Ljava/lang/Object;
    .param p2, "language"    # Lgnu/expr/Language;
    .param p3, "namespace"    # I

    .line 176
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 177
    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_1a

    .line 179
    iget-object v1, v0, Lgnu/expr/Declaration;->symbol:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p2, v0, p3}, Lgnu/expr/Language;->hasNamespace(Lgnu/expr/Declaration;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 181
    return-object v0

    .line 177
    :cond_15
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 183
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public nestedIn(Lgnu/expr/ScopeExp;)Z
    .registers 4
    .param p1, "outer"    # Lgnu/expr/ScopeExp;

    .line 286
    move-object v0, p0

    .local v0, "sc":Lgnu/expr/ScopeExp;
    :goto_1
    if-eqz v0, :cond_a

    .line 288
    if-ne v0, p1, :cond_7

    .line 289
    const/4 v1, 0x1

    return v1

    .line 286
    :cond_7
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1

    .line 291
    .end local v0    # "sc":Lgnu/expr/ScopeExp;
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public popScope(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 32
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .local v0, "decl":Lgnu/expr/Declaration;
    :goto_4
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 33
    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 32
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 34
    .end local v0    # "decl":Lgnu/expr/Declaration;
    :cond_e
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 35
    iput-object v1, p0, Lgnu/expr/ScopeExp;->scope:Lgnu/bytecode/Scope;

    .line 36
    return-void
.end method

.method public remove(Lgnu/expr/Declaration;)V
    .registers 4
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "prev":Lgnu/expr/Declaration;
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, "cur":Lgnu/expr/Declaration;
    :goto_5
    if-eqz v1, :cond_13

    .line 94
    if-ne v1, p1, :cond_d

    .line 96
    invoke-virtual {p0, v0, p1}, Lgnu/expr/ScopeExp;->remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V

    .line 97
    return-void

    .line 99
    :cond_d
    move-object v0, v1

    .line 92
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    goto :goto_5

    .line 101
    .end local v1    # "cur":Lgnu/expr/Declaration;
    :cond_13
    return-void
.end method

.method public remove(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .registers 4
    .param p1, "prev"    # Lgnu/expr/Declaration;
    .param p2, "decl"    # Lgnu/expr/Declaration;

    .line 105
    if-nez p1, :cond_7

    .line 106
    iget-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_b

    .line 108
    :cond_7
    iget-object v0, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 109
    :goto_b
    iget-object v0, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v0, p2, :cond_11

    .line 110
    iput-object p1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 111
    :cond_11
    return-void
.end method

.method public replaceFollowing(Lgnu/expr/Declaration;Lgnu/expr/Declaration;)V
    .registers 5
    .param p1, "prev"    # Lgnu/expr/Declaration;
    .param p2, "newDecl"    # Lgnu/expr/Declaration;

    .line 72
    if-nez p1, :cond_7

    .line 74
    iget-object v0, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    .line 75
    .local v0, "oldDecl":Lgnu/expr/Declaration;
    iput-object p2, p0, Lgnu/expr/ScopeExp;->decls:Lgnu/expr/Declaration;

    goto :goto_b

    .line 79
    .end local v0    # "oldDecl":Lgnu/expr/Declaration;
    :cond_7
    iget-object v0, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 80
    .restart local v0    # "oldDecl":Lgnu/expr/Declaration;
    iput-object p2, p1, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 82
    :goto_b
    iget-object v1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    iput-object v1, p2, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 83
    iget-object v1, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    if-ne v1, v0, :cond_15

    .line 84
    iput-object p2, p0, Lgnu/expr/ScopeExp;->last:Lgnu/expr/Declaration;

    .line 85
    :cond_15
    const/4 v1, 0x0

    iput-object v1, v0, Lgnu/expr/Declaration;->next:Lgnu/expr/Declaration;

    .line 86
    iput-object p0, p2, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    .line 87
    return-void
.end method

.method protected setIndexes()V
    .registers 4

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "i":I
    invoke-virtual {p0}, Lgnu/expr/ScopeExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_5
    if-eqz v1, :cond_11

    .line 302
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    iput v0, v1, Lgnu/expr/Declaration;->evalIndex:I

    .line 300
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    move v0, v2

    goto :goto_5

    .line 304
    .end local v1    # "decl":Lgnu/expr/Declaration;
    .end local v2    # "i":I
    .restart local v0    # "i":I
    :cond_11
    iput v0, p0, Lgnu/expr/ScopeExp;->frameSize:I

    .line 305
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgnu/expr/ScopeExp;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topLevel()Lgnu/expr/ScopeExp;
    .registers 4

    .line 133
    move-object v0, p0

    .line 136
    .local v0, "exp":Lgnu/expr/ScopeExp;
    :goto_1
    iget-object v1, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    .line 137
    .local v1, "outer":Lgnu/expr/ScopeExp;
    if-eqz v1, :cond_c

    instance-of v2, v1, Lgnu/expr/ModuleExp;

    if-eqz v2, :cond_a

    goto :goto_c

    .line 139
    :cond_a
    move-object v0, v1

    .line 140
    .end local v1    # "outer":Lgnu/expr/ScopeExp;
    goto :goto_1

    .line 138
    .restart local v1    # "outer":Lgnu/expr/ScopeExp;
    :cond_c
    :goto_c
    return-object v0
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

    .line 309
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitScopeExp(Lgnu/expr/ScopeExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

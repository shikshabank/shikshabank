.class public Lgnu/bytecode/SwitchState;
.super Ljava/lang/Object;
.source "SwitchState.java"


# instance fields
.field after_label:Lgnu/bytecode/Label;

.field cases_label:Lgnu/bytecode/Label;

.field defaultLabel:Lgnu/bytecode/Label;

.field labels:[Lgnu/bytecode/Label;

.field maxValue:I

.field minValue:I

.field numCases:I

.field outerTry:Lgnu/bytecode/TryState;

.field switch_label:Lgnu/bytecode/Label;

.field values:[I


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    .line 63
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    .line 64
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    .line 65
    iget-object v0, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 68
    return-void
.end method


# virtual methods
.method public addCase(ILgnu/bytecode/CodeAttr;)Z
    .registers 5
    .param p1, "value"    # I
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 89
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p2}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 90
    .local v0, "label":Lgnu/bytecode/Label;
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 91
    invoke-virtual {v0, p2}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 92
    invoke-virtual {p0, p1, v0, p2}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result v1

    return v1
.end method

.method public addCaseGoto(ILgnu/bytecode/CodeAttr;Lgnu/bytecode/Label;)Z
    .registers 6
    .param p1, "value"    # I
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;
    .param p3, "label"    # Lgnu/bytecode/Label;

    .line 98
    invoke-virtual {p0, p1, p3, p2}, Lgnu/bytecode/SwitchState;->insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z

    move-result v0

    .line 99
    .local v0, "ok":Z
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {p3, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 100
    invoke-virtual {p2}, Lgnu/bytecode/CodeAttr;->setUnreachable()V

    .line 101
    return v0
.end method

.method public addDefault(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 106
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 107
    .local v0, "label":Lgnu/bytecode/Label;
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/Label;)V

    .line 108
    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 109
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    if-nez v1, :cond_14

    .line 110
    iput-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 111
    return-void

    .line 109
    :cond_14
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method

.method public exitSwitch(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 184
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->outerTry:Lgnu/bytecode/TryState;

    iget-object v1, p1, Lgnu/bytecode/CodeAttr;->try_stack:Lgnu/bytecode/TryState;

    if-ne v0, v1, :cond_c

    .line 186
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 187
    return-void

    .line 185
    :cond_c
    new-instance v0, Ljava/lang/Error;

    const-string v1, "exitSwitch cannot exit through a try"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finish(Lgnu/bytecode/CodeAttr;)V
    .registers 11
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 193
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_35

    .line 195
    new-instance v0, Lgnu/bytecode/Label;

    invoke-direct {v0, p1}, Lgnu/bytecode/Label;-><init>(Lgnu/bytecode/CodeAttr;)V

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    .line 196
    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->define(Lgnu/bytecode/CodeAttr;)V

    .line 197
    const-string v0, "java.lang.RuntimeException"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 198
    .local v0, "ex":Lgnu/bytecode/ClassType;
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 199
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 200
    const-string v3, "bad case value!"

    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    .line 201
    new-array v3, v2, [Lgnu/bytecode/Type;

    sget-object v4, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    aput-object v4, v3, v1

    .line 202
    .local v3, "args":[Lgnu/bytecode/Type;
    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    const-string v5, "<init>"

    invoke-virtual {v0, v5, v2, v3, v4}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;I[Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v4

    .line 204
    .local v4, "con":Lgnu/bytecode/Method;
    invoke-virtual {p1, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 205
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitThrow()V

    .line 207
    .end local v0    # "ex":Lgnu/bytecode/ClassType;
    .end local v3    # "args":[Lgnu/bytecode/Type;
    .end local v4    # "con":Lgnu/bytecode/Method;
    :cond_35
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    iget-object v3, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v3}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 208
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-gt v0, v2, :cond_75

    .line 210
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->pushType(Lgnu/bytecode/Type;)V

    .line 211
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-ne v0, v2, :cond_6b

    .line 213
    iget v0, p0, Lgnu/bytecode/SwitchState;->minValue:I

    if-nez v0, :cond_51

    .line 214
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfIntEqZero()V

    goto :goto_57

    .line 217
    :cond_51
    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 218
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 220
    :goto_57
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 221
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 222
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    .line 223
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->emitFi()V

    goto/16 :goto_109

    .line 227
    :cond_6b
    invoke-virtual {p1, v2}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 228
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->emitGoto(Lgnu/bytecode/Label;)V

    goto/16 :goto_109

    .line 231
    :cond_75
    mul-int/lit8 v1, v0, 0x2

    iget v3, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iget v4, p0, Lgnu/bytecode/SwitchState;->minValue:I

    sub-int v5, v3, v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-lt v1, v5, :cond_ce

    .line 233
    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0xd

    invoke-virtual {p1, v3}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 234
    invoke-virtual {p1, v7, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 235
    const/16 v0, 0xaa

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 236
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v8, v0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 237
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 238
    iget v0, p0, Lgnu/bytecode/SwitchState;->minValue:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 239
    iget v0, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "index":I
    iget v1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    .local v1, "i":I
    :goto_ab
    iget v2, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    if-gt v1, v2, :cond_cd

    .line 243
    iget-object v2, p0, Lgnu/bytecode/SwitchState;->values:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_bc

    iget-object v2, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "index":I
    .local v3, "index":I
    aget-object v0, v2, v0

    goto :goto_c0

    .end local v3    # "index":I
    .restart local v0    # "index":I
    :cond_bc
    iget-object v2, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    move v3, v0

    move-object v0, v2

    .line 244
    .local v0, "lab":Lgnu/bytecode/Label;
    .restart local v3    # "index":I
    :goto_c0
    invoke-virtual {p1, v8, v0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 245
    iget v2, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 241
    .end local v0    # "lab":Lgnu/bytecode/Label;
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_ab

    .line 247
    .end local v1    # "i":I
    .end local v3    # "index":I
    :cond_cd
    goto :goto_109

    .line 250
    :cond_ce
    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->reserve(I)V

    .line 251
    invoke-virtual {p1, v7, v6}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 252
    const/16 v0, 0xab

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put1(I)V

    .line 253
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->defaultLabel:Lgnu/bytecode/Label;

    invoke-virtual {p1, v8, v0}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 254
    iget v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 255
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 256
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_ee
    iget v1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    if-ge v0, v1, :cond_109

    .line 258
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->values:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lgnu/bytecode/CodeAttr;->put4(I)V

    .line 259
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aget-object v1, v1, v0

    invoke-virtual {p1, v8, v1}, Lgnu/bytecode/CodeAttr;->fixupAdd(ILgnu/bytecode/Label;)V

    .line 260
    iget v1, p1, Lgnu/bytecode/CodeAttr;->PC:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p1, Lgnu/bytecode/CodeAttr;->PC:I

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_ee

    .line 263
    .end local v0    # "index":I
    :cond_109
    :goto_109
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->after_label:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 264
    return-void
.end method

.method public getMaxValue()I
    .registers 2

    .line 56
    iget v0, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    return v0
.end method

.method public getNumCases()I
    .registers 2

    .line 58
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    return v0
.end method

.method public insertCase(ILgnu/bytecode/Label;Lgnu/bytecode/CodeAttr;)Z
    .registers 12
    .param p1, "value"    # I
    .param p2, "label"    # Lgnu/bytecode/Label;
    .param p3, "code"    # Lgnu/bytecode/CodeAttr;

    .line 121
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->values:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1b

    .line 123
    const/16 v0, 0xa

    new-array v3, v0, [I

    iput-object v3, p0, Lgnu/bytecode/SwitchState;->values:[I

    .line 124
    new-array v0, v0, [Lgnu/bytecode/Label;

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 125
    iput v2, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 126
    iput p1, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    iput p1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    .line 127
    aput p1, v3, v1

    .line 128
    aput-object p2, v0, v1

    .line 129
    return v2

    .line 131
    :cond_1b
    iget-object v3, p0, Lgnu/bytecode/SwitchState;->values:[I

    .line 132
    .local v3, "old_values":[I
    iget-object v4, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 133
    .local v4, "old_labels":[Lgnu/bytecode/Label;
    iget v5, p0, Lgnu/bytecode/SwitchState;->numCases:I

    array-length v0, v0

    if-lt v5, v0, :cond_30

    .line 135
    mul-int/lit8 v0, v5, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->values:[I

    .line 136
    mul-int/lit8 v0, v5, 0x2

    new-array v0, v0, [Lgnu/bytecode/Label;

    iput-object v0, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    .line 139
    :cond_30
    iget v0, p0, Lgnu/bytecode/SwitchState;->minValue:I

    if-ge p1, v0, :cond_38

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "copyBefore":I
    iput p1, p0, Lgnu/bytecode/SwitchState;->minValue:I

    goto :goto_5b

    .line 144
    .end local v0    # "copyBefore":I
    :cond_38
    iget v0, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    if-le p1, v0, :cond_41

    .line 146
    iget v0, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 147
    .restart local v0    # "copyBefore":I
    iput p1, p0, Lgnu/bytecode/SwitchState;->maxValue:I

    goto :goto_5b

    .line 152
    .end local v0    # "copyBefore":I
    :cond_41
    const/4 v0, 0x0

    .line 153
    .local v0, "low":I
    sub-int/2addr v5, v2

    .line 154
    .local v5, "hi":I
    const/4 v6, 0x0

    .line 155
    .local v6, "copyBefore":I
    :goto_44
    if-gt v0, v5, :cond_55

    .line 157
    add-int v7, v0, v5

    ushr-int/lit8 v6, v7, 0x1

    .line 158
    aget v7, v3, v6

    if-lt v7, p1, :cond_51

    .line 159
    add-int/lit8 v5, v6, -0x1

    goto :goto_44

    .line 161
    :cond_51
    add-int/lit8 v6, v6, 0x1

    move v0, v6

    goto :goto_44

    .line 164
    :cond_55
    aget v7, v3, v6

    if-ne p1, v7, :cond_5a

    .line 165
    return v1

    .line 164
    :cond_5a
    move v0, v6

    .line 167
    .end local v5    # "hi":I
    .end local v6    # "copyBefore":I
    .local v0, "copyBefore":I
    :goto_5b
    iget v5, p0, Lgnu/bytecode/SwitchState;->numCases:I

    sub-int/2addr v5, v0

    .line 168
    .local v5, "copyAfter":I
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    add-int/lit8 v7, v0, 0x1

    invoke-static {v3, v0, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    invoke-static {v3, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->values:[I

    aput p1, v6, v0

    .line 171
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v4, v0, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget-object v6, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    invoke-static {v4, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v1, p0, Lgnu/bytecode/SwitchState;->labels:[Lgnu/bytecode/Label;

    aput-object p2, v1, v0

    .line 174
    iget v1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    add-int/2addr v1, v2

    iput v1, p0, Lgnu/bytecode/SwitchState;->numCases:I

    .line 175
    return v2
.end method

.method public switchValuePushed(Lgnu/bytecode/CodeAttr;)V
    .registers 4
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 76
    invoke-virtual {p1}, Lgnu/bytecode/CodeAttr;->popType()Lgnu/bytecode/Type;

    .line 77
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Label;->setTypes(Lgnu/bytecode/CodeAttr;)V

    .line 78
    iget-object v0, p0, Lgnu/bytecode/SwitchState;->cases_label:Lgnu/bytecode/Label;

    iget-object v1, p0, Lgnu/bytecode/SwitchState;->switch_label:Lgnu/bytecode/Label;

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/CodeAttr;->fixupChain(Lgnu/bytecode/Label;Lgnu/bytecode/Label;)V

    .line 79
    return-void
.end method

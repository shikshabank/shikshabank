.class public Lgnu/expr/ModuleMethod;
.super Lgnu/mapping/MethodProc;
.source "ModuleMethod.java"


# instance fields
.field public module:Lgnu/expr/ModuleBody;

.field protected numArgs:I

.field public selector:I


# direct methods
.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V
    .registers 5
    .param p1, "module"    # Lgnu/expr/ModuleBody;
    .param p2, "selector"    # I
    .param p3, "name"    # Ljava/lang/Object;
    .param p4, "numArgs"    # I

    .line 22
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleMethod;->init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;

    .line 24
    return-void
.end method

.method public constructor <init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;ILjava/lang/Object;)V
    .registers 6
    .param p1, "module"    # Lgnu/expr/ModuleBody;
    .param p2, "selector"    # I
    .param p3, "name"    # Ljava/lang/Object;
    .param p4, "numArgs"    # I
    .param p5, "argTypes"    # Ljava/lang/Object;

    .line 28
    invoke-direct {p0}, Lgnu/mapping/MethodProc;-><init>()V

    .line 29
    invoke-virtual {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleMethod;->init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;

    .line 30
    iput-object p5, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public static apply0Default(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3
    .param p0, "method"    # Lgnu/expr/ModuleMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    sget-object v1, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static apply1Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p0, "method"    # Lgnu/expr/ModuleMethod;
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 228
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 229
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 230
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static apply2Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "method"    # Lgnu/expr/ModuleMethod;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 237
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 238
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 239
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static apply3Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p0, "method"    # Lgnu/expr/ModuleMethod;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 246
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 247
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 248
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 249
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 250
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static apply4Default(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "method"    # Lgnu/expr/ModuleMethod;
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 257
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 258
    .local v0, "args":[Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 259
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 260
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 261
    const/4 v1, 0x3

    aput-object p4, v0, v1

    .line 262
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v1, p0, v0}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static applyError()V
    .registers 2

    .line 295
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - bad selector"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static applyNDefault(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p0, "method"    # Lgnu/expr/ModuleMethod;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 268
    array-length v0, p1

    .line 269
    .local v0, "count":I
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->numArgs()I

    move-result v1

    .line 270
    .local v1, "num":I
    iget-object v8, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 271
    .local v8, "module":Lgnu/expr/ModuleBody;
    and-int/lit16 v2, v1, 0xfff

    if-lt v0, v2, :cond_48

    if-ltz v1, :cond_11

    shr-int/lit8 v2, v1, 0xc

    if-gt v0, v2, :cond_48

    .line 274
    :cond_11
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_4e

    goto :goto_48

    .line 285
    :pswitch_18
    aget-object v4, p1, v4

    aget-object v5, p1, v3

    aget-object v6, p1, v2

    const/4 v2, 0x3

    aget-object v7, p1, v2

    move-object v2, v8

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 283
    :pswitch_28
    aget-object v4, p1, v4

    aget-object v3, p1, v3

    aget-object v2, p1, v2

    invoke-virtual {v8, p0, v4, v3, v2}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 281
    :pswitch_33
    aget-object v2, p1, v4

    aget-object v3, p1, v3

    invoke-virtual {v8, p0, v2, v3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 279
    :pswitch_3c
    aget-object v2, p1, v4

    invoke-virtual {v8, p0, v2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 277
    :pswitch_43
    invoke-virtual {v8, p0}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 288
    :cond_48
    :goto_48
    new-instance v2, Lgnu/mapping/WrongArguments;

    invoke-direct {v2, p0, v0}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v2

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_3c
        :pswitch_33
        :pswitch_28
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 157
    iget v0, p1, Lgnu/mapping/CallContext;->pc:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5e

    move-object v0, v1

    .line 178
    .local v0, "result":Ljava/lang/Object;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal error - apply "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_20
    move-object v0, v1

    .line 175
    .restart local v0    # "result":Ljava/lang/Object;
    iget-object v1, p1, Lgnu/mapping/CallContext;->values:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleMethod;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    goto :goto_59

    .line 157
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_28
    move-object v0, v1

    .line 172
    .restart local v0    # "result":Ljava/lang/Object;
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iget-object v3, p1, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iget-object v4, p1, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    goto :goto_59

    .line 157
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_36
    move-object v0, v1

    .line 169
    .restart local v0    # "result":Ljava/lang/Object;
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iget-object v3, p1, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    goto :goto_59

    .line 157
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_42
    move-object v0, v1

    .line 166
    .restart local v0    # "result":Ljava/lang/Object;
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lgnu/expr/ModuleMethod;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    goto :goto_59

    .line 157
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_4c
    move-object v0, v1

    .line 163
    .restart local v0    # "result":Ljava/lang/Object;
    iget-object v1, p1, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/ModuleMethod;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    goto :goto_59

    .line 160
    .end local v0    # "result":Ljava/lang/Object;
    :pswitch_54
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->apply0()Ljava/lang/Object;

    move-result-object v0

    .line 161
    .restart local v0    # "result":Ljava/lang/Object;
    nop

    .line 180
    :goto_59
    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 181
    return-void

    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4c
        :pswitch_42
        :pswitch_36
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method public apply0()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "arg1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->applyN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public init(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)Lgnu/expr/ModuleMethod;
    .registers 5
    .param p1, "module"    # Lgnu/expr/ModuleBody;
    .param p2, "selector"    # I
    .param p3, "name"    # Ljava/lang/Object;
    .param p4, "numArgs"    # I

    .line 36
    iput-object p1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    .line 37
    iput p2, p0, Lgnu/expr/ModuleMethod;->selector:I

    .line 38
    iput p4, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    .line 39
    if-eqz p3, :cond_b

    .line 40
    invoke-virtual {p0, p3}, Lgnu/expr/ModuleMethod;->setSymbol(Ljava/lang/Object;)V

    .line 41
    :cond_b
    return-object p0
.end method

.method public match0(Lgnu/mapping/CallContext;)I
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;

    .line 98
    const/4 v0, 0x0

    iput v0, p1, Lgnu/mapping/CallContext;->count:I

    .line 99
    iput v0, p1, Lgnu/mapping/CallContext;->where:I

    .line 100
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match1(Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 4
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 105
    const/4 v0, 0x1

    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 106
    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 107
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match2(Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "ctx"    # Lgnu/mapping/CallContext;

    .line 112
    const/4 v0, 0x2

    iput v0, p3, Lgnu/mapping/CallContext;->count:I

    .line 113
    const/16 v0, 0x21

    iput v0, p3, Lgnu/mapping/CallContext;->where:I

    .line 115
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "ctx"    # Lgnu/mapping/CallContext;

    .line 120
    const/4 v0, 0x3

    iput v0, p4, Lgnu/mapping/CallContext;->count:I

    .line 121
    const/16 v0, 0x321

    iput v0, p4, Lgnu/mapping/CallContext;->where:I

    .line 124
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public match4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 14
    .param p1, "arg1"    # Ljava/lang/Object;
    .param p2, "arg2"    # Ljava/lang/Object;
    .param p3, "arg3"    # Ljava/lang/Object;
    .param p4, "arg4"    # Ljava/lang/Object;
    .param p5, "ctx"    # Lgnu/mapping/CallContext;

    .line 130
    const/4 v0, 0x4

    iput v0, p5, Lgnu/mapping/CallContext;->count:I

    .line 131
    const/16 v0, 0x4321

    iput v0, p5, Lgnu/mapping/CallContext;->where:I

    .line 135
    iget-object v1, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public matchN([Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 4
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 140
    array-length v0, p1

    iput v0, p2, Lgnu/mapping/CallContext;->count:I

    .line 141
    const/4 v0, 0x0

    iput v0, p2, Lgnu/mapping/CallContext;->where:I

    .line 142
    iget-object v0, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v0, p0, p1, p2}, Lgnu/expr/ModuleBody;->matchN(Lgnu/expr/ModuleMethod;[Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    return v0
.end method

.method public numArgs()I
    .registers 2

    .line 94
    iget v0, p0, Lgnu/expr/ModuleMethod;->numArgs:I

    return v0
.end method

.method protected resolveParameterTypes()V
    .registers 12

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Lgnu/expr/ModuleMethod;->getName()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_4f

    .line 55
    :try_start_7
    iget-object v2, p0, Lgnu/expr/ModuleMethod;->module:Lgnu/expr/ModuleBody;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 56
    .local v2, "moduleClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 57
    .local v3, "methods":[Ljava/lang/reflect/Method;
    invoke-static {v1}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "mangledName":Ljava/lang/String;
    array-length v5, v3

    .local v5, "i":I
    :cond_16
    :goto_16
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_2e

    .line 60
    aget-object v6, v3, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 62
    if-eqz v0, :cond_2a

    .line 64
    const/4 v0, 0x0

    .line 65
    goto :goto_2e

    .line 67
    :cond_2a
    aget-object v6, v3, v5

    move-object v0, v6

    goto :goto_16

    .line 70
    .end local v5    # "i":I
    :cond_2e
    :goto_2e
    if-eqz v0, :cond_4d

    .line 72
    invoke-static {}, Lgnu/expr/Language;->getDefaultLanguage()Lgnu/expr/Language;

    move-result-object v5

    .line 73
    .local v5, "lang":Lgnu/expr/Language;
    if-eqz v5, :cond_4d

    .line 75
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 76
    .local v6, "parameterClasses":[Ljava/lang/Class;
    array-length v7, v6

    .line 77
    .local v7, "numParamTypes":I
    new-array v8, v7, [Lgnu/bytecode/Type;

    .line 78
    .local v8, "atypes":[Lgnu/bytecode/Type;
    move v9, v7

    .local v9, "i":I
    :goto_3e
    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_4b

    .line 80
    aget-object v10, v6, v9

    invoke-virtual {v5, v10}, Lgnu/expr/Language;->getTypeFor(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v10

    aput-object v10, v8, v9

    goto :goto_3e

    .line 82
    .end local v9    # "i":I
    :cond_4b
    iput-object v8, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4e

    .line 88
    .end local v2    # "moduleClass":Ljava/lang/Class;
    .end local v3    # "methods":[Ljava/lang/reflect/Method;
    .end local v4    # "mangledName":Ljava/lang/String;
    .end local v5    # "lang":Lgnu/expr/Language;
    .end local v6    # "parameterClasses":[Ljava/lang/Class;
    .end local v7    # "numParamTypes":I
    .end local v8    # "atypes":[Lgnu/bytecode/Type;
    :cond_4d
    goto :goto_4f

    .line 86
    :catchall_4e
    move-exception v2

    .line 90
    :cond_4f
    :goto_4f
    iget-object v2, p0, Lgnu/expr/ModuleMethod;->argTypes:Ljava/lang/Object;

    if-nez v2, :cond_56

    .line 91
    invoke-super {p0}, Lgnu/mapping/MethodProc;->resolveParameterTypes()V

    .line 92
    :cond_56
    return-void
.end method

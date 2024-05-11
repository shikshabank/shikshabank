.class Lgnu/kawa/functions/NamedPart;
.super Lgnu/mapping/ProcedureN;
.source "GetNamedPart.java"

# interfaces
.implements Lgnu/mapping/HasSetter;
.implements Ljava/io/Externalizable;


# instance fields
.field container:Ljava/lang/Object;

.field kind:C

.field member:Ljava/lang/Object;

.field methods:Lgnu/mapping/MethodProc;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;C)V
    .registers 6
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "member"    # Ljava/lang/Object;
    .param p3, "kind"    # C

    .line 143
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 144
    iput-object p1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 145
    iput-object p2, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 146
    iput-char p3, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 147
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileNamedPart:validateNamedPart"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/NamedPart;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;CLgnu/mapping/MethodProc;)V
    .registers 5
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "mname"    # Ljava/lang/String;
    .param p3, "kind"    # C
    .param p4, "methods"    # Lgnu/mapping/MethodProc;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lgnu/kawa/functions/NamedPart;-><init>(Ljava/lang/Object;Ljava/lang/Object;C)V

    .line 155
    iput-object p4, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    .line 156
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 169
    invoke-virtual {p1}, Lgnu/mapping/CallContext;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/functions/NamedPart;->apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 170
    return-void
.end method

.method public apply([Ljava/lang/Object;Lgnu/mapping/CallContext;)V
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 176
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x53

    if-ne v0, v1, :cond_c

    .line 177
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    goto :goto_2b

    .line 178
    :cond_c
    const/16 v1, 0x4d

    if-ne v0, v1, :cond_24

    .line 180
    array-length v0, p1

    .line 181
    .local v0, "nargs":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 182
    .local v1, "xargs":[Ljava/lang/Object;
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 183
    const/4 v2, 0x1

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v2, v1, p2}, Lgnu/mapping/MethodProc;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 185
    .end local v0    # "nargs":I
    .end local v1    # "xargs":[Ljava/lang/Object;
    goto :goto_2b

    .line 187
    :cond_24
    invoke-virtual {p0, p1}, Lgnu/kawa/functions/NamedPart;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 188
    :goto_2b
    return-void
.end method

.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 195
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_9c

    move-object v0, v3

    .line 220
    .local v0, "xargs":[Ljava/lang/Object;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown part "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    .end local v0    # "xargs":[Ljava/lang/Object;
    :sswitch_30
    move-object v0, v3

    .line 207
    .restart local v0    # "xargs":[Ljava/lang/Object;
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 202
    .end local v0    # "xargs":[Ljava/lang/Object;
    :sswitch_38
    array-length v0, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    .restart local v0    # "xargs":[Ljava/lang/Object;
    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v3, v0, v2

    .line 204
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    sget-object v1, Lgnu/kawa/reflect/Invoke;->make:Lgnu/kawa/reflect/Invoke;

    invoke-virtual {v1, v0}, Lgnu/kawa/reflect/Invoke;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "xargs":[Ljava/lang/Object;
    :sswitch_4b
    move-object v0, v3

    .line 209
    .restart local v0    # "xargs":[Ljava/lang/Object;
    array-length v3, p1

    add-int/2addr v3, v1

    new-array v0, v3, [Ljava/lang/Object;

    .line 210
    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aput-object v3, v0, v2

    .line 211
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->methods:Lgnu/mapping/MethodProc;

    invoke-virtual {v1, v0}, Lgnu/mapping/MethodProc;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "xargs":[Ljava/lang/Object;
    :sswitch_5f
    sget-object v0, Lkawa/standard/Scheme;->instanceOf:Lgnu/kawa/reflect/InstanceOf;

    aget-object v1, p1, v2

    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/reflect/InstanceOf;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 195
    :sswitch_6a
    move-object v0, v3

    .line 214
    .restart local v0    # "xargs":[Ljava/lang/Object;
    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "fname":Ljava/lang/String;
    array-length v3, p1

    if-nez v3, :cond_81

    .line 216
    iget-object v2, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-static {v2, v1}, Lgnu/kawa/reflect/SlotGet;->staticField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 218
    :cond_81
    iget-object v3, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v3, Lgnu/bytecode/Type;

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lgnu/kawa/reflect/SlotGet;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 200
    .end local v0    # "xargs":[Ljava/lang/Object;
    .end local v1    # "fname":Ljava/lang/String;
    :sswitch_90
    sget-object v0, Lgnu/kawa/functions/Convert;->as:Lgnu/kawa/functions/Convert;

    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/functions/Convert;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_9c
    .sparse-switch
        0x43 -> :sswitch_90
        0x44 -> :sswitch_6a
        0x49 -> :sswitch_5f
        0x4d -> :sswitch_4b
        0x4e -> :sswitch_38
        0x53 -> :sswitch_30
    .end sparse-switch
.end method

.method public getSetter()Lgnu/mapping/Procedure;
    .registers 4

    .line 225
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x44

    if-ne v0, v1, :cond_c

    .line 226
    new-instance v0, Lgnu/kawa/functions/NamedPartSetter;

    invoke-direct {v0, p0}, Lgnu/kawa/functions/NamedPartSetter;-><init>(Lgnu/kawa/functions/NamedPart;)V

    return-object v0

    .line 228
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "procedure \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/kawa/functions/NamedPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' has no setter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public numArgs()I
    .registers 3

    .line 160
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    const/16 v1, 0x49

    if-eq v0, v1, :cond_15

    const/16 v1, 0x43

    if-ne v0, v1, :cond_b

    goto :goto_15

    .line 162
    :cond_b
    const/16 v1, 0x44

    if-ne v0, v1, :cond_12

    .line 163
    const/16 v0, 0x1000

    return v0

    .line 164
    :cond_12
    const/16 v0, -0x1000

    return v0

    .line 161
    :cond_15
    :goto_15
    const/16 v0, 0x1001

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 268
    invoke-interface {p1}, Ljava/io/ObjectInput;->readChar()C

    move-result v0

    iput-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    .line 269
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    .line 270
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/Procedure;

    iput-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    .line 271
    return-void
.end method

.method public set0(Ljava/lang/Object;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 233
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v0, :pswitch_data_32

    const/4 v0, 0x0

    .line 240
    .local v0, "fname":Ljava/lang/String;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid setter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "fname":Ljava/lang/String;
    :pswitch_1f
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    .restart local v0    # "fname":Ljava/lang/String;
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-static {v1, v0, p1}, Lgnu/kawa/reflect/SlotSet;->setStaticField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    return-void

    :pswitch_data_32
    .packed-switch 0x44
        :pswitch_1f
    .end packed-switch
.end method

.method public set1(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 246
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    packed-switch v0, :pswitch_data_36

    const/4 v0, 0x0

    .line 254
    .local v0, "fname":Ljava/lang/String;
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid setter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    .end local v0    # "fname":Ljava/lang/String;
    :pswitch_1f
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .restart local v0    # "fname":Ljava/lang/String;
    iget-object v1, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/Type;

    invoke-virtual {v1, p1}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 251
    invoke-static {p1, v0, p2}, Lgnu/kawa/reflect/SlotSet;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 252
    return-void

    :pswitch_data_36
    .packed-switch 0x44
        :pswitch_1f
    .end packed-switch
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->container:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lgnu/kawa/functions/NamedPart;->member:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 262
    iget-char v0, p0, Lgnu/kawa/functions/NamedPart;->kind:C

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChar(I)V

    .line 263
    return-void
.end method

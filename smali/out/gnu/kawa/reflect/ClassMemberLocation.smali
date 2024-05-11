.class public abstract Lgnu/kawa/reflect/ClassMemberLocation;
.super Lgnu/mapping/Location;
.source "ClassMemberLocation.java"


# instance fields
.field instance:Ljava/lang/Object;

.field mname:Ljava/lang/String;

.field rfield:Ljava/lang/reflect/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .registers 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/ClassType;
    .param p3, "mname"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 27
    iput-object p3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "clas"    # Ljava/lang/Class;
    .param p3, "mname"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 32
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    .line 34
    iput-object p3, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .registers 4
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 38
    invoke-direct {p0}, Lgnu/mapping/Location;-><init>()V

    .line 39
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 41
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .registers 20
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "rfield"    # Ljava/lang/reflect/Field;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "language"    # Lgnu/expr/Language;
    .param p4, "env"    # Lgnu/mapping/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 178
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, "fvalue":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    .line 180
    .local v3, "ftype":Lgnu/bytecode/Type;
    sget-object v4, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v4}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v4

    .line 181
    .local v4, "isAlias":Z
    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v5}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v5

    .line 182
    .local v5, "isProcedure":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 183
    .local v6, "rModifiers":I
    and-int/lit8 v7, v6, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_27

    const/4 v7, 0x1

    goto :goto_28

    :cond_27
    const/4 v7, 0x0

    .line 184
    .local v7, "isFinal":Z
    :goto_28
    if-eqz v7, :cond_38

    instance-of v10, v2, Lgnu/mapping/Named;

    if-eqz v10, :cond_38

    if-nez v4, :cond_38

    move-object v10, v2

    check-cast v10, Lgnu/mapping/Named;

    invoke-interface {v10}, Lgnu/mapping/Named;->getSymbol()Ljava/lang/Object;

    move-result-object v10

    goto :goto_40

    :cond_38
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lgnu/expr/Compilation;->demangleName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "fdname":Ljava/lang/Object;
    :goto_40
    instance-of v11, v10, Lgnu/mapping/Symbol;

    if-eqz v11, :cond_48

    .line 189
    move-object v11, v10

    check-cast v11, Lgnu/mapping/Symbol;

    .local v11, "sym":Lgnu/mapping/Symbol;
    goto :goto_5b

    .line 192
    .end local v11    # "sym":Lgnu/mapping/Symbol;
    :cond_48
    if-nez p2, :cond_4d

    const-string v11, ""

    goto :goto_4f

    :cond_4d
    move-object/from16 v11, p2

    :goto_4f
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v11

    .line 196
    .restart local v11    # "sym":Lgnu/mapping/Symbol;
    :goto_5b
    const/4 v12, 0x0

    .line 197
    .local v12, "property":Ljava/lang/Object;
    if-eqz v4, :cond_66

    if-eqz v7, :cond_66

    .line 199
    move-object v8, v2

    check-cast v8, Lgnu/mapping/Location;

    move-object/from16 v13, p3

    .local v8, "loc":Lgnu/mapping/Location;
    goto :goto_85

    .line 203
    .end local v8    # "loc":Lgnu/mapping/Location;
    :cond_66
    if-eqz v7, :cond_6f

    .line 204
    move-object/from16 v13, p3

    invoke-virtual {v13, v1, v2}, Lgnu/expr/Language;->getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_71

    .line 203
    :cond_6f
    move-object/from16 v13, p3

    .line 205
    :goto_71
    and-int/lit8 v14, v6, 0x8

    if-eqz v14, :cond_76

    const/4 v8, 0x1

    .line 206
    .local v8, "isStatic":Z
    :cond_76
    if-eqz v8, :cond_7f

    .line 207
    new-instance v9, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v9, v1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/reflect/Field;)V

    move-object v8, v9

    .local v9, "loc":Lgnu/mapping/Location;
    goto :goto_85

    .line 209
    .end local v9    # "loc":Lgnu/mapping/Location;
    :cond_7f
    new-instance v9, Lgnu/kawa/reflect/FieldLocation;

    invoke-direct {v9, p0, v1}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    move-object v8, v9

    .line 212
    .local v8, "loc":Lgnu/mapping/Location;
    :goto_85
    move-object/from16 v9, p4

    invoke-virtual {v9, v11, v12, v8}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    .line 213
    return-void
.end method

.method public static defineAll(Ljava/lang/Object;Lgnu/expr/Language;Lgnu/mapping/Environment;)V
    .registers 9
    .param p0, "instance"    # Ljava/lang/Object;
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "env"    # Lgnu/mapping/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 220
    .local v0, "clas":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 221
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v1

    .local v2, "i":I
    :cond_9
    :goto_9
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_29

    .line 223
    aget-object v3, v1, v2

    .line 224
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "fname":Ljava/lang/String;
    const-string v5, "$Prvt$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "$instance"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 227
    goto :goto_9

    .line 228
    :cond_24
    const/4 v5, 0x0

    invoke-static {p0, v3, v5, p1, p2}, Lgnu/kawa/reflect/ClassMemberLocation;->define(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lgnu/expr/Language;Lgnu/mapping/Environment;)V

    .line 229
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fname":Ljava/lang/String;
    goto :goto_9

    .line 230
    .end local v2    # "i":I
    :cond_29
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 132
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-nez v0, :cond_7

    .line 133
    return-object p1

    .line 137
    :cond_7
    :try_start_7
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_d} :catch_e

    return-object v1

    .line 139
    :catch_e
    move-exception v1

    .line 141
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getDeclaringClass()Lgnu/bytecode/ClassType;
    .registers 2

    .line 51
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getInstance()Ljava/lang/Object;
    .registers 2

    .line 20
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberName()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    return-object v0
.end method

.method public getRClass()Ljava/lang/Class;
    .registers 4

    .line 116
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 117
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_9

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    return-object v1

    .line 121
    :cond_9
    :try_start_9
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_10

    return-object v1

    .line 123
    :catch_10
    move-exception v1

    .line 125
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public getRField()Ljava/lang/reflect/Field;
    .registers 5

    .line 93
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    .line 94
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-nez v0, :cond_19

    .line 96
    const/4 v1, 0x0

    .line 100
    .local v1, "clas":Ljava/lang/Class;
    :try_start_5
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 101
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move-object v0, v2

    .line 102
    iput-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    .line 107
    goto :goto_19

    .line 104
    :catch_16
    move-exception v2

    .line 106
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3

    .line 109
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_19
    :goto_19
    return-object v0
.end method

.method public isBound()Z
    .registers 3

    .line 153
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 154
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public isConstant()Z
    .registers 3

    .line 147
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->getRField()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 148
    .local v0, "rfld":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_12

    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lgnu/kawa/reflect/ClassMemberLocation;->setup()V

    .line 162
    :try_start_3
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_a} :catch_b

    .line 163
    return-void

    .line 165
    :catch_b
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final setInstance(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->instance:Ljava/lang/Object;

    return-void
.end method

.method setup()V
    .registers 7

    .line 56
    iget-object v0, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;

    if-nez v0, :cond_68

    .line 61
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_b} :catch_45

    .line 72
    .local v1, "clas":Ljava/lang/Class;
    nop

    .line 75
    :try_start_c
    iget-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/reflect/ClassMemberLocation;->rfield:Ljava/lang/reflect/Field;
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_14} :catch_15

    .line 87
    goto :goto_68

    .line 77
    :catch_15
    move-exception v2

    .line 79
    .local v2, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v3, Lgnu/mapping/UnboundLocationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbound location  - no field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/reflect/ClassMemberLocation;->mname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lgnu/kawa/reflect/ClassMemberLocation;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v5}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 84
    .local v0, "uex":Ljava/lang/RuntimeException;
    invoke-virtual {v0, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 86
    throw v0

    .line 63
    .end local v0    # "uex":Ljava/lang/RuntimeException;
    .end local v1    # "clas":Ljava/lang/Class;
    .end local v2    # "ex":Ljava/lang/NoSuchFieldException;
    :catch_45
    move-exception v1

    move-object v2, v0

    .line 65
    .local v1, "ex":Ljava/lang/RuntimeException;
    .local v2, "clas":Ljava/lang/Class;
    new-instance v3, Lgnu/mapping/UnboundLocationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unbound location - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lgnu/mapping/UnboundLocationException;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    .line 69
    .restart local v0    # "uex":Ljava/lang/RuntimeException;
    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 71
    throw v0

    .line 89
    .end local v0    # "uex":Ljava/lang/RuntimeException;
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "clas":Ljava/lang/Class;
    :cond_68
    :goto_68
    return-void
.end method

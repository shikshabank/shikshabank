.class Lgnu/kawa/reflect/MethodFilter;
.super Ljava/lang/Object;
.source "ClassMethods.java"

# interfaces
.implements Lgnu/bytecode/Filter;


# instance fields
.field caller:Lgnu/bytecode/ClassType;

.field modifiers:I

.field modmask:I

.field name:Ljava/lang/String;

.field nlen:I

.field receiver:Lgnu/bytecode/ObjectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "modifiers"    # I
    .param p3, "modmask"    # I
    .param p4, "caller"    # Lgnu/bytecode/ClassType;
    .param p5, "receiver"    # Lgnu/bytecode/ObjectType;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    .line 309
    iput p2, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    .line 310
    iput p3, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    .line 311
    iput-object p4, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    .line 312
    iput-object p5, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    .line 313
    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "value"    # Ljava/lang/Object;

    .line 317
    move-object v0, p1

    check-cast v0, Lgnu/bytecode/Method;

    .line 318
    .local v0, "method":Lgnu/bytecode/Method;
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "mname":Ljava/lang/String;
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v2

    .line 320
    .local v2, "mmods":I
    iget v3, p0, Lgnu/kawa/reflect/MethodFilter;->modmask:I

    and-int/2addr v3, v2

    iget v4, p0, Lgnu/kawa/reflect/MethodFilter;->modifiers:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_73

    and-int/lit16 v3, v2, 0x1000

    if-nez v3, :cond_73

    iget-object v3, p0, Lgnu/kawa/reflect/MethodFilter;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_73

    .line 324
    :cond_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 326
    .local v3, "mlen":I
    iget v4, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    const/4 v6, 0x1

    if-eq v3, v4, :cond_54

    add-int/lit8 v7, v4, 0x2

    if-ne v3, v7, :cond_45

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x24

    if-ne v4, v7, :cond_45

    iget v4, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v7, v4

    .local v7, "c":C
    const/16 v8, 0x56

    if-eq v4, v8, :cond_54

    const/16 v4, 0x58

    if-eq v7, v4, :cond_54

    .end local v7    # "c":C
    :cond_45
    iget v4, p0, Lgnu/kawa/reflect/MethodFilter;->nlen:I

    add-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_53

    const-string v4, "$V$X"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 332
    :cond_53
    return v5

    .line 333
    :cond_54
    iget-object v4, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    instance-of v7, v4, Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_5d

    check-cast v4, Lgnu/bytecode/ClassType;

    goto :goto_61

    :cond_5d
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    .line 335
    .local v4, "declaring":Lgnu/bytecode/ClassType;
    :goto_61
    iget-object v7, p0, Lgnu/kawa/reflect/MethodFilter;->caller:Lgnu/bytecode/ClassType;

    if-eqz v7, :cond_71

    iget-object v8, p0, Lgnu/kawa/reflect/MethodFilter;->receiver:Lgnu/bytecode/ObjectType;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getModifiers()I

    move-result v9

    invoke-virtual {v7, v4, v8, v9}, Lgnu/bytecode/ClassType;->isAccessible(Lgnu/bytecode/ClassType;Lgnu/bytecode/ObjectType;I)Z

    move-result v7

    if-eqz v7, :cond_72

    :cond_71
    const/4 v5, 0x1

    :cond_72
    return v5

    .line 323
    .end local v3    # "mlen":I
    .end local v4    # "declaring":Lgnu/bytecode/ClassType;
    :cond_73
    :goto_73
    return v5
.end method

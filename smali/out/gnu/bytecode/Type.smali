.class public abstract Lgnu/bytecode/Type;
.super Ljava/lang/Object;
.source "Type.java"

# interfaces
.implements Ljava/lang/reflect/Type;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/bytecode/Type$ClassToTypeMap;
    }
.end annotation


# static fields
.field public static final booleanType:Lgnu/bytecode/PrimType;

.field public static final booleanValue_method:Lgnu/bytecode/Method;

.field public static final boolean_ctype:Lgnu/bytecode/ClassType;

.field public static final boolean_type:Lgnu/bytecode/PrimType;

.field public static final byteType:Lgnu/bytecode/PrimType;

.field public static final byte_type:Lgnu/bytecode/PrimType;

.field public static final charType:Lgnu/bytecode/PrimType;

.field public static final char_type:Lgnu/bytecode/PrimType;

.field public static final clone_method:Lgnu/bytecode/Method;

.field public static final doubleType:Lgnu/bytecode/PrimType;

.field public static final doubleValue_method:Lgnu/bytecode/Method;

.field public static final double_type:Lgnu/bytecode/PrimType;

.field public static final errorType:Lgnu/bytecode/ObjectType;

.field public static final floatType:Lgnu/bytecode/PrimType;

.field public static final floatValue_method:Lgnu/bytecode/Method;

.field public static final float_type:Lgnu/bytecode/PrimType;

.field public static final intType:Lgnu/bytecode/PrimType;

.field public static final intValue_method:Lgnu/bytecode/Method;

.field public static final int_type:Lgnu/bytecode/PrimType;

.field public static final java_lang_Class_type:Lgnu/bytecode/ClassType;

.field public static final javalangBooleanType:Lgnu/bytecode/ClassType;

.field public static final javalangClassType:Lgnu/bytecode/ClassType;

.field public static final javalangNumberType:Lgnu/bytecode/ClassType;

.field public static final javalangObjectType:Lgnu/bytecode/ClassType;

.field public static javalangStringType:Lgnu/bytecode/ClassType;

.field public static final javalangThrowableType:Lgnu/bytecode/ClassType;

.field public static final longType:Lgnu/bytecode/PrimType;

.field public static final longValue_method:Lgnu/bytecode/Method;

.field public static final long_type:Lgnu/bytecode/PrimType;

.field static mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

.field static mapNameToType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lgnu/bytecode/Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final neverReturnsType:Lgnu/bytecode/PrimType;

.field public static final nullType:Lgnu/bytecode/ObjectType;

.field public static final number_type:Lgnu/bytecode/ClassType;

.field public static final objectType:Lgnu/bytecode/ClassType;

.field public static final pointer_type:Lgnu/bytecode/ClassType;

.field public static final shortType:Lgnu/bytecode/PrimType;

.field public static final short_type:Lgnu/bytecode/PrimType;

.field public static final string_type:Lgnu/bytecode/ClassType;

.field public static final throwable_type:Lgnu/bytecode/ClassType;

.field public static final toStringType:Lgnu/bytecode/ClassType;

.field public static final toString_method:Lgnu/bytecode/Method;

.field public static final tostring_type:Lgnu/bytecode/ClassType;

.field public static final typeArray0:[Lgnu/bytecode/Type;

.field public static final voidType:Lgnu/bytecode/PrimType;

.field public static final void_type:Lgnu/bytecode/PrimType;


# instance fields
.field array_type:Lgnu/bytecode/ArrayType;

.field protected reflectClass:Ljava/lang/Class;

.field signature:Ljava/lang/String;

.field size:I

.field this_name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 487
    new-instance v0, Lgnu/bytecode/PrimType;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "byte"

    const-string v3, "B"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    .line 489
    new-instance v1, Lgnu/bytecode/PrimType;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v5, "short"

    const-string v6, "S"

    const/4 v7, 0x2

    invoke-direct {v1, v5, v6, v7, v3}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    .line 491
    new-instance v3, Lgnu/bytecode/PrimType;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v8, "int"

    const-string v9, "I"

    const/4 v10, 0x4

    invoke-direct {v3, v8, v9, v10, v6}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 493
    new-instance v6, Lgnu/bytecode/PrimType;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v11, "long"

    const-string v12, "J"

    const/16 v13, 0x8

    invoke-direct {v6, v11, v12, v13, v9}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .line 495
    new-instance v9, Lgnu/bytecode/PrimType;

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v14, "float"

    const-string v15, "F"

    invoke-direct {v9, v14, v15, v10, v12}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    .line 497
    new-instance v10, Lgnu/bytecode/PrimType;

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v15, "double"

    const-string v7, "D"

    invoke-direct {v10, v15, v7, v13, v12}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v10, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 499
    new-instance v7, Lgnu/bytecode/PrimType;

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v13, "boolean"

    move-object/from16 v17, v15

    const-string v15, "Z"

    invoke-direct {v7, v13, v15, v4, v12}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    .line 501
    new-instance v12, Lgnu/bytecode/PrimType;

    sget-object v15, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v4, "char"

    move-object/from16 v18, v13

    const-string v13, "C"

    move-object/from16 v19, v14

    const/4 v14, 0x2

    invoke-direct {v12, v4, v13, v14, v15}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v12, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    .line 503
    new-instance v13, Lgnu/bytecode/PrimType;

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v15, "void"

    move-object/from16 v16, v4

    const-string v4, "V"

    move-object/from16 v20, v11

    const/4 v11, 0x0

    invoke-direct {v13, v15, v4, v11, v14}, Lgnu/bytecode/PrimType;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .line 506
    sput-object v0, Lgnu/bytecode/Type;->byte_type:Lgnu/bytecode/PrimType;

    .line 507
    sput-object v1, Lgnu/bytecode/Type;->short_type:Lgnu/bytecode/PrimType;

    .line 508
    sput-object v3, Lgnu/bytecode/Type;->int_type:Lgnu/bytecode/PrimType;

    .line 509
    sput-object v6, Lgnu/bytecode/Type;->long_type:Lgnu/bytecode/PrimType;

    .line 510
    sput-object v9, Lgnu/bytecode/Type;->float_type:Lgnu/bytecode/PrimType;

    .line 511
    sput-object v10, Lgnu/bytecode/Type;->double_type:Lgnu/bytecode/PrimType;

    .line 512
    sput-object v7, Lgnu/bytecode/Type;->boolean_type:Lgnu/bytecode/PrimType;

    .line 513
    sput-object v12, Lgnu/bytecode/Type;->char_type:Lgnu/bytecode/PrimType;

    .line 514
    sput-object v13, Lgnu/bytecode/Type;->void_type:Lgnu/bytecode/PrimType;

    .line 519
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 523
    invoke-virtual {v4, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v0, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v0, Lgnu/bytecode/PrimType;

    invoke-direct {v0, v13}, Lgnu/bytecode/PrimType;-><init>(Lgnu/bytecode/PrimType;)V

    sput-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    .line 536
    const-string v1, "(never-returns)"

    iput-object v1, v0, Lgnu/bytecode/PrimType;->this_name:Ljava/lang/String;

    .line 539
    new-instance v0, Lgnu/bytecode/ObjectType;

    const-string v1, "(type of null)"

    invoke-direct {v0, v1}, Lgnu/bytecode/ObjectType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->nullType:Lgnu/bytecode/ObjectType;

    .line 541
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v1, "(error type)"

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/bytecode/Type;->errorType:Lgnu/bytecode/ObjectType;

    .line 543
    const-string v0, "java.lang.String"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    .line 545
    new-instance v1, Lgnu/bytecode/ClassType;

    invoke-direct {v1, v0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    sput-object v1, Lgnu/bytecode/Type;->toStringType:Lgnu/bytecode/ClassType;

    .line 548
    const-string v0, "java.lang.Object"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/bytecode/Type;->javalangObjectType:Lgnu/bytecode/ClassType;

    .line 550
    sput-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    .line 551
    const-string v2, "java.lang.Boolean"

    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v2

    sput-object v2, Lgnu/bytecode/Type;->javalangBooleanType:Lgnu/bytecode/ClassType;

    .line 553
    const-string v4, "java.lang.Throwable"

    invoke-static {v4}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v4

    sput-object v4, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 555
    new-array v5, v11, [Lgnu/bytecode/Type;

    sput-object v5, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    .line 556
    const-string v8, "toString"

    invoke-virtual {v0, v8, v11}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v8

    sput-object v8, Lgnu/bytecode/Type;->toString_method:Lgnu/bytecode/Method;

    .line 558
    const-string v8, "java.lang.Number"

    invoke-static {v8}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v8

    sput-object v8, Lgnu/bytecode/Type;->javalangNumberType:Lgnu/bytecode/ClassType;

    .line 560
    invoke-static {v0}, Lgnu/bytecode/Method;->makeCloneMethod(Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v11

    sput-object v11, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    .line 562
    const-string v11, "intValue"

    const/4 v12, 0x1

    invoke-virtual {v8, v11, v5, v3, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->intValue_method:Lgnu/bytecode/Method;

    .line 565
    const-string v3, "longValue"

    invoke-virtual {v8, v3, v5, v6, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->longValue_method:Lgnu/bytecode/Method;

    .line 568
    const-string v3, "floatValue"

    invoke-virtual {v8, v3, v5, v9, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->floatValue_method:Lgnu/bytecode/Method;

    .line 571
    const-string v3, "doubleValue"

    invoke-virtual {v8, v3, v5, v10, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->doubleValue_method:Lgnu/bytecode/Method;

    .line 574
    const-string v3, "booleanValue"

    invoke-virtual {v2, v3, v5, v7, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->booleanValue_method:Lgnu/bytecode/Method;

    .line 577
    const-string v3, "java.lang.Class"

    invoke-static {v3}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    sput-object v3, Lgnu/bytecode/Type;->javalangClassType:Lgnu/bytecode/ClassType;

    .line 580
    sput-object v0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .line 582
    sget-object v0, Lgnu/bytecode/Type;->javalangStringType:Lgnu/bytecode/ClassType;

    sput-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    .line 584
    sput-object v1, Lgnu/bytecode/Type;->tostring_type:Lgnu/bytecode/ClassType;

    .line 586
    sput-object v3, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    .line 588
    sput-object v2, Lgnu/bytecode/Type;->boolean_ctype:Lgnu/bytecode/ClassType;

    .line 590
    sput-object v4, Lgnu/bytecode/Type;->throwable_type:Lgnu/bytecode/ClassType;

    .line 592
    sput-object v8, Lgnu/bytecode/Type;->number_type:Lgnu/bytecode/ClassType;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/Type;)V
    .registers 3
    .param p1, "type"    # Lgnu/bytecode/Type;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-object v0, p1, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    iput-object v0, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    iput-object v0, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    .line 164
    iget v0, p1, Lgnu/bytecode/Type;->size:I

    iput v0, p0, Lgnu/bytecode/Type;->size:I

    .line 165
    iget-object v0, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    iput-object v0, p0, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 166
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "nam"    # Ljava/lang/String;
    .param p2, "sig"    # Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public static getType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 79
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 83
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    monitor-enter v0

    .line 85
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;

    .line 86
    .local v1, "type":Lgnu/bytecode/Type;
    if-nez v1, :cond_28

    .line 88
    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 89
    invoke-static {p0}, Lgnu/bytecode/ArrayType;->make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;

    move-result-object v2

    move-object v1, v2

    goto :goto_25

    .line 92
    :cond_19
    new-instance v2, Lgnu/bytecode/ClassType;

    invoke-direct {v2, p0}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "cl":Lgnu/bytecode/ClassType;
    iget v3, v2, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lgnu/bytecode/ClassType;->flags:I

    .line 94
    move-object v1, v2

    .line 96
    .end local v2    # "cl":Lgnu/bytecode/ClassType;
    :goto_25
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_28
    monitor-exit v0

    return-object v1

    .line 99
    .end local v1    # "type":Lgnu/bytecode/Type;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public static isMoreSpecific([Lgnu/bytecode/Type;[Lgnu/bytecode/Type;)Z
    .registers 6
    .param p0, "t1"    # [Lgnu/bytecode/Type;
    .param p1, "t2"    # [Lgnu/bytecode/Type;

    .line 440
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 441
    return v2

    .line 442
    :cond_6
    array-length v0, p0

    .local v0, "i":I
    :cond_7
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_16

    .line 444
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 445
    return v2

    .line 447
    .end local v0    # "i":I
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidJavaTypeName(Ljava/lang/String;)Z
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "in_name":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 330
    .local v1, "len":I
    :goto_5
    const/4 v2, 0x2

    if-le v1, v2, :cond_1f

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_1f

    add-int/lit8 v2, v1, -0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1f

    .line 331
    add-int/lit8 v1, v1, -0x2

    goto :goto_5

    .line 332
    :cond_1f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    const/4 v3, 0x0

    if-ge v2, v1, :cond_44

    .line 334
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 335
    .local v4, "ch":C
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_30

    .line 337
    if-eqz v0, :cond_2f

    .line 338
    const/4 v0, 0x0

    goto :goto_40

    .line 340
    :cond_2f
    return v3

    .line 342
    :cond_30
    if-eqz v0, :cond_39

    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_43

    goto :goto_3f

    :cond_39
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 344
    :goto_3f
    const/4 v0, 0x1

    .line 332
    .end local v4    # "ch":C
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 346
    .restart local v4    # "ch":C
    :cond_43
    return v3

    .line 348
    .end local v4    # "ch":C
    :cond_44
    if-ne v2, v1, :cond_47

    const/4 v3, 0x1

    :cond_47
    return v3
.end method

.method public static lookupType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    sget-object v0, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 65
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lgnu/bytecode/Type;>;"
    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public static lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;
    .registers 6
    .param p0, "t1"    # Lgnu/bytecode/Type;
    .param p1, "t2"    # Lgnu/bytecode/Type;

    .line 376
    sget-object v0, Lgnu/bytecode/Type;->neverReturnsType:Lgnu/bytecode/PrimType;

    if-ne p0, v0, :cond_5

    .line 377
    return-object p1

    .line 378
    :cond_5
    if-ne p1, v0, :cond_8

    .line 379
    return-object p0

    .line 380
    :cond_8
    const/4 v0, 0x0

    if-eqz p0, :cond_68

    if-nez p1, :cond_e

    goto :goto_68

    .line 382
    :cond_e
    instance-of v1, p0, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_2b

    instance-of v1, p1, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_2b

    .line 384
    if-ne p0, p1, :cond_19

    .line 385
    return-object p0

    .line 386
    :cond_19
    move-object v1, p0

    check-cast v1, Lgnu/bytecode/PrimType;

    invoke-virtual {v1}, Lgnu/bytecode/PrimType;->promotedType()Lgnu/bytecode/Type;

    move-result-object p0

    .line 387
    move-object v1, p1

    check-cast v1, Lgnu/bytecode/PrimType;

    invoke-virtual {v1}, Lgnu/bytecode/PrimType;->promotedType()Lgnu/bytecode/Type;

    move-result-object p1

    .line 388
    if-ne p0, p1, :cond_2a

    move-object v0, p0

    :cond_2a
    return-object v0

    .line 390
    :cond_2b
    invoke-virtual {p0, p1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 391
    return-object p1

    .line 392
    :cond_32
    invoke-virtual {p1, p0}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 393
    return-object p0

    .line 397
    :cond_39
    instance-of v0, p0, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_65

    instance-of v0, p1, Lgnu/bytecode/ClassType;

    if-nez v0, :cond_42

    goto :goto_65

    .line 399
    :cond_42
    move-object v0, p0

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 400
    .local v0, "c1":Lgnu/bytecode/ClassType;
    move-object v1, p1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 401
    .local v1, "c2":Lgnu/bytecode/ClassType;
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_62

    .line 404
    :cond_55
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v3

    invoke-static {v2, v3}, Lgnu/bytecode/Type;->lowestCommonSuperType(Lgnu/bytecode/Type;Lgnu/bytecode/Type;)Lgnu/bytecode/Type;

    move-result-object v2

    return-object v2

    .line 402
    :cond_62
    :goto_62
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v2

    .line 398
    .end local v0    # "c1":Lgnu/bytecode/ClassType;
    .end local v1    # "c2":Lgnu/bytecode/ClassType;
    :cond_65
    :goto_65
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    return-object v0

    .line 381
    :cond_68
    :goto_68
    return-object v0
.end method

.method public static declared-synchronized make(Ljava/lang/Class;)Lgnu/bytecode/Type;
    .registers 6

    const-class v0, Lgnu/bytecode/Type;

    monitor-enter v0

    .line 116
    :try_start_3
    sget-object v1, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    if-eqz v1, :cond_11

    .line 118
    invoke-virtual {v1, p0}, Lgnu/bytecode/Type$ClassToTypeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/Type;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_65

    .line 119
    if-eqz v1, :cond_11

    .line 120
    monitor-exit v0

    return-object v1

    .line 122
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 123
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    goto :goto_55

    .line 124
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    sget-object v2, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    .line 134
    monitor-enter v2
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_65

    .line 136
    :try_start_31
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/Type;

    .line 137
    if-eqz v3, :cond_42

    iget-object v4, v3, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    if-eq v4, p0, :cond_40

    if-eqz v4, :cond_40

    goto :goto_42

    .line 146
    :cond_40
    move-object v1, v3

    goto :goto_54

    .line 141
    :cond_42
    :goto_42
    new-instance v3, Lgnu/bytecode/ClassType;

    invoke-direct {v3, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 142
    iget v4, v3, Lgnu/bytecode/ClassType;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Lgnu/bytecode/ClassType;->flags:I

    .line 143
    nop

    .line 144
    sget-object v4, Lgnu/bytecode/Type;->mapNameToType:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 146
    :goto_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_31 .. :try_end_55} :catchall_5a

    .line 148
    :goto_55
    :try_start_55
    invoke-static {p0, v1}, Lgnu/bytecode/Type;->registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_65

    .line 149
    monitor-exit v0

    return-object v1

    .line 146
    :catchall_5a
    move-exception p0

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0

    .line 125
    :cond_5d
    new-instance p0, Ljava/lang/Error;

    const-string v1, "internal error - primitive type not found"

    invoke-direct {p0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_65

    .line 115
    :catchall_65
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V
    .registers 8
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "out"    # Ljava/io/PrintWriter;

    .line 228
    if-nez p2, :cond_3

    .line 229
    return-void

    .line 230
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 232
    .local v0, "c":C
    const/4 v1, 0x1

    if-ne p2, v1, :cond_18

    .line 234
    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v1

    .line 235
    .local v1, "type":Lgnu/bytecode/Type;
    if-eqz v1, :cond_55

    .line 236
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_55

    .line 238
    .end local v1    # "type":Lgnu/bytecode/Type;
    :cond_18
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_29

    .line 240
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2, p3}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    .line 241
    const-string v1, "[]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_55

    .line 243
    :cond_29
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_50

    const/4 v1, 0x2

    if-le p2, v1, :cond_50

    const/16 v1, 0x3b

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    add-int/2addr v2, p1

    if-ne v1, v2, :cond_50

    .line 244
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    add-int/2addr v2, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_55

    .line 246
    :cond_50
    sub-int v1, p2, p1

    invoke-virtual {p3, p0, p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    .line 247
    :cond_55
    :goto_55
    return-void
.end method

.method public static declared-synchronized registerTypeForClass(Ljava/lang/Class;Lgnu/bytecode/Type;)V
    .registers 5
    .param p0, "clas"    # Ljava/lang/Class;
    .param p1, "type"    # Lgnu/bytecode/Type;

    const-class v0, Lgnu/bytecode/Type;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-object v1, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    .line 106
    .local v1, "map":Lgnu/bytecode/Type$ClassToTypeMap;
    if-nez v1, :cond_f

    .line 107
    new-instance v2, Lgnu/bytecode/Type$ClassToTypeMap;

    invoke-direct {v2}, Lgnu/bytecode/Type$ClassToTypeMap;-><init>()V

    move-object v1, v2

    sput-object v2, Lgnu/bytecode/Type;->mapClassToType:Lgnu/bytecode/Type$ClassToTypeMap;

    .line 108
    :cond_f
    iput-object p0, p1, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 109
    invoke-virtual {v1, p0, p1}, Lgnu/bytecode/Type$ClassToTypeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 110
    monitor-exit v0

    return-void

    .line 104
    .end local v1    # "map":Lgnu/bytecode/Type$ClassToTypeMap;
    .end local p0    # "clas":Ljava/lang/Class;
    .end local p1    # "type":Lgnu/bytecode/Type;
    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static signatureLength(Ljava/lang/String;)I
    .registers 2
    .param p0, "sig"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/bytecode/Type;->signatureLength(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static signatureLength(Ljava/lang/String;I)I
    .registers 7
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 254
    .local v0, "len":I
    const/4 v1, -0x1

    if-gt v0, p1, :cond_8

    .line 255
    return v1

    .line 256
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 257
    .local v2, "c":C
    const/4 v3, 0x0

    .line 258
    .local v3, "arrays":I
    :goto_d
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_1a

    .line 260
    add-int/lit8 v3, v3, 0x1

    .line 261
    add-int/lit8 p1, p1, 0x1

    .line 262
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_d

    .line 264
    :cond_1a
    invoke-static {v2}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 265
    add-int/lit8 v1, v3, 0x1

    return v1

    .line 266
    :cond_23
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_35

    .line 268
    const/16 v4, 0x3b

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 269
    .local v4, "end":I
    if-lez v4, :cond_35

    .line 270
    add-int v1, v3, v4

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, p1

    return v1

    .line 272
    .end local v4    # "end":I
    :cond_35
    return v1
.end method

.method public static signatureToName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "sig"    # Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 285
    .local v0, "len":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 286
    return-object v1

    .line 287
    :cond_8
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 289
    .local v2, "c":C
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1b

    .line 291
    invoke-static {v2}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v4

    .line 292
    .local v4, "type":Lgnu/bytecode/Type;
    if-eqz v4, :cond_1b

    .line 293
    invoke-virtual {v4}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 295
    .end local v4    # "type":Lgnu/bytecode/Type;
    :cond_1b
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_4e

    .line 297
    const/4 v3, 0x1

    .line 298
    .local v3, "arrays":I
    if-ge v3, v0, :cond_2a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_2a

    .line 299
    add-int/lit8 v3, v3, 0x1

    .line 300
    :cond_2a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgnu/bytecode/Type;->signatureToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 301
    if-nez p0, :cond_35

    .line 302
    return-object v1

    .line 303
    :cond_35
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0x32

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 304
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    :goto_3f
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_49

    .line 306
    const-string v4, "[]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 307
    :cond_49
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 309
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "arrays":I
    :cond_4e
    const/16 v4, 0x4c

    if-ne v2, v4, :cond_6e

    const/4 v4, 0x2

    if-le v0, v4, :cond_6e

    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_6e

    .line 310
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 311
    :cond_6e
    return-object v1
.end method

.method public static signatureToPrimitive(C)Lgnu/bytecode/PrimType;
    .registers 2
    .param p0, "sig"    # C

    .line 181
    sparse-switch p0, :sswitch_data_20

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 190
    :sswitch_5
    sget-object v0, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 191
    :sswitch_8
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 187
    :sswitch_b
    sget-object v0, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 189
    :sswitch_e
    sget-object v0, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 188
    :sswitch_11
    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 186
    :sswitch_14
    sget-object v0, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 185
    :sswitch_17
    sget-object v0, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 184
    :sswitch_1a
    sget-object v0, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    return-object v0

    .line 183
    :sswitch_1d
    sget-object v0, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    return-object v0

    :sswitch_data_20
    .sparse-switch
        0x42 -> :sswitch_1d
        0x43 -> :sswitch_1a
        0x44 -> :sswitch_17
        0x46 -> :sswitch_14
        0x49 -> :sswitch_11
        0x4a -> :sswitch_e
        0x53 -> :sswitch_b
        0x56 -> :sswitch_8
        0x5a -> :sswitch_5
    .end sparse-switch
.end method

.method public static signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;
    .registers 3
    .param p0, "sig"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method

.method public static signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;
    .registers 7
    .param p0, "sig"    # Ljava/lang/String;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 199
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 200
    return-object v0

    .line 201
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 203
    .local v1, "c":C
    const/4 v2, 0x1

    if-ne p2, v2, :cond_12

    .line 205
    invoke-static {v1}, Lgnu/bytecode/Type;->signatureToPrimitive(C)Lgnu/bytecode/PrimType;

    move-result-object v2

    .line 206
    .local v2, "type":Lgnu/bytecode/Type;
    if-eqz v2, :cond_12

    .line 207
    return-object v2

    .line 209
    .end local v2    # "type":Lgnu/bytecode/Type;
    :cond_12
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_26

    .line 211
    add-int/lit8 v2, p1, 0x1

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;II)Lgnu/bytecode/Type;

    move-result-object v2

    .line 212
    .restart local v2    # "type":Lgnu/bytecode/Type;
    if-nez v2, :cond_21

    goto :goto_25

    :cond_21
    invoke-static {v2}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    :goto_25
    return-object v0

    .line 214
    .end local v2    # "type":Lgnu/bytecode/Type;
    :cond_26
    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4e

    const/4 v2, 0x2

    if-le p2, v2, :cond_4e

    const/16 v2, 0x3b

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, p2, -0x1

    add-int/2addr v3, p1

    if-ne v2, v3, :cond_4e

    .line 215
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    add-int/2addr v2, p1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    const/16 v3, 0x2e

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    return-object v0

    .line 216
    :cond_4e
    return-object v0
.end method

.method protected static swappedCompareResult(I)I
    .registers 3
    .param p0, "code"    # I

    .line 434
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    goto :goto_a

    :cond_5
    if-ne p0, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, p0

    :goto_a
    return v0
.end method


# virtual methods
.method public abstract coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 461
    return-object p1
.end method

.method public abstract compare(Lgnu/bytecode/Type;)I
.end method

.method public emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 484
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unimplemented emitCoerceFromObject for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V
    .registers 2
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 479
    return-void
.end method

.method public emitConvertFromPrimitive(Lgnu/bytecode/Type;Lgnu/bytecode/CodeAttr;)V
    .registers 3
    .param p1, "stackType"    # Lgnu/bytecode/Type;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 473
    invoke-virtual {p1, p2}, Lgnu/bytecode/Type;->emitCoerceToObject(Lgnu/bytecode/CodeAttr;)V

    .line 474
    return-void
.end method

.method public emitIsInstance(Lgnu/bytecode/CodeAttr;)V
    .registers 2
    .param p1, "code"    # Lgnu/bytecode/CodeAttr;

    .line 452
    invoke-virtual {p1, p0}, Lgnu/bytecode/CodeAttr;->emitInstanceof(Lgnu/bytecode/Type;)V

    .line 453
    return-void
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .registers 1

    .line 36
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRealType()Lgnu/bytecode/Type;
    .registers 1

    .line 43
    return-object p0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .registers 2

    .line 599
    iget-object v0, p0, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .registers 2

    .line 172
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    return v0
.end method

.method public getSizeInWords()I
    .registers 3

    .line 173
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :cond_7
    const/4 v0, 0x1

    :goto_8
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 614
    invoke-virtual {p0}, Lgnu/bytecode/Type;->toString()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    return v1
.end method

.method public isExisting()Z
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 353
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSubtype(Lgnu/bytecode/Type;)Z
    .registers 4
    .param p1, "other"    # Lgnu/bytecode/Type;

    .line 359
    invoke-virtual {p0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    .line 360
    .local v0, "comp":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method public final isVoid()Z
    .registers 2

    .line 175
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public promote()Lgnu/bytecode/Type;
    .registers 3

    .line 169
    iget v0, p0, Lgnu/bytecode/Type;->size:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    sget-object v0, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    goto :goto_9

    :cond_8
    move-object v0, p0

    :goto_9
    return-object v0
.end method

.method protected setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lgnu/bytecode/Type;->this_name:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setReflectClass(Ljava/lang/Class;)V
    .registers 2
    .param p1, "rclass"    # Ljava/lang/Class;

    .line 604
    iput-object p1, p0, Lgnu/bytecode/Type;->reflectClass:Ljava/lang/Class;

    .line 605
    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .registers 2
    .param p1, "sig"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lgnu/bytecode/Type;->signature:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

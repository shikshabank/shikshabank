.class public abstract Lgnu/kawa/functions/ArithOp;
.super Lgnu/mapping/ProcedureN;
.source "ArithOp.java"


# static fields
.field static final ADD:I = 0x1

.field public static final AND:I = 0xd

.field public static final ASHIFT_GENERAL:I = 0x9

.field public static final ASHIFT_LEFT:I = 0xa

.field public static final ASHIFT_RIGHT:I = 0xb

.field public static final DIVIDE_GENERIC:I = 0x4

.field public static final DIVIDE_INEXACT:I = 0x5

.field public static final IOR:I = 0xe

.field public static final LSHIFT_RIGHT:I = 0xc

.field public static final MODULO:I = 0x8

.field static final MUL:I = 0x3

.field public static final NOT:I = 0x10

.field public static final QUOTIENT:I = 0x6

.field public static final QUOTIENT_EXACT:I = 0x7

.field static final SUB:I = 0x2

.field public static final XOR:I = 0xf


# instance fields
.field final op:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "op"    # I

    .line 55
    invoke-direct {p0, p1}, Lgnu/mapping/ProcedureN;-><init>(Ljava/lang/String;)V

    .line 56
    iput p2, p0, Lgnu/kawa/functions/ArithOp;->op:I

    .line 57
    return-void
.end method

.method public static classify(Lgnu/bytecode/Type;)I
    .registers 7
    .param p0, "type"    # Lgnu/bytecode/Type;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "kind":I
    instance-of v1, p0, Lgnu/bytecode/PrimType;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_29

    .line 81
    invoke-virtual {p0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 82
    .local v1, "sig":C
    const/16 v5, 0x56

    if-eq v1, v5, :cond_28

    const/16 v5, 0x5a

    if-eq v1, v5, :cond_28

    const/16 v5, 0x43

    if-ne v1, v5, :cond_1d

    goto :goto_28

    .line 84
    :cond_1d
    const/16 v4, 0x44

    if-eq v1, v4, :cond_27

    const/16 v4, 0x46

    if-ne v1, v4, :cond_26

    goto :goto_27

    .line 87
    :cond_26
    return v3

    .line 85
    :cond_27
    :goto_27
    return v2

    .line 83
    :cond_28
    :goto_28
    return v4

    .line 89
    .end local v1    # "sig":C
    :cond_29
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeIntNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 90
    return v3

    .line 91
    :cond_32
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeDFloNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 92
    return v2

    .line 93
    :cond_3b
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeRealNum:Lgnu/kawa/lispexpr/LangObjType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 94
    const/4 v1, 0x2

    return v1

    .line 95
    :cond_45
    sget-object v1, Lgnu/kawa/functions/Arithmetic;->typeNumeric:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v1}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 96
    const/4 v1, 0x1

    return v1

    .line 98
    :cond_4f
    return v4
.end method


# virtual methods
.method public defaultResult()Ljava/lang/Object;
    .registers 2

    .line 61
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public isSideEffectFree()Z
    .registers 2

    .line 66
    const/4 v0, 0x1

    return v0
.end method

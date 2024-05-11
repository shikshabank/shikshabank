.class public Lgnu/kawa/functions/NumberPredicate;
.super Lgnu/mapping/Procedure1;
.source "NumberPredicate.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# static fields
.field public static final EVEN:I = 0x2

.field public static final ODD:I = 0x1


# instance fields
.field language:Lgnu/expr/Language;

.field final op:I


# direct methods
.method public constructor <init>(Lgnu/expr/Language;Ljava/lang/String;I)V
    .registers 6
    .param p1, "language"    # Lgnu/expr/Language;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "op"    # I

    .line 36
    invoke-direct {p0, p2}, Lgnu/mapping/Procedure1;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    .line 38
    iput p3, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    .line 39
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.functions.CompileArith:validateApplyNumberPredicate"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/functions/NumberPredicate;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "arg1"    # Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    .line 25
    .local v0, "iarg1":Lgnu/math/IntNum;
    iget v1, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_28

    move v1, v2

    .line 29
    .local v1, "result":Z
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 25
    .end local v1    # "result":Z
    :pswitch_11
    move v1, v2

    .line 28
    .restart local v1    # "result":Z
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOdd()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_1e

    .line 27
    .end local v1    # "result":Z
    :pswitch_1a
    invoke-virtual {v0}, Lgnu/math/IntNum;->isOdd()Z

    move-result v1

    .line 31
    .restart local v1    # "result":Z
    :goto_1e
    invoke-virtual {p0}, Lgnu/kawa/functions/NumberPredicate;->getLanguage()Lgnu/expr/Language;

    move-result-object v2

    invoke-virtual {v2, v1}, Lgnu/expr/Language;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_11
    .end packed-switch
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 13
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "target"    # Lgnu/expr/Target;

    .line 50
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    .line 51
    .local v0, "args":[Lgnu/expr/Expression;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    iget v1, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    const/4 v3, 0x2

    if-eq v1, v2, :cond_f

    if-ne v1, v3, :cond_46

    .line 53
    :cond_f
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 54
    .local v1, "arg0":Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-static {v4}, Lgnu/kawa/functions/Arithmetic;->classifyType(Lgnu/bytecode/Type;)I

    move-result v4

    .line 55
    .local v4, "kind":I
    const/4 v5, 0x4

    if-gt v4, v5, :cond_46

    .line 57
    sget-object v5, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 58
    .local v5, "wtype":Lgnu/bytecode/PrimType;
    invoke-static {v5}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v6

    .line 59
    .local v6, "wtarget":Lgnu/expr/Target;
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v7

    .line 60
    .local v7, "code":Lgnu/bytecode/CodeAttr;
    iget v8, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne v8, v3, :cond_2e

    .line 61
    invoke-virtual {v7, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 62
    :cond_2e
    invoke-virtual {v1, p2, v6}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 63
    invoke-virtual {v7, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 64
    invoke-virtual {v7}, Lgnu/bytecode/CodeAttr;->emitAnd()V

    .line 65
    iget v2, p0, Lgnu/kawa/functions/NumberPredicate;->op:I

    if-ne v2, v3, :cond_40

    .line 66
    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {v7, v2}, Lgnu/bytecode/CodeAttr;->emitSub(Lgnu/bytecode/PrimType;)V

    .line 67
    :cond_40
    sget-object v2, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 68
    return-void

    .line 71
    .end local v1    # "arg0":Lgnu/expr/Expression;
    .end local v4    # "kind":I
    .end local v5    # "wtype":Lgnu/bytecode/PrimType;
    .end local v6    # "wtarget":Lgnu/expr/Target;
    .end local v7    # "code":Lgnu/bytecode/CodeAttr;
    :cond_46
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 72
    return-void
.end method

.method protected final getLanguage()Lgnu/expr/Language;
    .registers 2

    .line 18
    iget-object v0, p0, Lgnu/kawa/functions/NumberPredicate;->language:Lgnu/expr/Language;

    return-object v0
.end method

.method public numArgs()I
    .registers 2

    .line 45
    const/16 v0, 0x1001

    return v0
.end method

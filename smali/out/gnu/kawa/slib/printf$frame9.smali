.class public Lgnu/kawa/slib/printf$frame9;
.super Lgnu/expr/ModuleBody;
.source "printf.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/printf;->stdio$ClIprintf$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame9"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nprintf.scm\nScheme\n*S Scheme\n*F\n+ 1 printf.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/printf.scm\n*L\n197#1,18:197\n*E\n"
.end annotation


# instance fields
.field args:Lgnu/lists/LList;

.field fc:Ljava/lang/Object;

.field fl:I

.field format$Mnstring:Ljava/lang/Object;

.field out:Ljava/lang/Object;

.field pos:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda18mustAdvance()Ljava/lang/Object;
    .registers 6

    .line 197
    const-string v0, "string-ref"

    .line 198
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v2, Lgnu/kawa/slib/printf;->Lit7:Lgnu/math/IntNum;

    iget-object v3, p0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    sget-object v1, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    .line 199
    iget-object v2, p0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    iget v3, p0, Lgnu/kawa/slib/printf$frame9;->fl:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_25

    invoke-virtual {p0}, Lgnu/kawa/slib/printf$frame9;->lambda20incomplete()Ljava/lang/Object;

    move-result-object v0

    goto :goto_3e

    .line 200
    :cond_25
    iget-object v1, p0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    :try_start_27
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_27 .. :try_end_29} :catch_47

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    :try_start_2b
    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_32
    .catch Ljava/lang/ClassCastException; {:try_start_2b .. :try_end_32} :catch_3f

    invoke-static {v1, v0}, Lkawa/lib/strings;->stringRef(Ljava/lang/CharSequence;I)C

    move-result v0

    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/slib/printf$frame9;->fc:Ljava/lang/Object;

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_3e
    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/printf$frame9;
    :catch_3f
    move-exception v1

    new-instance v3, Lgnu/mapping/WrongType;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4, v2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    :catch_47
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v0, v4, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public lambda19isEndOfFormat()Z
    .registers 4

    .line 201
    nop

    .line 202
    sget-object v0, Lkawa/standard/Scheme;->numGEq:Lgnu/kawa/functions/NumberCompare;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame9;->pos:Ljava/lang/Object;

    iget v2, p0, Lgnu/kawa/slib/printf$frame9;->fl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public lambda20incomplete()Ljava/lang/Object;
    .registers 5

    .line 203
    nop

    .line 204
    sget-object v0, Lgnu/kawa/slib/printf;->Lit34:Lgnu/mapping/SimpleSymbol;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "conversion specification incomplete"

    aput-object v3, v1, v2

    iget-object v2, p0, Lgnu/kawa/slib/printf$frame9;->format$Mnstring:Ljava/lang/Object;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda21out$St(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "strs"    # Ljava/lang/Object;

    .line 209
    nop

    .line 210
    invoke-static {p1}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v1, p0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3e

    .line 211
    :cond_10
    move-object v0, p1

    .local v0, "strs":Ljava/lang/Object;
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 212
    :goto_13
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v3

    .local v2, "x":Z
    move v2, v3

    if-eqz v2, :cond_23

    if-eqz v2, :cond_1f

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_21

    :cond_1f
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_21
    move-object v0, v1

    goto :goto_3e

    .line 213
    :cond_23
    sget-object v3, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v4, p0, Lgnu/kawa/slib/printf$frame9;->out:Ljava/lang/Object;

    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v1, "x":Ljava/lang/Object;
    move-object v1, v3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v3, :cond_3d

    .line 214
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    .line 213
    :cond_3d
    move-object v0, v1

    .end local v0    # "strs":Ljava/lang/Object;
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "x":Z
    :goto_3e
    return-object v0
.end method

.class public Lcom/google/youngandroid/runtime$frame8;
.super Lgnu/expr/ModuleBody;
.source "runtime1462831921990722459.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->textDeobfuscate(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame8"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime1462831921990722459.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime1462831921990722459.scm\n/tmp/runtime1462831921990722459.scm\n*L\n931#1,2389:931\n*E\n"
.end annotation


# instance fields
.field final cont$Fn16:Lgnu/expr/ModuleMethod;

.field lc:Ljava/lang/Object;

.field text:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lcom/google/youngandroid/runtime;->Lit49:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0xd

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame8;->cont$Fn16:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame8;->lambda19cont(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lambda19cont(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "$Styail$Mnbreak$St"    # Ljava/lang/Object;

    .line 3319
    const-string v0, "string-length"

    :goto_2
    iget-object v1, p0, Lcom/google/youngandroid/runtime$frame8;->lc:Ljava/lang/Object;

    const/4 v2, 0x1

    :try_start_5
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7} :catch_2f

    invoke-static {v1}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v1

    iget-object v3, p0, Lcom/google/youngandroid/runtime$frame8;->text:Ljava/lang/Object;

    :try_start_d
    check-cast v3, Ljava/lang/CharSequence;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_f} :catch_28

    invoke-static {v3}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v3

    if-ge v1, v3, :cond_26

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/youngandroid/runtime$frame8;->lc:Ljava/lang/Object;

    aput-object v4, v1, v3

    aput-object v4, v1, v2

    invoke-static {v1}, Lkawa/lib/strings;->stringAppend([Ljava/lang/Object;)Lgnu/lists/FString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/youngandroid/runtime$frame8;->lc:Ljava/lang/Object;

    .line 931
    goto :goto_2

    :cond_26
    const/4 v0, 0x0

    return-object v0

    .line 3319
    .end local p0    # "this":Lcom/google/youngandroid/runtime$frame8;
    .end local p1    # "$Styail$Mnbreak$St":Ljava/lang/Object;
    :catch_28
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    invoke-direct {v1, p1, v0, v2, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_2f
    move-exception p1

    new-instance v3, Lgnu/mapping/WrongType;

    invoke-direct {v3, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_37

    :goto_36
    throw v3

    :goto_37
    goto :goto_36
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_f

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x1

    iput p1, p3, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

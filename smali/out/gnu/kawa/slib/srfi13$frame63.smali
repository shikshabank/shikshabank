.class public Lgnu/kawa/slib/srfi13$frame63;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringTitlecase$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame63"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n970#1,4:970\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn149:Lgnu/expr/ModuleMethod;

.field final lambda$Fn150:Lgnu/expr/ModuleMethod;

.field maybe$Mnstart$Plend:Lgnu/lists/LList;

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame63;->lambda$Fn149:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x7f

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame63;->lambda$Fn150:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame63;->lambda149()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame63;->lambda150(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda149()Ljava/lang/Object;
    .registers 4

    .line 970
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mntitlecase$Ex:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame63;->s:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame63;->maybe$Mnstart$Plend:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseFinalStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda150(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "end"    # Ljava/lang/Object;

    const-string v0, "substring"

    .line 971
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame63;->s:Ljava/lang/Object;

    :try_start_4
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_36

    :try_start_6
    move-object v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_d} :catch_2e

    :try_start_d
    move-object v3, p2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_d .. :try_end_14} :catch_26

    invoke-static {v1, v2, v0}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 972
    .local v0, "ans":Ljava/lang/CharSequence;
    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    sget-object v2, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v2, p2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->$PcStringTitlecase$Ex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    nop

    .end local v0    # "ans":Ljava/lang/CharSequence;
    return-object v0

    .line 971
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame63;
    .end local p1    # "start":Ljava/lang/Object;
    .end local p2    # "end":Ljava/lang/Object;
    :catch_26
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_2e
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_36
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_c

    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_c
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_11

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x2

    iput p1, p4, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

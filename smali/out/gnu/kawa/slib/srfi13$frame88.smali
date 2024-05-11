.class public Lgnu/kawa/slib/srfi13$frame88;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringKmpPartialSearch$V(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame88"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1468#1,5:1468\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn198:Lgnu/expr/ModuleMethod;

.field final lambda$Fn199:Lgnu/expr/ModuleMethod;

.field patlen:I

.field s:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xad

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1468"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame88;->lambda$Fn198:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xae

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1472"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame88;->lambda$Fn199:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1c

    .line 1472
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi13$frame88;->lambda199(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_15

    :cond_13
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_15
    return-object p1

    .line 1468
    :pswitch_16
    invoke-virtual {p0, p2}, Lgnu/kawa/slib/srfi13$frame88;->lambda198(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_1c
    .packed-switch 0xad
        :pswitch_16
        :pswitch_a
    .end packed-switch
.end method

.method lambda198(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "args"    # Ljava/lang/Object;

    .line 1468
    nop

    .line 1469
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnkmp$Mnpartial$Mnsearch:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame88;->s:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lgnu/kawa/slib/srfi13;->stringParseStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda199(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "i"    # Ljava/lang/Object;

    .line 1472
    invoke-static {p1}, Lkawa/lib/numbers;->isInteger(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .local v0, "x":Z
    if-eqz v0, :cond_41

    invoke-static {p1}, Lkawa/lib/numbers;->isExact(Ljava/lang/Object;)Z

    move-result v2

    move v3, v1

    .local v2, "x":Z
    if-eqz v2, :cond_40

    sget-object v3, Lkawa/standard/Scheme;->numLEq:Lgnu/kawa/functions/NumberCompare;

    sget-object v4, Lgnu/kawa/slib/srfi13;->Lit0:Lgnu/math/IntNum;

    invoke-virtual {v3, v4, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :try_start_17
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_36

    .local v1, "x":Z
    move v1, v3

    if-eqz v1, :cond_34

    sget-object v3, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    iget v4, p0, Lgnu/kawa/slib/srfi13$frame88;->patlen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v1, v3

    .end local v1    # "x":Z
    :cond_34
    move v2, v1

    goto :goto_40

    .end local v0    # "x":Z
    .end local v2    # "x":Z
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame88;
    .end local p1    # "i":Ljava/lang/Object;
    :catch_36
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, -0x2

    const-string v2, "x"

    invoke-direct {v0, p1, v2, v1, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .restart local v0    # "x":Z
    .restart local p1    # "i":Ljava/lang/Object;
    :cond_40
    :goto_40
    move v0, v2

    .end local v0    # "x":Z
    :cond_41
    return v0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a

    .line 1468
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1472
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1468
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1a
    .packed-switch 0xad
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

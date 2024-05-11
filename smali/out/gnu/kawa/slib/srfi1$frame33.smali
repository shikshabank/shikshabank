.class public Lgnu/kawa/slib/srfi1$frame33;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->lsetUnion$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame33"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n1471#1,8:1471\n*E\n"
.end annotation


# instance fields
.field $Eq:Lgnu/mapping/Procedure;

.field final lambda$Fn31:Lgnu/expr/ModuleMethod;

.field final lambda$Fn32:Lgnu/expr/ModuleMethod;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1476"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame33;->lambda$Fn32:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x21

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm:1471"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi1$frame33;->lambda$Fn31:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_14

    .line 1471
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame33;->lambda48(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1476
    :pswitch_f
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi1$frame33;->lambda49(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_14
    .packed-switch 0x20
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method lambda48(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "lis"    # Ljava/lang/Object;
    .param p2, "ans"    # Ljava/lang/Object;

    .line 1471
    nop

    .line 1472
    invoke-static {p1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_13

    :cond_8
    invoke-static {p2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1473
    move-object v0, p1

    goto :goto_1e

    :cond_10
    if-ne p1, p2, :cond_15

    .line 1474
    nop

    .line 1476
    :goto_13
    move-object v0, p2

    goto :goto_1e

    :cond_15
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame33;->lambda$Fn32:Lgnu/expr/ModuleMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p1, v1}, Lgnu/kawa/slib/srfi1;->fold$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method lambda49(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "elt"    # Ljava/lang/Object;
    .param p2, "ans"    # Ljava/lang/Object;

    .line 1476
    new-instance v0, Lgnu/kawa/slib/srfi1$frame34;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi1$frame34;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi1$frame34;->staticLink:Lgnu/kawa/slib/srfi1$frame33;

    iput-object p1, v0, Lgnu/kawa/slib/srfi1$frame34;->elt:Ljava/lang/Object;

    iget-object v1, v0, Lgnu/kawa/slib/srfi1$frame34;->lambda$Fn33:Lgnu/expr/ModuleMethod;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p2, v2}, Lgnu/kawa/slib/srfi1;->any$V(Lgnu/mapping/Procedure;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_18

    move-object v0, p2

    goto :goto_1e

    .line 1478
    :cond_18
    iget-object v0, v0, Lgnu/kawa/slib/srfi1$frame34;->elt:Ljava/lang/Object;

    invoke-static {v0, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_1e

    .line 1476
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1471
    :pswitch_c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1476
    :pswitch_15
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1e
    .packed-switch 0x20
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.class public Lgnu/kawa/slib/srfi13$frame11;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->stringPrefixLength$V(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame11"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n614#1:614\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn28:Lgnu/expr/ModuleMethod;

.field final lambda$Fn29:Lgnu/expr/ModuleMethod;

.field maybe$Mnstarts$Plends:Lgnu/lists/LList;

.field s1:Ljava/lang/Object;

.field s2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame11;->lambda$Fn28:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x1b

    const/16 v3, 0x3003

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame11;->lambda$Fn29:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lgnu/kawa/slib/srfi13$frame11;->lambda28()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_b

    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/srfi13$frame11;->lambda29(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method lambda28()Ljava/lang/Object;
    .registers 4

    .line 614
    sget-object v0, Lgnu/kawa/slib/srfi13;->string$Mnprefix$Mnlength:Lgnu/expr/ModuleMethod;

    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame11;->s1:Ljava/lang/Object;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame11;->maybe$Mnstarts$Plends:Lgnu/lists/LList;

    invoke-static {v0, v1, v2}, Lgnu/kawa/slib/srfi13;->stringParseStart$PlEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lambda29(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "rest"    # Ljava/lang/Object;
    .param p2, "start1"    # Ljava/lang/Object;
    .param p3, "end1"    # Ljava/lang/Object;

    new-instance v0, Lgnu/kawa/slib/srfi13$frame12;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi13$frame12;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/srfi13$frame12;->staticLink:Lgnu/kawa/slib/srfi13$frame11;

    iput-object p1, v0, Lgnu/kawa/slib/srfi13$frame12;->rest:Ljava/lang/Object;

    iput-object p2, v0, Lgnu/kawa/slib/srfi13$frame12;->start1:Ljava/lang/Object;

    iput-object p3, v0, Lgnu/kawa/slib/srfi13$frame12;->end1:Ljava/lang/Object;

    .line 614
    iget-object v1, v0, Lgnu/kawa/slib/srfi13$frame12;->lambda$Fn30:Lgnu/expr/ModuleMethod;

    iget-object v0, v0, Lgnu/kawa/slib/srfi13$frame12;->lambda$Fn31:Lgnu/expr/ModuleMethod;

    invoke-static {v1, v0}, Lkawa/standard/call_with_values;->callWithValues(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1a

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

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_13

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x3

    iput p1, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 p1, 0x0

    return p1

    :cond_13
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.class public Lgnu/kawa/slib/srfi1$frame10;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->pairFoldRight$V(Lgnu/mapping/Procedure;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame10"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n884#1,6:884\n*E\n"
.end annotation


# instance fields
.field f:Lgnu/mapping/Procedure;

.field zero:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda19recur(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1, "lists"    # Ljava/lang/Object;

    .line 884
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->$PcCdrs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 885
    .local v0, "cdrs":Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lgnu/kawa/slib/srfi1$frame10;->zero:Ljava/lang/Object;

    goto :goto_2b

    .line 886
    :cond_e
    sget-object v1, Lkawa/standard/Scheme;->apply:Lgnu/kawa/functions/Apply;

    iget-object v2, p0, Lgnu/kawa/slib/srfi1$frame10;->f:Lgnu/mapping/Procedure;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v0}, Lgnu/kawa/slib/srfi1$frame10;->lambda19recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lgnu/lists/LList;->list1(Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lgnu/kawa/slib/srfi1;->append$Ex$V([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "cdrs":Ljava/lang/Object;
    :goto_2b
    return-object v1
.end method

.method public lambda20recur(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "lis"    # Ljava/lang/Object;

    .line 889
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame10;->zero:Ljava/lang/Object;

    goto :goto_1b

    :cond_b
    iget-object v0, p0, Lgnu/kawa/slib/srfi1$frame10;->f:Lgnu/mapping/Procedure;

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/slib/srfi1$frame10;->lambda20recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

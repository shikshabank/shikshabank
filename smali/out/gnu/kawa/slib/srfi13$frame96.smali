.class public Lgnu/kawa/slib/srfi13$frame96;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13;->lambda222buildit(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame96"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1856#1,2:1856\n*E\n"
.end annotation


# instance fields
.field final:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda223recur(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "lis"    # Ljava/lang/Object;

    .line 1856
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1857
    sget-object v0, Lgnu/kawa/slib/srfi13;->loc$delim:Lgnu/mapping/Location;

    :try_start_8
    invoke-virtual {v0}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_8 .. :try_end_c} :catch_25

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/kawa/slib/srfi13$frame96;->lambda223recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    goto :goto_32

    .line 1856
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame96;
    .end local p1    # "lis":Ljava/lang/Object;
    :catch_25
    move-exception p1

    const/16 v0, 0x741

    const/16 v1, 0xd

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v2, v0, v1}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1

    .restart local p1    # "lis":Ljava/lang/Object;
    :cond_30
    iget-object v0, p0, Lgnu/kawa/slib/srfi13$frame96;->final:Ljava/lang/Object;

    :goto_32
    return-object v0
.end method

.class public Lgnu/kawa/slib/srfi1$frame19;
.super Lgnu/expr/ModuleBody;
.source "srfi1.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi1;->deleteDuplicates(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame19"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi1.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi1.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi1.scm\n*L\n1250#1,5:1250\n*E\n"
.end annotation


# instance fields
.field maybe$Mn$Eq:Lgnu/mapping/Procedure;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public lambda30recur(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "lis"    # Ljava/lang/Object;

    .line 1250
    invoke-static {p1}, Lgnu/kawa/slib/srfi1;->isNullList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_9

    goto :goto_26

    .line 1251
    :cond_9
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1252
    .local v0, "x":Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    .line 1251
    .local v2, "tail":Ljava/lang/Object;
    nop

    .line 1253
    iget-object v3, p0, Lgnu/kawa/slib/srfi1$frame19;->maybe$Mn$Eq:Lgnu/mapping/Procedure;

    invoke-static {v0, v2, v3}, Lgnu/kawa/slib/srfi1;->delete(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/kawa/slib/srfi1$frame19;->lambda30recur(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v1, "new$Mntail":Ljava/lang/Object;
    move-object v1, v3

    .line 1254
    if-ne v2, v1, :cond_28

    .end local v0    # "x":Ljava/lang/Object;
    .end local v1    # "new$Mntail":Ljava/lang/Object;
    .end local v2    # "tail":Ljava/lang/Object;
    :goto_26
    move-object v3, p1

    goto :goto_2c

    .restart local v0    # "x":Ljava/lang/Object;
    .restart local v1    # "new$Mntail":Ljava/lang/Object;
    .restart local v2    # "tail":Ljava/lang/Object;
    :cond_28
    invoke-static {v0, v1}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v3

    .end local v0    # "x":Ljava/lang/Object;
    .end local v1    # "new$Mntail":Ljava/lang/Object;
    .end local v2    # "tail":Ljava/lang/Object;
    :goto_2c
    return-object v3
.end method

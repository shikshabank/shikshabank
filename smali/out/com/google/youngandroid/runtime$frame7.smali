.class public Lcom/google/youngandroid/runtime$frame7;
.super Lgnu/expr/ModuleBody;
.source "runtime1462831921990722459.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->appinventorNumber$To$String(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame7"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime1462831921990722459.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime1462831921990722459.scm\n/tmp/runtime1462831921990722459.scm\n*L\n1796#1,9:1796\n*E\n"
.end annotation


# instance fields
.field final lambda$Fn13:Lgnu/expr/ModuleMethod;

.field final lambda$Fn14:Lgnu/expr/ModuleMethod;

.field n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v4, "/tmp/runtime1462831921990722459.scm:1796"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame7;->lambda$Fn13:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0xc

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/tmp/runtime1462831921990722459.scm:1804"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame7;->lambda$Fn14:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_16

    .line 1804
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame7;->lambda14(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 1796
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame7;->lambda13(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :pswitch_data_16
    .packed-switch 0xb
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method lambda13(Ljava/lang/Object;)V
    .registers 3
    .param p1, "port"    # Ljava/lang/Object;

    .line 1796
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame7;->n:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method lambda14(Ljava/lang/Object;)V
    .registers 6
    .param p1, "port"    # Ljava/lang/Object;

    .line 1804
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame7;->n:Ljava/lang/Object;

    :try_start_2
    check-cast v0, Ljava/lang/Number;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_4} :catch_c

    invoke-static {v0}, Lkawa/lib/numbers;->exact(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .end local p0    # "this":Lcom/google/youngandroid/runtime$frame7;
    .end local p1    # "port":Ljava/lang/Object;
    :catch_c
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    const-string v3, "exact"

    invoke-direct {v1, p1, v3, v2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a

    .line 1796
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1804
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1796
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1a
    .packed-switch 0xb
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

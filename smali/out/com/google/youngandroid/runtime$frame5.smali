.class public Lcom/google/youngandroid/runtime$frame5;
.super Lgnu/expr/ModuleBody;
.source "runtime1462831921990722459.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/youngandroid/runtime;->lambda8(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame5"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nruntime1462831921990722459.scm\nScheme\n*S Scheme\n*F\n+ 1 runtime1462831921990722459.scm\n/tmp/runtime1462831921990722459.scm\n*L\n1650#1,2:1650\n*E\n"
.end annotation


# instance fields
.field arg:Ljava/lang/Object;

.field final lambda$Fn10:Lgnu/expr/ModuleMethod;

.field final lambda$Fn9:Lgnu/expr/ModuleMethod;

.field pieces:Lgnu/lists/LList;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/16 v3, 0x1001

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v4, "/tmp/runtime1462831921990722459.scm:1650"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame5;->lambda$Fn9:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x9

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/tmp/runtime1462831921990722459.scm:1651"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/youngandroid/runtime$frame5;->lambda$Fn10:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_16

    .line 1651
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame5;->lambda10(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 1650
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/google/youngandroid/runtime$frame5;->lambda9(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :pswitch_data_16
    .packed-switch 0x8
        :pswitch_10
        :pswitch_a
    .end packed-switch
.end method

.method lambda10(Ljava/lang/Object;)V
    .registers 3
    .param p1, "port"    # Ljava/lang/Object;

    .line 1651
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame5;->arg:Ljava/lang/Object;

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method lambda9(Ljava/lang/Object;)V
    .registers 3
    .param p1, "port"    # Ljava/lang/Object;

    .line 1650
    iget-object v0, p0, Lcom/google/youngandroid/runtime$frame5;->pieces:Lgnu/lists/LList;

    invoke-static {v0, p1}, Lkawa/lib/ports;->display(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a

    .line 1650
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1651
    :pswitch_c
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1650
    :pswitch_13
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1a
    .packed-switch 0x8
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

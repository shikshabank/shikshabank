.class public Lgnu/kawa/slib/srfi13$frame74;
.super Lgnu/expr/ModuleBody;
.source "srfi13.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/srfi13$frame73;->lambda168(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame74"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nsrfi13.scm\nScheme\n*S Scheme\n*F\n+ 1 srfi13.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm\n*L\n1089#1,19:1089\n*E\n"
.end annotation


# instance fields
.field ans:Ljava/lang/CharSequence;

.field cset:Ljava/lang/Object;

.field final lambda$Fn169:Lgnu/expr/ModuleMethod;

.field final lambda$Fn170:Lgnu/expr/ModuleMethod;

.field final lambda$Fn171:Lgnu/expr/ModuleMethod;

.field staticLink:Lgnu/kawa/slib/srfi13$frame73;

.field temp:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v1, 0x8e

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v0, p0, v1, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v1, "source-location"

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1089"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn169:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x8f

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v4, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1099"

    invoke-virtual {v0, v1, v4}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn170:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x90

    invoke-direct {v0, p0, v4, v2, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm:1104"

    invoke-virtual {v0, v1, v2}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/kawa/slib/srfi13$frame74;->lambda$Fn171:Lgnu/expr/ModuleMethod;

    return-void
.end method


# virtual methods
.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_1a

    .line 1104
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame74;->lambda171(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1099
    :pswitch_f
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame74;->lambda170(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1089
    :pswitch_14
    invoke-virtual {p0, p2, p3}, Lgnu/kawa/slib/srfi13$frame74;->lambda169(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_1a
    .packed-switch 0x8e
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method lambda169(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "c"    # Ljava/lang/Object;
    .param p2, "i"    # Ljava/lang/Object;

    .line 1089
    const-string v0, "string-set!"

    .line 1090
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame74;->staticLink:Lgnu/kawa/slib/srfi13$frame73;

    iget-object v2, v2, Lgnu/kawa/slib/srfi13$frame73;->criterion:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_12

    move-object v0, p2

    goto :goto_2f

    .line 1091
    :cond_12
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame74;->temp:Ljava/lang/CharSequence;

    :try_start_14
    check-cast v1, Lgnu/lists/CharSeq;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_40

    :try_start_16
    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_1d} :catch_38

    :try_start_1d
    move-object v3, p1

    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v3}, Lgnu/text/Char;->charValue()C

    move-result v0
    :try_end_24
    .catch Ljava/lang/ClassCastException; {:try_start_1d .. :try_end_24} :catch_30

    invoke-static {v1, v2, v0}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 1092
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2f
    return-object v0

    .line 1091
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame74;
    .end local p1    # "c":Ljava/lang/Object;
    .end local p2    # "i":Ljava/lang/Object;
    :catch_30
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_38
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_40
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method

.method lambda170(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "c"    # Ljava/lang/Object;
    .param p2, "i"    # Ljava/lang/Object;

    .line 1099
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v1, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_4
    invoke-virtual {v1}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_8
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_4 .. :try_end_8} :catch_1d

    iget-object v2, p0, Lgnu/kawa/slib/srfi13$frame74;->cset:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p1}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_14

    move-object v0, p2

    goto :goto_1c

    .line 1101
    :cond_14
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1c
    return-object v0

    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame74;
    .end local p1    # "c":Ljava/lang/Object;
    .end local p2    # "i":Ljava/lang/Object;
    :catch_1d
    move-exception p1

    const/16 p2, 0x44b

    const/16 v0, 0x2d

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v1, p2, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method lambda171(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "c"    # Ljava/lang/Object;
    .param p2, "i"    # Ljava/lang/Object;

    .line 1104
    const-string v0, "string-set!"

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lgnu/kawa/slib/srfi13;->loc$char$Mnset$Mncontains$Qu:Lgnu/mapping/Location;

    :try_start_6
    invoke-virtual {v2}, Lgnu/mapping/Location;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catch Lgnu/mapping/UnboundLocationException; {:try_start_6 .. :try_end_a} :catch_4c

    iget-object v3, p0, Lgnu/kawa/slib/srfi13$frame74;->cset:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, p1}, Lgnu/mapping/Procedure;->apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_16

    move-object v0, p2

    goto :goto_33

    .line 1106
    :cond_16
    iget-object v1, p0, Lgnu/kawa/slib/srfi13$frame74;->ans:Ljava/lang/CharSequence;

    :try_start_18
    check-cast v1, Lgnu/lists/CharSeq;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_44

    :try_start_1a
    move-object v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_21} :catch_3c

    :try_start_21
    move-object v3, p1

    check-cast v3, Lgnu/text/Char;

    invoke-virtual {v3}, Lgnu/text/Char;->charValue()C

    move-result v0
    :try_end_28
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_28} :catch_34

    invoke-static {v1, v2, v0}, Lkawa/lib/strings;->stringSet$Ex(Lgnu/lists/CharSeq;IC)V

    .line 1107
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/srfi13;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v0, p2, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_33
    return-object v0

    .line 1106
    .end local p0    # "this":Lgnu/kawa/slib/srfi13$frame74;
    .end local p1    # "c":Ljava/lang/Object;
    .end local p2    # "i":Ljava/lang/Object;
    :catch_34
    move-exception p2

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v0, v2, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_3c
    move-exception p1

    new-instance v1, Lgnu/mapping/WrongType;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_44
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v2, 0x1

    invoke-direct {p2, p1, v0, v2, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 1107
    :catch_4c
    move-exception p1

    const/16 p2, 0x450

    const/16 v0, 0x23

    const-string v1, "/u2/home/jis/ai2-kawa/gnu/kawa/slib/srfi13.scm"

    invoke-virtual {p1, v1, p2, v0}, Lgnu/mapping/UnboundLocationException;->setLine(Ljava/lang/String;II)V

    throw p1
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_28

    .line 1089
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 1104
    :pswitch_c
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1099
    :pswitch_15
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 1089
    :pswitch_1e
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x8e
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

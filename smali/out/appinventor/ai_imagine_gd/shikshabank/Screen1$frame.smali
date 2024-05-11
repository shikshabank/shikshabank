.class public Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;
.super Lgnu/expr/ModuleBody;
.source "Screen1.yail"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreen1.yail\nScheme\n*S Scheme\n*F\n+ 1 Screen1.yail\n/tmp/1711173653638_0.6294837320226028-0/youngandroidproject/../src/appinventor/ai_imagine_gd/shikshabank/Screen1.yail\n+ 2 runtime1462831921990722459.scm\n/tmp/runtime1462831921990722459.scm\n*L\n318#2,317:318\n*E\n"
.end annotation


# instance fields
.field $main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    return-void
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 3

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_26

    .line 542
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-static {}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda5()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_f
    invoke-static {}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda4()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_14
    invoke-static {}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda3()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_19
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->$define()V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 634
    :pswitch_21
    invoke-static {}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lambda2()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_26
    .packed-switch 0x12
        :pswitch_21
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_70

    .line 410
    :pswitch_6
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->processException(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 407
    :pswitch_13
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->sendError(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 402
    :pswitch_1b
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToFormDoAfterCreation(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 347
    :pswitch_23
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_25
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_27
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_27} :catch_33

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->isBoundInFormEnvironment(Lgnu/mapping/Symbol;)Z

    move-result p1

    if-eqz p1, :cond_30

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_32

    :cond_30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_32
    return-object p1

    :catch_33
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "is-bound-in-form-environment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 341
    :pswitch_3c
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_3e
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_3e .. :try_end_40} :catch_45

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_45
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "lookup-in-form-environment"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 328
    :pswitch_4e
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->androidLogForm(Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 321
    :pswitch_56
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_58
    check-cast p2, Landroid/os/Bundle;
    :try_end_5a
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_5a} :catch_60

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_60
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "onCreate"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 318
    :pswitch_69
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->getSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_69
        :pswitch_56
        :pswitch_4e
        :pswitch_6
        :pswitch_3c
        :pswitch_6
        :pswitch_23
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_5a

    .line 534
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_b
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupHandler(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 392
    :sswitch_12
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToGlobalVars(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 376
    :sswitch_1a
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToEvents(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 355
    :sswitch_22
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_24
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_24 .. :try_end_26} :catch_2c

    invoke-virtual {p1, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToGlobalVarEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_2c
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "add-to-global-var-environment"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 341
    :sswitch_35
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_37
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_37 .. :try_end_39} :catch_3e

    invoke-virtual {p1, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->lookupInFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "lookup-in-form-environment"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 337
    :sswitch_47
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_49
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_4b} :catch_51

    invoke-virtual {p1, p2, p3}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToFormEnvironment(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_51
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "add-to-form-environment"

    invoke-direct {p3, p1, v0, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_5a
    .sparse-switch
        0x4 -> :sswitch_47
        0x5 -> :sswitch_35
        0x8 -> :sswitch_22
        0x9 -> :sswitch_1a
        0xb -> :sswitch_12
        0x11 -> :sswitch_b
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    const-string v0, "dispatchGenericEvent"

    const-string v1, "dispatchEvent"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_7c

    .line 490
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_12
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_14
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_3b

    :try_start_16
    check-cast p3, Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_18} :catch_34

    :try_start_18
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_2d

    if-eq p4, v1, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v6, 0x0

    :goto_1e
    :try_start_1e
    check-cast p5, [Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_26

    invoke-virtual {p1, p2, p3, v6, p5}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 493
    :catch_26
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 492
    :catch_2d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 491
    :catch_34
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 490
    :catch_3b
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v6, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 429
    :sswitch_42
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    :try_start_44
    check-cast p2, Lcom/google/appinventor/components/runtime/Component;
    :try_end_46
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_46} :catch_6d

    :try_start_46
    check-cast p3, Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/ClassCastException; {:try_start_46 .. :try_end_48} :catch_66

    :try_start_48
    check-cast p4, Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/ClassCastException; {:try_start_48 .. :try_end_4a} :catch_5f

    :try_start_4a
    check-cast p5, [Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_4a .. :try_end_4c} :catch_58

    invoke-virtual {p1, p2, p3, p4, p5}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_57

    :cond_55
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_57
    return-object p1

    .line 432
    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 431
    :catch_5f
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 430
    :catch_66
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 429
    :catch_6d
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v6, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 383
    :sswitch_74
    iget-object p1, p0, Lappinventor/ai_imagine_gd/shikshabank/Screen1$frame;->$main:Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    invoke-virtual {p1, p2, p3, p4, p5}, Lappinventor/ai_imagine_gd/shikshabank/Screen1;->addToComponents(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :sswitch_data_7c
    .sparse-switch
        0xa -> :sswitch_74
        0xf -> :sswitch_42
        0x10 -> :sswitch_12
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1a

    .line 634
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 0
    :pswitch_b
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 542
    :pswitch_10
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 634
    :pswitch_15
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v1, p2, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_1a
    .packed-switch 0x12
        :pswitch_15
        :pswitch_10
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_5c

    .line 318
    :pswitch_a
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 410
    :pswitch_f
    instance-of v0, p2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 407
    :pswitch_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 402
    :pswitch_22
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 347
    :pswitch_29
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2e

    return v1

    :cond_2e
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 341
    :pswitch_35
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3a

    return v1

    :cond_3a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 328
    :pswitch_41
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 321
    :pswitch_48
    instance-of v0, p2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    if-nez v0, :cond_4d

    return v1

    :cond_4d
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 318
    :pswitch_54
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_54
        :pswitch_48
        :pswitch_41
        :pswitch_a
        :pswitch_35
        :pswitch_a
        :pswitch_29
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_22
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x2

    sparse-switch v0, :sswitch_data_54

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 534
    :sswitch_f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 392
    :sswitch_18
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 376
    :sswitch_21
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 355
    :sswitch_2a
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_2f

    return v1

    :cond_2f
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 341
    :sswitch_38
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_3d

    return v1

    :cond_3d
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 337
    :sswitch_46
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_4b

    return v1

    :cond_4b
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :sswitch_data_54
    .sparse-switch
        0x4 -> :sswitch_46
        0x5 -> :sswitch_38
        0x8 -> :sswitch_2a
        0x9 -> :sswitch_21
        0xb -> :sswitch_18
        0x11 -> :sswitch_f
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 13

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffd

    const v2, -0xbfffe

    const v3, -0xbffff

    const/4 v4, 0x0

    const/4 v5, 0x4

    sparse-switch v0, :sswitch_data_62

    .line 383
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 490
    :sswitch_15
    instance-of v0, p2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    if-nez v0, :cond_1a

    return v3

    :cond_1a
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez p2, :cond_21

    return v2

    :cond_21
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_28

    return v1

    :cond_28
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    return v4

    .line 429
    :sswitch_31
    instance-of v0, p2, Lappinventor/ai_imagine_gd/shikshabank/Screen1;

    if-nez v0, :cond_36

    return v3

    :cond_36
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lcom/google/appinventor/components/runtime/Component;

    if-nez p2, :cond_3d

    return v2

    :cond_3d
    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Ljava/lang/String;

    if-nez p2, :cond_44

    return v1

    :cond_44
    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Ljava/lang/String;

    if-nez p2, :cond_4e

    const p1, -0xbfffc

    return p1

    :cond_4e
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    return v4

    .line 383
    :sswitch_55
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v5, p6, Lgnu/mapping/CallContext;->pc:I

    return v4

    :sswitch_data_62
    .sparse-switch
        0xa -> :sswitch_55
        0xf -> :sswitch_31
        0x10 -> :sswitch_15
    .end sparse-switch
.end method

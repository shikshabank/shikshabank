.class public Lgnu/kawa/slib/genwrite$frame0;
.super Lgnu/expr/ModuleBody;
.source "genwrite.scm"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "frame0"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\ngenwrite.scm\nScheme\n*S Scheme\n*F\n+ 1 genwrite.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/genwrite.scm\n*L\n54#1,156:54\n*E\n"
.end annotation


# instance fields
.field pp$MnAND:Lgnu/mapping/Procedure;

.field pp$MnBEGIN:Lgnu/mapping/Procedure;

.field pp$MnCASE:Lgnu/mapping/Procedure;

.field pp$MnCOND:Lgnu/mapping/Procedure;

.field pp$MnDO:Lgnu/mapping/Procedure;

.field pp$MnIF:Lgnu/mapping/Procedure;

.field pp$MnLAMBDA:Lgnu/mapping/Procedure;

.field pp$MnLET:Lgnu/mapping/Procedure;

.field pp$Mnexpr:Lgnu/mapping/Procedure;

.field pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

.field staticLink:Lgnu/kawa/slib/genwrite$frame;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit20:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x2

    const/16 v3, 0x3003

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit21:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit22:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit23:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit24:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit25:Lgnu/mapping/SimpleSymbol;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit26:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit27:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit28:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0xa

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit29:Lgnu/mapping/SimpleSymbol;

    const/16 v2, 0xb

    invoke-direct {v0, p0, v2, v1, v3}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    iput-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    return-void
.end method


# virtual methods
.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_3c

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_a
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda21pp$MnDO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 186
    :pswitch_f
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda20pp$MnBEGIN(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 181
    :pswitch_14
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda19pp$MnLET(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 178
    :pswitch_19
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda18pp$MnAND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 175
    :pswitch_1e
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda17pp$MnCASE(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 172
    :pswitch_23
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda16pp$MnCOND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 169
    :pswitch_28
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda15pp$MnIF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_2d
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda14pp$MnLAMBDA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 163
    :pswitch_32
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda13ppExprList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_37
    invoke-virtual {p0, p2, p3, p4}, Lgnu/kawa/slib/genwrite$frame0;->lambda8ppExpr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_37
        :pswitch_32
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method

.method public lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "l"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;
    .param p4, "pp$Mnitem"    # Ljava/lang/Object;

    .line 111
    nop

    .line 112
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v1, "("

    invoke-virtual {v0, v1, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    .line 113
    .local v4, "col":Ljava/lang/Object;
    move-object v2, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v4    # "col":Ljava/lang/Object;
    return-object v0
.end method

.method public lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14
    .param p1, "l"    # Ljava/lang/Object;
    .param p2, "col1"    # Ljava/lang/Object;
    .param p3, "col2"    # Ljava/lang/Object;
    .param p4, "extra"    # Ljava/lang/Object;
    .param p5, "pp$Mnitem"    # Ljava/lang/Object;

    .line 115
    nop

    .line 116
    move-object v0, p1

    .local v0, "l":Ljava/lang/Object;
    const/4 v1, 0x0

    move-object v2, v1

    .local v2, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object v3, p2

    move-object v4, v3

    move-object v3, v2

    .end local v2    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v3, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v4, "col":Ljava/lang/Object;
    :goto_7
    move-object v3, p0

    .line 117
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_6c

    invoke-static {v0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 119
    sget-object v5, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v1, "rest":Ljava/lang/Object;
    move-object v1, v5

    .line 120
    invoke-static {v1}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v5, p4, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2a

    :cond_28
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    .local v2, "extra":Ljava/lang/Object;
    :goto_2a
    move-object v2, v5

    .line 121
    nop

    .line 122
    sget-object v5, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v5, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v2, p5}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v1

    goto :goto_7

    .end local v1    # "rest":Ljava/lang/Object;
    .end local v2    # "extra":Ljava/lang/Object;
    :cond_3c
    invoke-static {v0}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_4b

    .line 124
    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-virtual {v1, v2, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6b

    .line 126
    :cond_4b
    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-virtual {p0, p3, v4}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v1, v6, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p3, v5}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 129
    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v6, p4, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v0, v5, v6, p5}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_6b
    move-object v4, v1

    .line 117
    .end local v0    # "l":Ljava/lang/Object;
    .end local v3    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v4    # "col":Ljava/lang/Object;
    :cond_6c
    return-object v4
.end method

.method public lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 48
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;
    .param p4, "named$Qu"    # Ljava/lang/Object;
    .param p5, "pp$Mn1"    # Ljava/lang/Object;
    .param p6, "pp$Mn2"    # Ljava/lang/Object;
    .param p7, "pp$Mn3"    # Ljava/lang/Object;

    .line 132
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 134
    nop

    .line 142
    nop

    .line 150
    nop

    .line 134
    nop

    .line 153
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .local v2, "head":Ljava/lang/Object;
    move-object v13, v0

    .line 154
    .end local v2    # "head":Ljava/lang/Object;
    .local v13, "head":Ljava/lang/Object;
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v2, "rest":Ljava/lang/Object;
    move-object v14, v0

    .line 153
    .end local v2    # "rest":Ljava/lang/Object;
    .local v14, "rest":Ljava/lang/Object;
    nop

    .line 155
    iget-object v0, v6, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v2, "("

    invoke-virtual {v0, v2, v8}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    .local v2, "col$St":Ljava/lang/Object;
    move-object v15, v0

    .line 156
    .end local v2    # "col$St":Ljava/lang/Object;
    .local v15, "col$St":Ljava/lang/Object;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_3c

    invoke-static {v14}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    goto :goto_40

    :cond_3c
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v10, v0, :cond_81

    .line 157
    :goto_40
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v1

    .line 158
    .local v0, "name":Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v14}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    .line 157
    .local v2, "rest":Ljava/lang/Object;
    nop

    .line 159
    iget-object v3, v6, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v4, " "

    invoke-virtual {v3, v4, v15}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    .line 160
    .local v3, "col$St$St":Ljava/lang/Object;
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 194
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    invoke-virtual {v4, v8, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 160
    sget-object v5, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v5, v3, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 134
    nop

    .local v4, "col1":Ljava/lang/Object;
    move-object v5, v2

    .local v5, "rest":Ljava/lang/Object;
    move-object/from16 v17, v3

    .local v17, "col2":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v1, "col3":Ljava/lang/Object;
    move-object/from16 v18, v16

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v4, v5

    move-object/from16 v17, v0

    move-object v5, v1

    move-object/from16 v0, v18

    move-object/from16 v18, v2

    .local v18, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    goto :goto_a6

    .line 161
    .end local v0    # "name":Ljava/lang/Object;
    .end local v1    # "col3":Ljava/lang/Object;
    .end local v2    # "rest":Ljava/lang/Object;
    .end local v3    # "col$St$St":Ljava/lang/Object;
    .end local v4    # "col1":Ljava/lang/Object;
    .end local v5    # "rest":Ljava/lang/Object;
    .end local v17    # "col2":Ljava/lang/Object;
    .end local v18    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :cond_81
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    .line 194
    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit19:Lgnu/math/IntNum;

    invoke-virtual {v0, v8, v1}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v1, v15, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1    # "col3":Ljava/lang/Object;
    move-object v4, v0

    .restart local v4    # "col1":Ljava/lang/Object;
    move-object v5, v14

    const/4 v0, 0x0

    .restart local v5    # "rest":Ljava/lang/Object;
    move-object v2, v0

    .restart local v2    # "rest":Ljava/lang/Object;
    move-object v3, v0

    .restart local v3    # "col$St$St":Ljava/lang/Object;
    move-object/from16 v17, v0

    .local v17, "name":Ljava/lang/Object;
    move-object/from16 v18, v15

    .local v18, "col2":Ljava/lang/Object;
    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object v4, v5

    move-object v5, v1

    move-object/from16 v19, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v2

    .line 134
    .end local v1    # "col3":Ljava/lang/Object;
    .end local v2    # "rest":Ljava/lang/Object;
    .local v0, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v3, "col2":Ljava/lang/Object;
    .local v4, "rest":Ljava/lang/Object;
    .local v5, "col3":Ljava/lang/Object;
    .local v18, "rest":Ljava/lang/Object;
    .local v19, "col$St$St":Ljava/lang/Object;
    .local v20, "col1":Ljava/lang/Object;
    :goto_a6
    move-object/from16 v21, p0

    .line 135
    .end local v0    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v21, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v0, :cond_b6

    invoke-static {v4}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    goto :goto_ba

    :cond_b3
    const/16 v16, 0x0

    goto :goto_104

    :cond_b6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v11, v0, :cond_102

    .line 136
    :goto_ba
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 137
    .local v0, "val1":Ljava/lang/Object;
    sget-object v2, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v2, v4}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v1

    .line 136
    .restart local v2    # "rest":Ljava/lang/Object;
    nop

    .line 138
    invoke-static {v2}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_db

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v1, v9, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v7, 0x0

    goto :goto_de

    :cond_db
    move-object v7, v1

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    :goto_de
    move-object/from16 v16, v7

    .line 139
    .local v1, "extra":Ljava/lang/Object;
    invoke-virtual {v6, v5, v3}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v0, v7, v1, v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 142
    move-object/from16 v22, v5

    .local v22, "col3":Ljava/lang/Object;
    const/16 v16, 0x0

    .local v7, "col2":Ljava/lang/Object;
    move-object/from16 v23, v16

    .local v23, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v24, v20

    .local v24, "col1":Ljava/lang/Object;
    move-object/from16 v25, v2

    move-object/from16 v38, v7

    move-object v7, v0

    move-object/from16 v0, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v38

    move-object/from16 v39, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v39

    .local v25, "rest":Ljava/lang/Object;
    goto :goto_122

    .line 135
    .end local v0    # "val1":Ljava/lang/Object;
    .end local v1    # "extra":Ljava/lang/Object;
    .end local v2    # "rest":Ljava/lang/Object;
    .end local v7    # "col2":Ljava/lang/Object;
    .end local v22    # "col3":Ljava/lang/Object;
    .end local v23    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v24    # "col1":Ljava/lang/Object;
    .end local v25    # "rest":Ljava/lang/Object;
    :cond_102
    const/16 v16, 0x0

    .line 140
    :goto_104
    move-object/from16 v22, v5

    .restart local v22    # "col3":Ljava/lang/Object;
    move-object v7, v3

    .restart local v7    # "col2":Ljava/lang/Object;
    move-object/from16 v23, v16

    .restart local v23    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v0, v16

    .restart local v0    # "val1":Ljava/lang/Object;
    move-object/from16 v24, v20

    .restart local v24    # "col1":Ljava/lang/Object;
    move-object/from16 v2, v16

    .restart local v2    # "rest":Ljava/lang/Object;
    move-object/from16 v25, v4

    .restart local v25    # "rest":Ljava/lang/Object;
    move-object/from16 v1, v16

    move-object/from16 v38, v7

    move-object v7, v0

    move-object/from16 v0, v23

    move-object/from16 v23, v2

    move-object/from16 v2, v38

    move-object/from16 v39, v22

    move-object/from16 v22, v1

    move-object/from16 v1, v39

    .line 142
    .local v0, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v1, "col3":Ljava/lang/Object;
    .local v2, "col2":Ljava/lang/Object;
    .local v7, "val1":Ljava/lang/Object;
    .local v22, "extra":Ljava/lang/Object;
    .local v23, "rest":Ljava/lang/Object;
    :goto_122
    move-object/from16 v26, p0

    .line 143
    .end local v0    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v26, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v0, :cond_13d

    invoke-static/range {v25 .. v25}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    goto :goto_141

    :cond_12f
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v27, v7

    move-object/from16 v7, v25

    const/16 v16, 0x0

    move-object/from16 v25, v3

    goto/16 :goto_19d

    :cond_13d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v12, v0, :cond_191

    .line 144
    :goto_141
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    move-object/from16 v27, v7

    move-object/from16 v7, v25

    .end local v25    # "rest":Ljava/lang/Object;
    .local v7, "rest":Ljava/lang/Object;
    .local v27, "val1":Ljava/lang/Object;
    invoke-virtual {v0, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/16 v16, 0x0

    move-object/from16 v25, v16

    .line 145
    .local v0, "val1":Ljava/lang/Object;
    move-object/from16 v25, v3

    .end local v3    # "col2":Ljava/lang/Object;
    .local v25, "col2":Ljava/lang/Object;
    sget-object v3, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v7}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v28, v16

    .line 144
    .local v3, "rest":Ljava/lang/Object;
    nop

    .line 146
    invoke-static {v3}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16d

    move-object/from16 v28, v4

    .end local v4    # "rest":Ljava/lang/Object;
    .local v28, "rest":Ljava/lang/Object;
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    move-object/from16 v29, v5

    .end local v5    # "col3":Ljava/lang/Object;
    .local v29, "col3":Ljava/lang/Object;
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v4, v9, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_173

    .end local v28    # "rest":Ljava/lang/Object;
    .end local v29    # "col3":Ljava/lang/Object;
    .restart local v4    # "rest":Ljava/lang/Object;
    .restart local v5    # "col3":Ljava/lang/Object;
    :cond_16d
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    .end local v4    # "rest":Ljava/lang/Object;
    .end local v5    # "col3":Ljava/lang/Object;
    .restart local v28    # "rest":Ljava/lang/Object;
    .restart local v29    # "col3":Ljava/lang/Object;
    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    :goto_173
    move-object/from16 v5, v16

    .line 147
    .local v4, "extra":Ljava/lang/Object;
    invoke-virtual {v6, v1, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v0, v5, v4, v12}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 150
    nop

    .local v16, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v30, v3

    .local v30, "rest":Ljava/lang/Object;
    move-object/from16 v31, v24

    .local v31, "col1":Ljava/lang/Object;
    move-object/from16 v32, v5

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v31, v4

    move-object/from16 v38, v16

    move-object/from16 v16, v0

    move-object/from16 v0, v38

    .local v5, "col2":Ljava/lang/Object;
    goto :goto_1b7

    .line 143
    .end local v0    # "val1":Ljava/lang/Object;
    .end local v16    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v27    # "val1":Ljava/lang/Object;
    .end local v28    # "rest":Ljava/lang/Object;
    .end local v29    # "col3":Ljava/lang/Object;
    .end local v30    # "rest":Ljava/lang/Object;
    .end local v31    # "col1":Ljava/lang/Object;
    .local v3, "col2":Ljava/lang/Object;
    .local v4, "rest":Ljava/lang/Object;
    .local v5, "col3":Ljava/lang/Object;
    .local v7, "val1":Ljava/lang/Object;
    .local v25, "rest":Ljava/lang/Object;
    :cond_191
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object/from16 v27, v7

    move-object/from16 v7, v25

    const/16 v16, 0x0

    move-object/from16 v25, v3

    .line 148
    .end local v3    # "col2":Ljava/lang/Object;
    .end local v4    # "rest":Ljava/lang/Object;
    .end local v5    # "col3":Ljava/lang/Object;
    .local v7, "rest":Ljava/lang/Object;
    .local v25, "col2":Ljava/lang/Object;
    .restart local v27    # "val1":Ljava/lang/Object;
    .restart local v28    # "rest":Ljava/lang/Object;
    .restart local v29    # "col3":Ljava/lang/Object;
    :goto_19d
    move-object/from16 v0, v16

    .local v0, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v4, v16

    .local v4, "extra":Ljava/lang/Object;
    move-object/from16 v30, v7

    .restart local v30    # "rest":Ljava/lang/Object;
    move-object/from16 v3, v16

    .local v3, "rest":Ljava/lang/Object;
    move-object/from16 v5, v16

    .local v5, "val1":Ljava/lang/Object;
    move-object/from16 v31, v24

    .restart local v31    # "col1":Ljava/lang/Object;
    move-object/from16 v16, v2

    move-object/from16 v32, v16

    move-object/from16 v33, v30

    move-object/from16 v34, v31

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move-object/from16 v16, v5

    .line 150
    .end local v3    # "rest":Ljava/lang/Object;
    .end local v4    # "extra":Ljava/lang/Object;
    .end local v5    # "val1":Ljava/lang/Object;
    .local v16, "val1":Ljava/lang/Object;
    .local v31, "extra":Ljava/lang/Object;
    .local v32, "col2":Ljava/lang/Object;
    .local v33, "rest":Ljava/lang/Object;
    .local v34, "col1":Ljava/lang/Object;
    :goto_1b7
    move-object/from16 v35, p0

    .line 151
    .end local v0    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v35, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object/from16 v0, p0

    move-object/from16 v36, v1

    .end local v1    # "col3":Ljava/lang/Object;
    .local v36, "col3":Ljava/lang/Object;
    move-object/from16 v1, v33

    move-object/from16 v37, v2

    .end local v2    # "col2":Ljava/lang/Object;
    .local v37, "col2":Ljava/lang/Object;
    move-object/from16 v2, v32

    move-object/from16 v3, v34

    move-object/from16 v4, p3

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .end local v7    # "rest":Ljava/lang/Object;
    .end local v16    # "val1":Ljava/lang/Object;
    .end local v22    # "extra":Ljava/lang/Object;
    .end local v23    # "rest":Ljava/lang/Object;
    .end local v24    # "col1":Ljava/lang/Object;
    .end local v26    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v27    # "val1":Ljava/lang/Object;
    .end local v30    # "rest":Ljava/lang/Object;
    .end local v31    # "extra":Ljava/lang/Object;
    .end local v32    # "col2":Ljava/lang/Object;
    .end local v33    # "rest":Ljava/lang/Object;
    .end local v34    # "col1":Ljava/lang/Object;
    .end local v35    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v36    # "col3":Ljava/lang/Object;
    .end local v37    # "col2":Ljava/lang/Object;
    nop

    .line 140
    .end local v17    # "name":Ljava/lang/Object;
    .end local v18    # "rest":Ljava/lang/Object;
    .end local v19    # "col$St$St":Ljava/lang/Object;
    .end local v20    # "col1":Ljava/lang/Object;
    .end local v21    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v25    # "col2":Ljava/lang/Object;
    .end local v28    # "rest":Ljava/lang/Object;
    .end local v29    # "col3":Ljava/lang/Object;
    nop

    .line 161
    .end local v13    # "head":Ljava/lang/Object;
    .end local v14    # "rest":Ljava/lang/Object;
    .end local v15    # "col$St":Ljava/lang/Object;
    return-object v0
.end method

.method public lambda13ppExprList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "l"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 163
    nop

    .line 164
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda14pp$MnLAMBDA(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 166
    nop

    .line 167
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda15pp$MnIF(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 169
    nop

    .line 170
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda16pp$MnCOND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 172
    nop

    .line 173
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda17pp$MnCASE(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 175
    nop

    .line 176
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v5, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda18pp$MnAND(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 178
    nop

    .line 179
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v0}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda19pp$MnLET(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 181
    nop

    .line 182
    sget-object v0, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 183
    .local v0, "rest":Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .local v1, "x":Z
    if-eqz v1, :cond_1d

    sget-object v3, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v3, v0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v3

    move v1, v2

    move v1, v3

    .local v1, "named$Qu":Z
    nop

    .line 184
    :cond_1d
    if-eqz v1, :cond_22

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_24

    :cond_22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_24
    move-object v7, v2

    iget-object v8, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v10, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v10}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "rest":Ljava/lang/Object;
    .end local v1    # "named$Qu":Z
    return-object v0
.end method

.method public lambda20pp$MnBEGIN(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 186
    nop

    .line 187
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda21pp$MnDO(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 189
    nop

    .line 190
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v6, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr$Mnlist:Lgnu/mapping/Procedure;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lambda6indent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1, "to"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;

    .line 61
    nop

    .line 62
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v0, :cond_7e

    sget-object v0, Lkawa/standard/Scheme;->numLss:Lgnu/kawa/functions/NumberCompare;

    .line 63
    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    .line 64
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const/4 v1, 0x1

    sget-object v3, Lgnu/kawa/slib/genwrite;->Lit0:Lgnu/text/Char;

    invoke-static {v1, v3}, Lkawa/lib/strings;->makeString(ILjava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v2

    .local v0, "x":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_7c

    sget-object v1, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    .line 54
    move-object v3, p1

    .local v1, "col":Ljava/lang/Object;
    .local v2, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .local v3, "n":Ljava/lang/Object;
    goto :goto_33

    .line 65
    .end local v0    # "x":Ljava/lang/Object;
    .end local v1    # "col":Ljava/lang/Object;
    .end local v2    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v3    # "n":Ljava/lang/Object;
    :cond_26
    sget-object v0, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    invoke-virtual {v0, p1, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "n":Ljava/lang/Object;
    move-object v0, v2

    .local v0, "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    move-object v1, v2

    .local v1, "x":Ljava/lang/Object;
    move-object v2, p2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    .line 54
    .local v0, "x":Ljava/lang/Object;
    .local v1, "col":Ljava/lang/Object;
    .restart local v2    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    :goto_33
    move-object v2, p0

    .line 55
    sget-object v4, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v4, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_7b

    .line 56
    sget-object v4, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit15:Lgnu/math/IntNum;

    invoke-virtual {v4, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "        "

    if-eq v4, v5, :cond_5d

    .line 57
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit16:Lgnu/math/IntNum;

    invoke-virtual {v4, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-virtual {v4, v6, v1}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_33

    .line 58
    :cond_5d
    iget-object v4, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const/4 v5, 0x0

    :try_start_60
    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7
    :try_end_67
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_67} :catch_71

    invoke-static {v6, v5, v7}, Lkawa/lib/strings;->substring(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    goto :goto_7b

    .end local v0    # "x":Ljava/lang/Object;
    .end local v1    # "col":Ljava/lang/Object;
    .end local v2    # "closureEnv":Lgnu/kawa/slib/genwrite$frame0;
    .end local v3    # "n":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    .end local p1    # "to":Ljava/lang/Object;
    .end local p2    # "col":Ljava/lang/Object;
    :catch_71
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 v0, 0x3

    const-string v1, "substring"

    invoke-direct {p2, p1, v1, v0, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 55
    .restart local v0    # "x":Ljava/lang/Object;
    .restart local p1    # "to":Ljava/lang/Object;
    .restart local p2    # "col":Ljava/lang/Object;
    :cond_7b
    :goto_7b
    move-object v0, v1

    .line 64
    .end local v0    # "x":Ljava/lang/Object;
    :cond_7c
    nop

    .line 65
    goto :goto_7f

    .line 62
    :cond_7e
    move-object v0, p2

    :goto_7f
    return-object v0
.end method

.method public lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;
    .param p4, "pp$Mnpair"    # Ljava/lang/Object;

    .line 67
    new-instance v0, Lgnu/kawa/slib/genwrite$frame1;

    invoke-direct {v0}, Lgnu/kawa/slib/genwrite$frame1;-><init>()V

    iput-object p0, v0, Lgnu/kawa/slib/genwrite$frame1;->staticLink:Lgnu/kawa/slib/genwrite$frame0;

    .line 68
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .local v1, "x":Z
    if-eqz v1, :cond_12

    if-eqz v1, :cond_96

    goto :goto_18

    :cond_12
    invoke-static {p1}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 69
    .end local v1    # "x":Z
    :goto_18
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    .line 70
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    sget-object v6, Lgnu/kawa/functions/AddOp;->$Mn:Lgnu/kawa/functions/AddOp;

    iget-object v7, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v7, v7, Lgnu/kawa/slib/genwrite$frame;->width:Ljava/lang/Object;

    invoke-virtual {v6, v7, p2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v4, v5, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit18:Lgnu/math/IntNum;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Lkawa/lib/numbers;->min([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lgnu/kawa/slib/genwrite$frame1;->left:Ljava/lang/Object;

    iput-object v1, v0, Lgnu/kawa/slib/genwrite$frame1;->result:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v1, v1, Lgnu/kawa/slib/genwrite$frame;->display$Qu:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, v0, Lgnu/kawa/slib/genwrite$frame1;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    invoke-static {p1, v1, v2, v3}, Lgnu/kawa/slib/genwrite;->genericWrite(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkawa/standard/Scheme;->numGrt:Lgnu/kawa/functions/NumberCompare;

    .line 76
    iget-object v2, v0, Lgnu/kawa/slib/genwrite$frame1;->left:Ljava/lang/Object;

    sget-object v3, Lgnu/kawa/slib/genwrite;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v1, v2, v3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_6a

    .line 77
    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    iget-object v0, v0, Lgnu/kawa/slib/genwrite$frame1;->result:Ljava/lang/Object;

    invoke-static {v0}, Lgnu/kawa/slib/genwrite;->reverseStringAppend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8c

    .line 78
    :cond_6a
    invoke-static {p1}, Lkawa/lib/lists;->isPair(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 79
    sget-object v0, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v0, p4, p1, p2, p3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8c

    .line 80
    :cond_77
    :try_start_77
    move-object v0, p1

    check-cast v0, Lgnu/lists/FVector;
    :try_end_7a
    .catch Ljava/lang/ClassCastException; {:try_start_77 .. :try_end_7a} :catch_8d

    invoke-static {v0}, Lkawa/lib/vectors;->vector$To$List(Lgnu/lists/FVector;)Lgnu/lists/LList;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v2, "#"

    invoke-virtual {v1, v2, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, v0, v1, p3, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8c
    goto :goto_9c

    .end local p0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    .end local p1    # "obj":Ljava/lang/Object;
    .end local p2    # "col":Ljava/lang/Object;
    .end local p3    # "extra":Ljava/lang/Object;
    .end local p4    # "pp$Mnpair":Ljava/lang/Object;
    :catch_8d
    move-exception p2

    new-instance p3, Lgnu/mapping/WrongType;

    const-string p4, "vector->list"

    invoke-direct {p3, p2, p4, v4, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 81
    .restart local p1    # "obj":Ljava/lang/Object;
    .restart local p2    # "col":Ljava/lang/Object;
    .restart local p3    # "extra":Ljava/lang/Object;
    .restart local p4    # "pp$Mnpair":Ljava/lang/Object;
    :cond_96
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-virtual {v0, p1, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_9c
    return-object v0
.end method

.method public lambda8ppExpr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;

    .line 83
    nop

    .line 84
    invoke-static {p1}, Lgnu/kawa/slib/genwrite$frame;->lambda1isReadMacro(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_1f

    .line 85
    invoke-static {p1}, Lgnu/kawa/slib/genwrite$frame;->lambda2readMacroBody(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    invoke-static {p1}, Lgnu/kawa/slib/genwrite$frame;->lambda3readMacroPrefix(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, v0, v1, p3, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda7pr(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_149

    .line 89
    :cond_1f
    sget-object v0, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v0, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 90
    .local v0, "head":Ljava/lang/Object;
    invoke-static {v0}, Lkawa/lib/misc;->isSymbol(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    .line 91
    nop

    .line 200
    move-object v2, v0

    .line 201
    .local v2, "head":Ljava/lang/Object;
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    .local v3, "x":Ljava/lang/Object;
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_41

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_75

    goto :goto_71

    :cond_41
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    .local v4, "x":Ljava/lang/Object;
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_53

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_75

    goto :goto_71

    :cond_53
    sget-object v5, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v6, Lgnu/kawa/slib/genwrite;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v5, v2, v6}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    .local v5, "x":Ljava/lang/Object;
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_65

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_75

    goto :goto_71

    :cond_65
    sget-object v6, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v7, Lgnu/kawa/slib/genwrite;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v6, v2, v7}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_75

    .line 202
    .end local v3    # "x":Ljava/lang/Object;
    .end local v4    # "x":Ljava/lang/Object;
    .end local v5    # "x":Ljava/lang/Object;
    :goto_71
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLAMBDA:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .local v1, "proc":Ljava/lang/Object;
    goto/16 :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_75
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v3    # "x":Ljava/lang/Object;
    move-object v3, v4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_87

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_97

    goto :goto_93

    :cond_87
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_97

    .line 203
    .end local v3    # "x":Ljava/lang/Object;
    :goto_93
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnIF:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    goto/16 :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_97
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_a6

    .line 204
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCOND:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    goto :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_a6
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_b5

    .line 205
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnCASE:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    goto :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_b5
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit10:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v3    # "x":Ljava/lang/Object;
    move-object v3, v4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_c7

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_d6

    goto :goto_d3

    :cond_c7
    sget-object v4, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    sget-object v5, Lgnu/kawa/slib/genwrite;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v4, v2, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v4, v5, :cond_d6

    .line 206
    .end local v3    # "x":Ljava/lang/Object;
    :goto_d3
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnAND:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    goto :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_d6
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_e5

    .line 207
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnLET:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    goto :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_e5
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_f4

    .line 208
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnBEGIN:Lgnu/mapping/Procedure;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    goto :goto_105

    .end local v1    # "proc":Ljava/lang/Object;
    .restart local v2    # "head":Ljava/lang/Object;
    :cond_f4
    sget-object v3, Lkawa/standard/Scheme;->isEqv:Lgnu/kawa/functions/IsEqv;

    .line 201
    sget-object v4, Lgnu/kawa/slib/genwrite;->Lit14:Lgnu/mapping/SimpleSymbol;

    invoke-virtual {v3, v2, v4}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v3, v4, :cond_103

    .line 209
    iget-object v3, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$MnDO:Lgnu/mapping/Procedure;

    goto :goto_105

    :cond_103
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .end local v2    # "head":Ljava/lang/Object;
    .restart local v1    # "proc":Ljava/lang/Object;
    :goto_105
    move-object v1, v3

    .line 92
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v1, v2, :cond_111

    .line 93
    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2, v1, p1, p2, p3}, Lgnu/mapping/Procedure;->apply4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_136

    .line 94
    :cond_111
    :try_start_111
    move-object v2, v0

    check-cast v2, Lgnu/mapping/Symbol;
    :try_end_114
    .catch Ljava/lang/ClassCastException; {:try_start_111 .. :try_end_114} :catch_138

    invoke-static {v2}, Lkawa/lib/misc;->symbol$To$String(Lgnu/mapping/Symbol;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkawa/lib/strings;->stringLength(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_130

    .line 96
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v11, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v4 .. v11}, Lgnu/kawa/slib/genwrite$frame0;->lambda12ppGeneral(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_136

    .line 97
    :cond_130
    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v2}, Lgnu/kawa/slib/genwrite$frame0;->lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v1    # "proc":Ljava/lang/Object;
    :goto_136
    move-object v0, v2

    goto :goto_149

    .line 94
    .end local v0    # "head":Ljava/lang/Object;
    .end local p0    # "this":Lgnu/kawa/slib/genwrite$frame0;
    .end local p1    # "expr":Ljava/lang/Object;
    .end local p2    # "col":Ljava/lang/Object;
    .end local p3    # "extra":Ljava/lang/Object;
    :catch_138
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    const-string v1, "symbol->string"

    invoke-direct {p2, p1, v1, p3, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 98
    .restart local v0    # "head":Ljava/lang/Object;
    .restart local p1    # "expr":Ljava/lang/Object;
    .restart local p2    # "col":Ljava/lang/Object;
    .restart local p3    # "extra":Ljava/lang/Object;
    :cond_142
    iget-object v1, p0, Lgnu/kawa/slib/genwrite$frame0;->pp$Mnexpr:Lgnu/mapping/Procedure;

    invoke-virtual {p0, p1, p2, p3, v1}, Lgnu/kawa/slib/genwrite$frame0;->lambda10ppList(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "head":Ljava/lang/Object;
    :goto_149
    return-object v0
.end method

.method public lambda9ppCall(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p1, "expr"    # Ljava/lang/Object;
    .param p2, "col"    # Ljava/lang/Object;
    .param p3, "extra"    # Ljava/lang/Object;
    .param p4, "pp$Mnitem"    # Ljava/lang/Object;

    .line 103
    nop

    .line 104
    iget-object v0, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    sget-object v1, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lgnu/kawa/slib/genwrite$frame0;->staticLink:Lgnu/kawa/slib/genwrite$frame;

    const-string v3, "("

    invoke-virtual {v2, v3, p2}, Lgnu/kawa/slib/genwrite$frame;->lambda4out(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgnu/kawa/slib/genwrite$frame;->lambda5wr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 105
    .local v0, "col$St":Ljava/lang/Object;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_31

    sget-object v1, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    .line 106
    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v2, Lgnu/kawa/slib/genwrite;->Lit17:Lgnu/math/IntNum;

    invoke-virtual {v1, v0, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, p0

    move-object v4, v0

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lgnu/kawa/slib/genwrite$frame0;->lambda11ppDown(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_32

    .line 105
    :cond_31
    move-object v1, p2

    .end local v0    # "col$St":Ljava/lang/Object;
    :goto_32
    return-object v1
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 9

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_7a

    .line 83
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 189
    :pswitch_c
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 186
    :pswitch_17
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 181
    :pswitch_22
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 178
    :pswitch_2d
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 175
    :pswitch_38
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 172
    :pswitch_43
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 169
    :pswitch_4e
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 166
    :pswitch_59
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 163
    :pswitch_64
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    .line 83
    :pswitch_6f
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    return v1

    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_6f
        :pswitch_64
        :pswitch_59
        :pswitch_4e
        :pswitch_43
        :pswitch_38
        :pswitch_2d
        :pswitch_22
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method

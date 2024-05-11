.class public Lgnu/expr/LitTable;
.super Ljava/lang/Object;
.source "LitTable.java"

# interfaces
.implements Ljava/io/ObjectOutput;


# static fields
.field static staticTable:Lgnu/mapping/Table2D;


# instance fields
.field comp:Lgnu/expr/Compilation;

.field literalTable:Ljava/util/IdentityHashMap;

.field literalsChain:Lgnu/expr/Literal;

.field literalsCount:I

.field mainClass:Lgnu/bytecode/ClassType;

.field stackPointer:I

.field typeStack:[Lgnu/bytecode/Type;

.field valueStack:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lgnu/mapping/Table2D;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgnu/mapping/Table2D;-><init>(I)V

    sput-object v0, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    return-void
.end method

.method public constructor <init>(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/IdentityHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 82
    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 83
    new-array v0, v0, [Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 47
    iput-object p1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    .line 48
    iget-object v0, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LitTable;->mainClass:Lgnu/bytecode/ClassType;

    .line 49
    return-void
.end method

.method private store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V
    .registers 5
    .param p1, "literal"    # Lgnu/expr/Literal;
    .param p2, "ignore"    # Z
    .param p3, "code"    # Lgnu/bytecode/CodeAttr;

    .line 528
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_10

    .line 530
    if-nez p2, :cond_b

    .line 531
    iget-object v0, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 532
    :cond_b
    iget-object v0, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {p3, v0}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 534
    :cond_10
    iget v0, p1, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Lgnu/expr/Literal;->flags:I

    .line 535
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 113
    return-void
.end method

.method public emit()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .local v0, "init":Lgnu/expr/Literal;
    :goto_2
    if-eqz v0, :cond_c

    .line 67
    iget-object v1, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 65
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_2

    .line 71
    .end local v0    # "init":Lgnu/expr/Literal;
    :cond_c
    iget-object v0, p0, Lgnu/expr/LitTable;->literalsChain:Lgnu/expr/Literal;

    .restart local v0    # "init":Lgnu/expr/Literal;
    :goto_e
    if-eqz v0, :cond_17

    .line 74
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 72
    iget-object v0, v0, Lgnu/expr/Literal;->next:Lgnu/expr/Literal;

    goto :goto_e

    .line 78
    .end local v0    # "init":Lgnu/expr/Literal;
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lgnu/expr/LitTable;->literalsCount:I

    .line 80
    return-void
.end method

.method emit(Lgnu/expr/Literal;Z)V
    .registers 13
    .param p1, "literal"    # Lgnu/expr/Literal;
    .param p2, "ignore"    # Z

    .line 539
    iget-object v0, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 540
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-nez v1, :cond_11

    .line 542
    if-nez p2, :cond_1db

    .line 543
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitPushNull()V

    goto/16 :goto_1db

    .line 545
    :cond_11
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 547
    if-nez p2, :cond_1db

    .line 548
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushString(Ljava/lang/String;)V

    goto/16 :goto_1db

    .line 550
    :cond_24
    iget v1, p1, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_33

    .line 552
    if-nez p2, :cond_1db

    .line 553
    iget-object v1, p1, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto/16 :goto_1db

    .line 555
    :cond_33
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_6d

    .line 557
    iget-object v1, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    array-length v1, v1

    .line 558
    .local v1, "len":I
    iget-object v3, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v3, Lgnu/bytecode/ArrayType;

    invoke-virtual {v3}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 559
    .local v3, "elementType":Lgnu/bytecode/Type;
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 560
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 561
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 562
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v1, :cond_6b

    .line 564
    iget-object v5, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v5, v5, v4

    check-cast v5, Lgnu/expr/Literal;

    .line 565
    .local v5, "el":Lgnu/expr/Literal;
    iget-object v6, v5, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-nez v6, :cond_5c

    .line 566
    goto :goto_68

    .line 567
    :cond_5c
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 568
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 569
    invoke-virtual {p0, v5, v2}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    .line 570
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 562
    .end local v5    # "el":Lgnu/expr/Literal;
    :goto_68
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 572
    .end local v1    # "len":I
    .end local v3    # "elementType":Lgnu/bytecode/Type;
    .end local v4    # "i":I
    :cond_6b
    goto/16 :goto_1db

    .line 573
    :cond_6d
    iget-object v1, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v1, v1, Lgnu/bytecode/ArrayType;

    if-eqz v1, :cond_81

    .line 575
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    iget-object v2, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v2, Lgnu/bytecode/ArrayType;

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushPrimArray(Ljava/lang/Object;Lgnu/bytecode/ArrayType;)V

    .line 576
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    goto/16 :goto_1db

    .line 578
    :cond_81
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v1, :cond_e1

    .line 580
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 581
    .local v1, "clas":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 583
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "cname":Ljava/lang/String;
    const-string v5, "int"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 585
    const-string v4, "integer"

    .line 586
    :cond_a0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "java.lang."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    .end local v4    # "cname":Ljava/lang/String;
    .local v2, "cname":Ljava/lang/String;
    invoke-static {v2}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v3

    const-string v4, "TYPE"

    invoke-virtual {v3, v4}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 590
    .end local v2    # "cname":Ljava/lang/String;
    goto :goto_dc

    .line 592
    :cond_d1
    iget-object v2, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ObjectType;

    invoke-virtual {v2, v3}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 593
    :goto_dc
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 594
    .end local v1    # "clas":Ljava/lang/Class;
    goto/16 :goto_1db

    .line 595
    :cond_e1
    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v1, v1, Lgnu/bytecode/ClassType;

    const-string v4, "valueOf"

    if-eqz v1, :cond_119

    iget-object v1, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v1, Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->isExisting()Z

    move-result v1

    if-nez v1, :cond_119

    .line 601
    iget-object v1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-object v2, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    check-cast v2, Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v2}, Lgnu/expr/Compilation;->loadClassRef(Lgnu/bytecode/ObjectType;)V

    .line 602
    sget-object v1, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 603
    .local v1, "meth":Lgnu/bytecode/Method;
    if-nez v1, :cond_10c

    .line 604
    sget-object v2, Lgnu/expr/Compilation;->typeType:Lgnu/bytecode/ClassType;

    const-string v4, "make"

    invoke-virtual {v2, v4, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    .line 605
    :cond_10c
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 606
    sget-object v2, Lgnu/expr/Compilation;->typeClassType:Lgnu/bytecode/ClassType;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitCheckcast(Lgnu/bytecode/Type;)V

    .line 607
    invoke-direct {p0, p1, p2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 608
    .end local v1    # "meth":Lgnu/bytecode/Method;
    goto/16 :goto_1db

    .line 611
    :cond_119
    iget-object v1, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 612
    .local v1, "type":Lgnu/bytecode/ClassType;
    iget v5, p1, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_125

    const/4 v5, 0x1

    goto :goto_126

    :cond_125
    const/4 v5, 0x0

    .line 613
    .local v5, "useDefaultInit":Z
    :goto_126
    const/4 v6, 0x0

    .line 614
    .local v6, "method":Lgnu/bytecode/Method;
    const/4 v7, 0x0

    .line 615
    .local v7, "makeStatic":Z
    const-string v8, "<init>"

    if-nez v5, :cond_15d

    .line 620
    iget-object v9, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Lgnu/mapping/Symbol;

    if-nez v9, :cond_136

    .line 621
    invoke-virtual {p0, v1, v4, p1, v3}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v6

    .line 622
    :cond_136
    if-nez v6, :cond_14c

    iget-object v4, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v4, v4, Lgnu/mapping/Values;

    if-nez v4, :cond_14c

    .line 626
    const-string v4, "make"

    .line 628
    .local v4, "mname":Ljava/lang/String;
    iget-object v9, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v9, v9, Ljava/util/regex/Pattern;

    if-eqz v9, :cond_148

    .line 629
    const-string v4, "compile"

    .line 631
    :cond_148
    invoke-virtual {p0, v1, v4, p1, v3}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v6

    .line 634
    .end local v4    # "mname":Ljava/lang/String;
    :cond_14c
    if-eqz v6, :cond_150

    .line 635
    const/4 v7, 0x1

    goto :goto_15a

    .line 636
    :cond_150
    iget-object v4, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-lez v4, :cond_15a

    .line 637
    invoke-virtual {p0, v1, v8, p1, v2}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v4

    move-object v6, v4

    .line 639
    :cond_15a
    :goto_15a
    if-nez v6, :cond_15d

    .line 640
    const/4 v5, 0x1

    .line 642
    :cond_15d
    if-eqz v5, :cond_165

    .line 644
    const-string v4, "set"

    invoke-virtual {p0, v1, v4, p1, v2}, Lgnu/expr/LitTable;->getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;

    move-result-object v6

    .line 647
    :cond_165
    if-nez v6, :cond_184

    iget-object v4, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    array-length v4, v4

    if-lez v4, :cond_184

    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no method to construct "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, p1, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 649
    :cond_184
    if-eqz v7, :cond_18d

    .line 651
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 652
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_1a9

    .line 654
    :cond_18d
    if-eqz v5, :cond_19d

    .line 656
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 657
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 658
    invoke-virtual {v1, v8, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    .line 659
    .local v4, "init0":Lgnu/bytecode/Method;
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 660
    .end local v4    # "init0":Lgnu/bytecode/Method;
    goto :goto_1a9

    .line 663
    :cond_19d
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 664
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 665
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 666
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 668
    :goto_1a9
    if-nez v7, :cond_1b9

    iget-object v4, p1, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    instance-of v4, v4, Lgnu/mapping/Values;

    if-eqz v4, :cond_1b2

    goto :goto_1b9

    :cond_1b2
    const-string v4, "readResolve"

    invoke-virtual {v1, v4, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v4

    goto :goto_1ba

    :cond_1b9
    :goto_1b9
    const/4 v4, 0x0

    .line 671
    .local v4, "resolveMethod":Lgnu/bytecode/Method;
    :goto_1ba
    if-eqz v4, :cond_1c2

    .line 673
    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 674
    invoke-virtual {v1, v0}, Lgnu/bytecode/ClassType;->emitCoerceFromObject(Lgnu/bytecode/CodeAttr;)V

    .line 676
    :cond_1c2
    if-eqz p2, :cond_1c9

    if-eqz v5, :cond_1c8

    if-nez v6, :cond_1c9

    :cond_1c8
    const/4 v2, 0x1

    :cond_1c9
    invoke-direct {p0, p1, v2, v0}, Lgnu/expr/LitTable;->store(Lgnu/expr/Literal;ZLgnu/bytecode/CodeAttr;)V

    .line 677
    if-eqz v5, :cond_1db

    if-eqz v6, :cond_1db

    .line 679
    if-nez p2, :cond_1d5

    .line 680
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 681
    :cond_1d5
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V

    .line 682
    invoke-virtual {v0, v6}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 685
    .end local v1    # "type":Lgnu/bytecode/ClassType;
    .end local v4    # "resolveMethod":Lgnu/bytecode/Method;
    .end local v5    # "useDefaultInit":Z
    .end local v6    # "method":Lgnu/bytecode/Method;
    .end local v7    # "makeStatic":Z
    :cond_1db
    :goto_1db
    return-void
.end method

.method error(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;
    .registers 15
    .param p1, "value"    # Ljava/lang/Object;

    .line 294
    if-nez p1, :cond_5

    .line 295
    sget-object v0, Lgnu/expr/Literal;->nullLiteral:Lgnu/expr/Literal;

    return-object v0

    .line 296
    :cond_5
    iget-object v0, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Literal;

    .line 297
    .local v0, "literal":Lgnu/expr/Literal;
    if-eqz v0, :cond_10

    .line 298
    return-object v0

    .line 299
    :cond_10
    iget-object v1, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    iget-boolean v1, v1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v1, :cond_1c

    .line 300
    new-instance v1, Lgnu/expr/Literal;

    invoke-direct {v1, p1, p0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/expr/LitTable;)V

    return-object v1

    .line 301
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 302
    .local v1, "valueClass":Ljava/lang/Class;
    invoke-static {v1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v2

    .line 304
    .local v2, "valueType":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    monitor-enter v3

    .line 306
    :try_start_27
    sget-object v4, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v5}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Literal;

    move-object v0, v4

    .line 307
    if-eqz v0, :cond_37

    iget-object v4, v0, Lgnu/expr/Literal;->value:Ljava/lang/Object;

    if-eq v4, p1, :cond_b6

    :cond_37
    instance-of v4, v2, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_b6

    .line 311
    const/16 v4, 0x19

    .line 312
    .local v4, "needed_mod":I
    move-object v6, v1

    .line 313
    .local v6, "fldClass":Ljava/lang/Class;
    move-object v7, v2

    check-cast v7, Lgnu/bytecode/ClassType;

    .line 314
    .local v7, "fldType":Lgnu/bytecode/ClassType;
    :goto_41
    sget-object v8, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6, v9, v5}, Lgnu/mapping/Table2D;->get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b6

    .line 317
    sget-object v8, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v6, v9, v6}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v7}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v8

    .line 319
    .local v8, "fld":Lgnu/bytecode/Field;
    :goto_56
    if-eqz v8, :cond_a6

    .line 321
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v9
    :try_end_5c
    .catchall {:try_start_27 .. :try_end_5c} :catchall_c6

    and-int/2addr v9, v4

    if-ne v9, v4, :cond_a0

    .line 325
    :try_start_5f
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v9

    .line 326
    .local v9, "rfld":Ljava/lang/reflect/Field;
    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 327
    .local v10, "litValue":Ljava/lang/Object;
    if-eqz v10, :cond_7e

    invoke-virtual {v6, v10}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_70

    goto :goto_7e

    .line 330
    :cond_70
    new-instance v11, Lgnu/expr/Literal;

    invoke-direct {v11, v10, v8, p0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Field;Lgnu/expr/LitTable;)V

    .line 331
    .local v11, "lit":Lgnu/expr/Literal;
    sget-object v12, Lgnu/expr/LitTable;->staticTable:Lgnu/mapping/Table2D;

    invoke-virtual {v12, v10, v5, v11}, Lgnu/mapping/Table2D;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_5f .. :try_end_7a} :catchall_7f

    .line 332
    if-ne p1, v10, :cond_7d

    .line 333
    move-object v0, v11

    .line 338
    .end local v9    # "rfld":Ljava/lang/reflect/Field;
    .end local v10    # "litValue":Ljava/lang/Object;
    .end local v11    # "lit":Lgnu/expr/Literal;
    :cond_7d
    goto :goto_a0

    .line 329
    .restart local v9    # "rfld":Ljava/lang/reflect/Field;
    .restart local v10    # "litValue":Ljava/lang/Object;
    :cond_7e
    :goto_7e
    goto :goto_a0

    .line 335
    .end local v9    # "rfld":Ljava/lang/reflect/Field;
    .end local v10    # "litValue":Ljava/lang/Object;
    :catchall_7f
    move-exception v9

    .line 337
    .local v9, "ex":Ljava/lang/Throwable;
    :try_start_80
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "caught "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " getting static field "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 319
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_a0
    :goto_a0
    invoke-virtual {v8}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v9

    move-object v8, v9

    goto :goto_56

    .line 341
    .end local v8    # "fld":Lgnu/bytecode/Field;
    :cond_a6
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    move-object v6, v8

    .line 342
    if-nez v6, :cond_ae

    .line 343
    goto :goto_b6

    .line 344
    :cond_ae
    invoke-static {v6}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v8

    check-cast v8, Lgnu/bytecode/ClassType;

    move-object v7, v8

    goto :goto_41

    .line 347
    .end local v4    # "needed_mod":I
    .end local v6    # "fldClass":Ljava/lang/Class;
    .end local v7    # "fldType":Lgnu/bytecode/ClassType;
    :cond_b6
    :goto_b6
    monitor-exit v3
    :try_end_b7
    .catchall {:try_start_80 .. :try_end_b7} :catchall_c6

    .line 349
    if-eqz v0, :cond_bf

    .line 350
    iget-object v3, p0, Lgnu/expr/LitTable;->literalTable:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 352
    :cond_bf
    new-instance v3, Lgnu/expr/Literal;

    invoke-direct {v3, p1, v2, p0}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;Lgnu/expr/LitTable;)V

    move-object v0, v3

    .line 353
    :goto_c5
    return-object v0

    .line 347
    :catchall_c6
    move-exception v4

    :try_start_c7
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    goto :goto_ca

    :goto_c9
    throw v4

    :goto_ca
    goto :goto_c9
.end method

.method public flush()V
    .registers 1

    .line 109
    return-void
.end method

.method getMethod(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/expr/Literal;Z)Lgnu/bytecode/Method;
    .registers 34
    .param p1, "type"    # Lgnu/bytecode/ClassType;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "literal"    # Lgnu/expr/Literal;
    .param p4, "isStatic"    # Z

    .line 359
    move-object/from16 v0, p3

    iget-object v1, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 360
    .local v1, "argTypes":[Lgnu/bytecode/Type;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getDeclaredMethods()Lgnu/bytecode/Method;

    move-result-object v2

    .line 361
    .local v2, "method":Lgnu/bytecode/Method;
    array-length v3, v1

    .line 362
    .local v3, "argLength":I
    const/4 v4, 0x0

    .line 363
    .local v4, "best":Lgnu/bytecode/Method;
    const-wide/16 v5, 0x0

    .line 364
    .local v5, "bestArrayArgs":J
    const/4 v7, 0x0

    .line 365
    .local v7, "ambiguous":Z
    const/4 v8, 0x0

    .line 367
    .local v8, "bParameters":[Lgnu/bytecode/Type;
    :goto_e
    const-string v10, "gnu.math.IntNum"

    if-eqz v2, :cond_174

    .line 369
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v9, p2

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_22

    .line 370
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 371
    :cond_22
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v15

    .line 372
    .local v15, "mstatic":Z
    move/from16 v14, p4

    if-eq v14, v15, :cond_2e

    .line 373
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 375
    :cond_2e
    const-wide/16 v18, 0x0

    .line 376
    .local v18, "arrayArgs":J
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v11

    .line 377
    .local v11, "mParameters":[Lgnu/bytecode/Type;
    const/16 v21, 0x0

    .local v21, "iarg":I
    const/16 v22, 0x0

    move/from16 v12, v21

    move/from16 v13, v22

    .line 380
    .end local v21    # "iarg":I
    .local v12, "iarg":I
    .local v13, "iparam":I
    :goto_3c
    if-ne v12, v3, :cond_a0

    array-length v9, v11

    if-ne v13, v9, :cond_a0

    .line 382
    if-eqz v4, :cond_98

    const-wide/16 v9, 0x0

    cmp-long v16, v5, v9

    if-eqz v16, :cond_4e

    cmp-long v16, v18, v9

    if-nez v16, :cond_4e

    goto :goto_98

    .line 388
    :cond_4e
    cmp-long v16, v18, v9

    if-nez v16, :cond_94

    .line 393
    const/4 v9, 0x0

    .line 395
    .local v9, "not1":Z
    const/4 v10, 0x0

    .line 396
    .local v10, "not2":Z
    move/from16 v16, v3

    .local v16, "j":I
    :goto_56
    const/16 v20, -0x1

    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_80

    .line 398
    move/from16 v21, v10

    .end local v10    # "not2":Z
    .local v21, "not2":Z
    aget-object v10, v8, v16

    aget-object v14, v11, v16

    invoke-virtual {v10, v14}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v10

    .line 399
    .local v10, "c":I
    const/4 v14, 0x1

    if-eq v10, v14, :cond_6e

    .line 401
    const/4 v14, 0x1

    .line 402
    .end local v21    # "not2":Z
    .local v14, "not2":Z
    if-eqz v9, :cond_70

    .line 403
    move v10, v14

    goto :goto_84

    .line 399
    .end local v14    # "not2":Z
    .restart local v21    # "not2":Z
    :cond_6e
    move/from16 v14, v21

    .line 405
    .end local v21    # "not2":Z
    .restart local v14    # "not2":Z
    :cond_70
    move/from16 v22, v9

    const/4 v9, -0x1

    .end local v9    # "not1":Z
    .local v22, "not1":Z
    if-eq v10, v9, :cond_7a

    .line 407
    const/4 v9, 0x1

    .line 408
    .end local v22    # "not1":Z
    .restart local v9    # "not1":Z
    if-eqz v14, :cond_7c

    .line 409
    move v10, v14

    goto :goto_84

    .line 405
    .end local v9    # "not1":Z
    .restart local v22    # "not1":Z
    :cond_7a
    move/from16 v9, v22

    .line 411
    .end local v10    # "c":I
    .end local v22    # "not1":Z
    .restart local v9    # "not1":Z
    :cond_7c
    move v10, v14

    move/from16 v14, p4

    goto :goto_56

    .line 396
    .end local v14    # "not2":Z
    .local v10, "not2":Z
    :cond_80
    move/from16 v22, v9

    move/from16 v21, v10

    .line 412
    .end local v16    # "j":I
    :goto_84
    if-eqz v9, :cond_88

    .line 414
    move-object v4, v2

    .line 415
    move-object v8, v11

    .line 417
    :cond_88
    if-eqz v9, :cond_8e

    if-eqz v10, :cond_8e

    const/4 v14, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v14, 0x0

    :goto_8f
    move v7, v14

    .line 418
    .end local v9    # "not1":Z
    .end local v10    # "not2":Z
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 388
    :cond_94
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 384
    :cond_98
    :goto_98
    move-object v4, v2

    .line 385
    move-object v8, v11

    .line 386
    move-wide/from16 v5, v18

    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 421
    :cond_a0
    if-eq v12, v3, :cond_166

    array-length v9, v11

    if-ne v13, v9, :cond_a9

    .line 422
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 423
    :cond_a9
    aget-object v9, v1, v12

    .line 424
    .local v9, "aType":Lgnu/bytecode/Type;
    aget-object v14, v11, v13

    .line 425
    .local v14, "pType":Lgnu/bytecode/Type;
    invoke-virtual {v9, v14}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v23

    if-eqz v23, :cond_bc

    .line 426
    move-object/from16 v26, v1

    move-object/from16 v23, v11

    move/from16 v28, v15

    const/4 v1, 0x1

    goto/16 :goto_147

    .line 427
    :cond_bc
    move-object/from16 v23, v11

    .end local v11    # "mParameters":[Lgnu/bytecode/Type;
    .local v23, "mParameters":[Lgnu/bytecode/Type;
    instance-of v11, v14, Lgnu/bytecode/ArrayType;

    if-eqz v11, :cond_15d

    const/16 v11, 0x40

    if-ge v13, v11, :cond_15d

    sget-object v11, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    if-eq v9, v11, :cond_d3

    sget-object v11, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    if-ne v9, v11, :cond_cf

    goto :goto_d3

    :cond_cf
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 430
    :cond_d3
    :goto_d3
    iget-object v11, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 431
    .local v11, "count":I
    if-gez v11, :cond_ef

    move-object/from16 v24, v9

    .end local v9    # "aType":Lgnu/bytecode/Type;
    .local v24, "aType":Lgnu/bytecode/Type;
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f1

    .line 432
    const/high16 v9, -0x80000000

    sub-int/2addr v11, v9

    goto :goto_f1

    .line 431
    .end local v24    # "aType":Lgnu/bytecode/Type;
    .restart local v9    # "aType":Lgnu/bytecode/Type;
    :cond_ef
    move-object/from16 v24, v9

    .line 433
    .end local v9    # "aType":Lgnu/bytecode/Type;
    .restart local v24    # "aType":Lgnu/bytecode/Type;
    :cond_f1
    :goto_f1
    move-object v9, v14

    check-cast v9, Lgnu/bytecode/ArrayType;

    invoke-virtual {v9}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 434
    .local v9, "elementType":Lgnu/bytecode/Type;
    if-ltz v11, :cond_156

    move-object/from16 v25, v14

    .end local v14    # "pType":Lgnu/bytecode/Type;
    .local v25, "pType":Lgnu/bytecode/Type;
    add-int v14, v12, v11

    if-lt v14, v3, :cond_104

    .line 435
    move-object/from16 v26, v1

    goto/16 :goto_16c

    .line 438
    :cond_104
    move v14, v11

    .local v14, "j":I
    :goto_105
    const/16 v20, -0x1

    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_138

    .line 440
    add-int v26, v12, v14

    const/16 v17, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v27, v14

    .end local v14    # "j":I
    .local v27, "j":I
    aget-object v14, v1, v26

    .line 441
    .local v14, "t":Lgnu/bytecode/Type;
    move-object/from16 v26, v1

    .end local v1    # "argTypes":[Lgnu/bytecode/Type;
    .local v26, "argTypes":[Lgnu/bytecode/Type;
    instance-of v1, v9, Lgnu/bytecode/PrimType;

    if-eqz v1, :cond_128

    invoke-virtual {v9}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v15

    .end local v15    # "mstatic":Z
    .local v28, "mstatic":Z
    invoke-virtual {v14}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v15

    if-eq v1, v15, :cond_131

    goto :goto_16c

    .end local v28    # "mstatic":Z
    .restart local v15    # "mstatic":Z
    :cond_128
    move/from16 v28, v15

    .end local v15    # "mstatic":Z
    .restart local v28    # "mstatic":Z
    invoke-virtual {v14, v9}, Lgnu/bytecode/Type;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v1

    if-nez v1, :cond_131

    .line 444
    goto :goto_16c

    .line 445
    .end local v14    # "t":Lgnu/bytecode/Type;
    :cond_131
    move-object/from16 v1, v26

    move/from16 v14, v27

    move/from16 v15, v28

    goto :goto_105

    .line 438
    .end local v26    # "argTypes":[Lgnu/bytecode/Type;
    .end local v27    # "j":I
    .end local v28    # "mstatic":Z
    .restart local v1    # "argTypes":[Lgnu/bytecode/Type;
    .local v14, "j":I
    .restart local v15    # "mstatic":Z
    :cond_138
    move-object/from16 v26, v1

    move/from16 v27, v14

    move/from16 v28, v15

    .line 446
    .end local v1    # "argTypes":[Lgnu/bytecode/Type;
    .end local v14    # "j":I
    .end local v15    # "mstatic":Z
    .restart local v26    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v28    # "mstatic":Z
    add-int/2addr v12, v11

    .line 447
    const/4 v1, 0x1

    shl-int v14, v1, v13

    int-to-long v14, v14

    or-long v14, v18, v14

    move-wide/from16 v18, v14

    .line 378
    .end local v9    # "elementType":Lgnu/bytecode/Type;
    .end local v11    # "count":I
    .end local v24    # "aType":Lgnu/bytecode/Type;
    .end local v25    # "pType":Lgnu/bytecode/Type;
    :goto_147
    add-int/2addr v12, v1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, p2

    move/from16 v14, p4

    move-object/from16 v11, v23

    move-object/from16 v1, v26

    move/from16 v15, v28

    goto/16 :goto_3c

    .line 434
    .end local v26    # "argTypes":[Lgnu/bytecode/Type;
    .end local v28    # "mstatic":Z
    .restart local v1    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v9    # "elementType":Lgnu/bytecode/Type;
    .restart local v11    # "count":I
    .local v14, "pType":Lgnu/bytecode/Type;
    .restart local v15    # "mstatic":Z
    .restart local v24    # "aType":Lgnu/bytecode/Type;
    :cond_156
    move-object/from16 v26, v1

    move-object/from16 v25, v14

    move/from16 v28, v15

    .end local v1    # "argTypes":[Lgnu/bytecode/Type;
    .end local v14    # "pType":Lgnu/bytecode/Type;
    .end local v15    # "mstatic":Z
    .restart local v25    # "pType":Lgnu/bytecode/Type;
    .restart local v26    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v28    # "mstatic":Z
    goto :goto_16c

    .line 427
    .end local v11    # "count":I
    .end local v24    # "aType":Lgnu/bytecode/Type;
    .end local v25    # "pType":Lgnu/bytecode/Type;
    .end local v26    # "argTypes":[Lgnu/bytecode/Type;
    .end local v28    # "mstatic":Z
    .restart local v1    # "argTypes":[Lgnu/bytecode/Type;
    .local v9, "aType":Lgnu/bytecode/Type;
    .restart local v14    # "pType":Lgnu/bytecode/Type;
    .restart local v15    # "mstatic":Z
    :cond_15d
    move-object/from16 v26, v1

    move-object/from16 v24, v9

    move-object/from16 v25, v14

    move/from16 v28, v15

    .end local v1    # "argTypes":[Lgnu/bytecode/Type;
    .end local v9    # "aType":Lgnu/bytecode/Type;
    .end local v14    # "pType":Lgnu/bytecode/Type;
    .end local v15    # "mstatic":Z
    .restart local v24    # "aType":Lgnu/bytecode/Type;
    .restart local v25    # "pType":Lgnu/bytecode/Type;
    .restart local v26    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v28    # "mstatic":Z
    goto :goto_16c

    .line 421
    .end local v23    # "mParameters":[Lgnu/bytecode/Type;
    .end local v24    # "aType":Lgnu/bytecode/Type;
    .end local v25    # "pType":Lgnu/bytecode/Type;
    .end local v26    # "argTypes":[Lgnu/bytecode/Type;
    .end local v28    # "mstatic":Z
    .restart local v1    # "argTypes":[Lgnu/bytecode/Type;
    .local v11, "mParameters":[Lgnu/bytecode/Type;
    .restart local v15    # "mstatic":Z
    :cond_166
    move-object/from16 v26, v1

    move-object/from16 v23, v11

    move/from16 v28, v15

    .line 367
    .end local v1    # "argTypes":[Lgnu/bytecode/Type;
    .end local v11    # "mParameters":[Lgnu/bytecode/Type;
    .end local v12    # "iarg":I
    .end local v13    # "iparam":I
    .end local v15    # "mstatic":Z
    .end local v18    # "arrayArgs":J
    .restart local v26    # "argTypes":[Lgnu/bytecode/Type;
    :goto_16c
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getNext()Lgnu/bytecode/Method;

    move-result-object v2

    move-object/from16 v1, v26

    goto/16 :goto_e

    .line 456
    .end local v26    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v1    # "argTypes":[Lgnu/bytecode/Type;
    :cond_174
    move-object/from16 v26, v1

    .end local v1    # "argTypes":[Lgnu/bytecode/Type;
    .restart local v26    # "argTypes":[Lgnu/bytecode/Type;
    if-eqz v7, :cond_17a

    .line 457
    const/4 v1, 0x0

    return-object v1

    .line 458
    :cond_17a
    const-wide/16 v11, 0x0

    cmp-long v1, v5, v11

    if-eqz v1, :cond_254

    .line 460
    array-length v1, v8

    new-array v1, v1, [Ljava/lang/Object;

    .line 461
    .local v1, "args":[Ljava/lang/Object;
    array-length v9, v8

    new-array v9, v9, [Lgnu/bytecode/Type;

    .line 462
    .local v9, "types":[Lgnu/bytecode/Type;
    const/4 v11, 0x0

    .local v11, "iarg":I
    const/4 v12, 0x0

    .line 465
    .local v12, "iparam":I
    :goto_188
    if-ne v11, v3, :cond_197

    .line 466
    nop

    .line 506
    iput-object v1, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 507
    iput-object v9, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    move-object/from16 v22, v2

    move/from16 v21, v3

    move-wide/from16 v23, v5

    goto/16 :goto_25a

    .line 467
    :cond_197
    aget-object v13, v8, v12

    .line 468
    .local v13, "pType":Lgnu/bytecode/Type;
    const/4 v14, 0x1

    shl-int v15, v14, v12

    int-to-long v14, v15

    and-long/2addr v14, v5

    const-wide/16 v18, 0x0

    cmp-long v21, v14, v18

    if-nez v21, :cond_1bc

    .line 470
    iget-object v14, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v14, v14, v11

    aput-object v14, v1, v12

    .line 471
    iget-object v14, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    aget-object v14, v14, v11

    aput-object v14, v9, v12

    move-object/from16 v22, v2

    move/from16 v21, v3

    move-wide/from16 v23, v5

    const/high16 v16, -0x80000000

    const/16 v20, -0x1

    goto/16 :goto_246

    .line 475
    :cond_1bc
    iget-object v14, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v14, v14, v11

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 476
    .local v14, "count":I
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 477
    .local v15, "isIntNum":Z
    if-eqz v15, :cond_1d5

    .line 478
    const/high16 v16, -0x80000000

    sub-int v14, v14, v16

    goto :goto_1d7

    .line 477
    :cond_1d5
    const/high16 v16, -0x80000000

    .line 479
    :goto_1d7
    move-object/from16 v21, v13

    check-cast v21, Lgnu/bytecode/ArrayType;

    move-object/from16 v22, v2

    .end local v2    # "method":Lgnu/bytecode/Method;
    .local v22, "method":Lgnu/bytecode/Method;
    invoke-virtual/range {v21 .. v21}, Lgnu/bytecode/ArrayType;->getComponentType()Lgnu/bytecode/Type;

    move-result-object v2

    .line 480
    .local v2, "elementType":Lgnu/bytecode/Type;
    aput-object v13, v9, v12

    .line 481
    move/from16 v21, v3

    .end local v3    # "argLength":I
    .local v21, "argLength":I
    invoke-virtual {v2}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v12

    .line 483
    iget-object v3, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 484
    .local v3, "argValues":[Ljava/lang/Object;
    if-eqz v15, :cond_213

    .line 489
    aget-object v23, v1, v12

    check-cast v23, [I

    check-cast v23, [I

    .line 490
    .local v23, "arr":[I
    move/from16 v24, v14

    .local v24, "j":I
    :goto_1fb
    if-lez v24, :cond_20e

    .line 491
    sub-int v25, v14, v24

    add-int v27, v11, v24

    aget-object v27, v3, v27

    check-cast v27, Ljava/lang/Integer;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    aput v27, v23, v25

    .line 490
    add-int/lit8 v24, v24, -0x1

    goto :goto_1fb

    .line 493
    .end local v23    # "arr":[I
    .end local v24    # "j":I
    :cond_20e
    move-wide/from16 v23, v5

    const/16 v20, -0x1

    goto :goto_230

    .line 496
    :cond_213
    move/from16 v23, v14

    .local v23, "j":I
    :goto_215
    const/16 v20, -0x1

    add-int/lit8 v0, v23, -0x1

    .end local v23    # "j":I
    .local v0, "j":I
    if-ltz v0, :cond_22e

    .line 497
    move-wide/from16 v23, v5

    .end local v5    # "bestArrayArgs":J
    .local v23, "bestArrayArgs":J
    aget-object v5, v1, v12

    add-int/lit8 v6, v11, 0x1

    add-int/2addr v6, v0

    aget-object v6, v3, v6

    invoke-static {v5, v0, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move-wide/from16 v5, v23

    move/from16 v23, v0

    move-object/from16 v0, p3

    goto :goto_215

    .line 496
    .end local v23    # "bestArrayArgs":J
    .restart local v5    # "bestArrayArgs":J
    :cond_22e
    move-wide/from16 v23, v5

    .line 499
    .end local v0    # "j":I
    .end local v5    # "bestArrayArgs":J
    .restart local v23    # "bestArrayArgs":J
    :goto_230
    new-instance v0, Lgnu/expr/Literal;

    aget-object v5, v1, v12

    invoke-direct {v0, v5, v13}, Lgnu/expr/Literal;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 500
    .local v0, "arrayLiteral":Lgnu/expr/Literal;
    instance-of v5, v2, Lgnu/bytecode/ObjectType;

    if-eqz v5, :cond_243

    .line 501
    aget-object v5, v1, v12

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    iput-object v5, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 502
    :cond_243
    aput-object v0, v1, v12

    .line 503
    add-int/2addr v11, v14

    .line 463
    .end local v0    # "arrayLiteral":Lgnu/expr/Literal;
    .end local v2    # "elementType":Lgnu/bytecode/Type;
    .end local v3    # "argValues":[Ljava/lang/Object;
    .end local v13    # "pType":Lgnu/bytecode/Type;
    .end local v14    # "count":I
    .end local v15    # "isIntNum":Z
    :goto_246
    const/4 v0, 0x1

    add-int/2addr v11, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p3

    move/from16 v3, v21

    move-object/from16 v2, v22

    move-wide/from16 v5, v23

    goto/16 :goto_188

    .line 458
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v9    # "types":[Lgnu/bytecode/Type;
    .end local v11    # "iarg":I
    .end local v12    # "iparam":I
    .end local v21    # "argLength":I
    .end local v22    # "method":Lgnu/bytecode/Method;
    .end local v23    # "bestArrayArgs":J
    .local v2, "method":Lgnu/bytecode/Method;
    .local v3, "argLength":I
    .restart local v5    # "bestArrayArgs":J
    :cond_254
    move-object/from16 v22, v2

    move/from16 v21, v3

    move-wide/from16 v23, v5

    .line 509
    .end local v2    # "method":Lgnu/bytecode/Method;
    .end local v3    # "argLength":I
    .end local v5    # "bestArrayArgs":J
    .restart local v21    # "argLength":I
    .restart local v22    # "method":Lgnu/bytecode/Method;
    .restart local v23    # "bestArrayArgs":J
    :goto_25a
    return-object v4
.end method

.method push(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Lgnu/bytecode/Type;

    .line 88
    iget v0, p0, Lgnu/expr/LitTable;->stackPointer:I

    iget-object v1, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    array-length v2, v1

    if-lt v0, v2, :cond_22

    .line 90
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 91
    .local v2, "newValues":[Ljava/lang/Object;
    iget-object v3, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lgnu/bytecode/Type;

    .line 92
    .local v3, "newTypes":[Lgnu/bytecode/Type;
    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput-object v2, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    .line 95
    iput-object v3, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    .line 97
    .end local v2    # "newValues":[Ljava/lang/Object;
    .end local v3    # "newTypes":[Lgnu/bytecode/Type;
    :cond_22
    iget-object v0, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    aput-object p1, v0, v1

    .line 98
    iget-object v0, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    aput-object p2, v0, v1

    .line 99
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 100
    return-void
.end method

.method putArgs(Lgnu/expr/Literal;Lgnu/bytecode/CodeAttr;)V
    .registers 10
    .param p1, "literal"    # Lgnu/expr/Literal;
    .param p2, "code"    # Lgnu/bytecode/CodeAttr;

    .line 514
    iget-object v0, p1, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 515
    .local v0, "argTypes":[Lgnu/bytecode/Type;
    array-length v1, v0

    .line 516
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_25

    .line 518
    iget-object v3, p1, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 519
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Literal;

    if-eqz v4, :cond_16

    .line 520
    move-object v4, v3

    check-cast v4, Lgnu/expr/Literal;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lgnu/expr/LitTable;->emit(Lgnu/expr/Literal;Z)V

    goto :goto_22

    .line 522
    :cond_16
    iget-object v4, p0, Lgnu/expr/LitTable;->comp:Lgnu/expr/Compilation;

    new-instance v5, Lgnu/expr/StackTarget;

    aget-object v6, v0, v2

    invoke-direct {v5, v6}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v4, v3, v5}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 516
    .end local v3    # "value":Ljava/lang/Object;
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 524
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public write(I)V
    .registers 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const-string v0, "cannot handle call to write(int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public write([B)V
    .registers 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const-string v0, "cannot handle call to write(byte[]) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    const-string v0, "cannot handle call to write(byte[],int,int) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 4
    .param p1, "v"    # Z

    .line 137
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sget-object v1, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 138
    return-void
.end method

.method public writeByte(I)V
    .registers 4
    .param p1, "v"    # I

    .line 147
    new-instance v0, Ljava/lang/Byte;

    int-to-byte v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sget-object v1, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 148
    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    const-string v0, "cannot handle call to writeBytes(String) when externalizing literal"

    invoke-virtual {p0, v0}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public writeChar(I)V
    .registers 4
    .param p1, "v"    # I

    .line 142
    new-instance v0, Ljava/lang/Character;

    int-to-char v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    sget-object v1, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 143
    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/String;

    .line 182
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 183
    return-void
.end method

.method public writeDouble(D)V
    .registers 5
    .param p1, "v"    # D

    .line 172
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    sget-object v1, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 173
    return-void
.end method

.method public writeFloat(F)V
    .registers 4
    .param p1, "v"    # F

    .line 167
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    sget-object v1, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 168
    return-void
.end method

.method public writeInt(I)V
    .registers 4
    .param p1, "v"    # I

    .line 157
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sget-object v1, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 158
    return-void
.end method

.method public writeLong(J)V
    .registers 5
    .param p1, "v"    # J

    .line 162
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    sget-object v1, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 163
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Lgnu/expr/LitTable;->findLiteral(Ljava/lang/Object;)Lgnu/expr/Literal;

    move-result-object v0

    .line 197
    .local v0, "lit":Lgnu/expr/Literal;
    iget v1, v0, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_25

    .line 201
    iget-object v1, v0, Lgnu/expr/Literal;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_17

    if-eqz p1, :cond_17

    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_17

    .line 203
    invoke-virtual {v0, p0}, Lgnu/expr/Literal;->assign(Lgnu/expr/LitTable;)V

    .line 204
    :cond_17
    iget v1, v0, Lgnu/expr/Literal;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_159

    .line 205
    iget v1, v0, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lgnu/expr/Literal;->flags:I

    goto/16 :goto_159

    .line 209
    :cond_25
    iget v1, v0, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lgnu/expr/Literal;->flags:I

    .line 210
    iget v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 211
    .local v1, "oldStack":I
    instance-of v2, p1, Lgnu/lists/FString;

    if-eqz v2, :cond_48

    move-object v2, p1

    check-cast v2, Lgnu/lists/FString;

    invoke-virtual {v2}, Lgnu/lists/FString;->size()I

    move-result v2

    const v3, 0xffff

    if-ge v2, v3, :cond_48

    .line 214
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2, v3}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_12c

    .line 216
    :cond_48
    instance-of v2, p1, Ljava/io/Externalizable;

    if-eqz v2, :cond_54

    .line 218
    move-object v2, p1

    check-cast v2, Ljava/io/Externalizable;

    invoke-interface {v2, p0}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    goto/16 :goto_12c

    .line 220
    :cond_54
    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_6b

    .line 222
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 223
    .local v2, "arr":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5e
    array-length v4, v2

    if-ge v3, v4, :cond_69

    .line 225
    aget-object v4, v2, v3

    invoke-virtual {p0, v4}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 227
    .end local v2    # "arr":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_69
    goto/16 :goto_12c

    .line 228
    :cond_6b
    if-eqz p1, :cond_12c

    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_12c

    iget-object v2, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    instance-of v2, v2, Lgnu/bytecode/ArrayType;

    if-eqz v2, :cond_79

    goto/16 :goto_12c

    .line 233
    :cond_79
    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_86

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/expr/LitTable;->writeChars(Ljava/lang/String;)V

    goto/16 :goto_12c

    .line 237
    :cond_86
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_9d

    .line 239
    move-object v2, p1

    check-cast v2, Ljava/math/BigDecimal;

    .line 241
    .local v2, "dec":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0, v3}, Lgnu/expr/LitTable;->writeObject(Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-virtual {p0, v3}, Lgnu/expr/LitTable;->writeInt(I)V

    .line 246
    .end local v2    # "dec":Ljava/math/BigDecimal;
    goto/16 :goto_12c

    .line 247
    :cond_9d
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_a8

    .line 248
    sget-object v2, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_12c

    .line 249
    :cond_a8
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_b3

    .line 250
    sget-object v2, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_12c

    .line 251
    :cond_b3
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_be

    .line 252
    sget-object v2, Lgnu/bytecode/Type;->byteType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto/16 :goto_12c

    .line 253
    :cond_be
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_c8

    .line 254
    sget-object v2, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_12c

    .line 255
    :cond_c8
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_d2

    .line 256
    sget-object v2, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_12c

    .line 257
    :cond_d2
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_dc

    .line 258
    sget-object v2, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_12c

    .line 259
    :cond_dc
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_e6

    .line 260
    sget-object v2, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_12c

    .line 261
    :cond_e6
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_f0

    .line 262
    sget-object v2, Lgnu/bytecode/Type;->java_lang_Class_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v2}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    goto :goto_12c

    .line 264
    :cond_f0
    instance-of v2, p1, Ljava/util/regex/Pattern;

    if-eqz v2, :cond_10e

    .line 266
    move-object v2, p1

    check-cast v2, Ljava/util/regex/Pattern;

    .line 267
    .local v2, "pat":Ljava/util/regex/Pattern;
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 268
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->flags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v3, v4}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 269
    .end local v2    # "pat":Ljava/util/regex/Pattern;
    goto :goto_12c

    .line 272
    :cond_10e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not implement Externalizable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgnu/expr/LitTable;->error(Ljava/lang/String;)V

    .line 273
    :cond_12c
    :goto_12c
    iget v2, p0, Lgnu/expr/LitTable;->stackPointer:I

    sub-int/2addr v2, v1

    .line 274
    .local v2, "nargs":I
    if-nez v2, :cond_13a

    .line 276
    sget-object v3, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    iput-object v3, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 277
    sget-object v3, Lgnu/bytecode/Type;->typeArray0:[Lgnu/bytecode/Type;

    iput-object v3, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    goto :goto_153

    .line 281
    :cond_13a
    new-array v3, v2, [Ljava/lang/Object;

    iput-object v3, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    .line 282
    new-array v3, v2, [Lgnu/bytecode/Type;

    iput-object v3, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    .line 283
    iget-object v3, p0, Lgnu/expr/LitTable;->valueStack:[Ljava/lang/Object;

    iget-object v4, v0, Lgnu/expr/Literal;->argValues:[Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v3, p0, Lgnu/expr/LitTable;->typeStack:[Lgnu/bytecode/Type;

    iget-object v4, v0, Lgnu/expr/Literal;->argTypes:[Lgnu/bytecode/Type;

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iput v1, p0, Lgnu/expr/LitTable;->stackPointer:I

    .line 287
    :goto_153
    iget v3, v0, Lgnu/expr/Literal;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v0, Lgnu/expr/Literal;->flags:I

    .line 289
    .end local v1    # "oldStack":I
    .end local v2    # "nargs":I
    :cond_159
    :goto_159
    iget-object v1, v0, Lgnu/expr/Literal;->type:Lgnu/bytecode/Type;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 290
    return-void
.end method

.method public writeShort(I)V
    .registers 4
    .param p1, "v"    # I

    .line 152
    new-instance v0, Ljava/lang/Short;

    int-to-short v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sget-object v1, Lgnu/bytecode/Type;->shortType:Lgnu/bytecode/PrimType;

    invoke-virtual {p0, v0, v1}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 153
    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/String;

    .line 177
    sget-object v0, Lgnu/bytecode/Type;->string_type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LitTable;->push(Ljava/lang/Object;Lgnu/bytecode/Type;)V

    .line 178
    return-void
.end method

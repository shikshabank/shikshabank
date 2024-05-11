.class public Lgnu/expr/LambdaExp;
.super Lgnu/expr/ScopeExp;
.source "LambdaExp.java"


# static fields
.field public static final ATTEMPT_INLINE:I = 0x1000

.field static final CANNOT_INLINE:I = 0x20

.field static final CAN_CALL:I = 0x4

.field static final CAN_READ:I = 0x2

.field static final CLASS_METHOD:I = 0x40

.field static final DEFAULT_CAPTURES_ARG:I = 0x200

.field static final IMPORTS_LEX_VARS:I = 0x8

.field static final INLINE_ONLY:I = 0x2000

.field static final METHODS_COMPILED:I = 0x80

.field static final NEEDS_STATIC_LINK:I = 0x10

.field protected static final NEXT_AVAIL_FLAG:I = 0x4000

.field public static final NO_FIELD:I = 0x100

.field public static final OVERLOADABLE_FIELD:I = 0x800

.field public static final SEQUENCE_RESULT:I = 0x400

.field static searchForKeywordMethod3:Lgnu/bytecode/Method;

.field static searchForKeywordMethod4:Lgnu/bytecode/Method;

.field static final unknownContinuation:Lgnu/expr/ApplyExp;


# instance fields
.field applyMethods:Ljava/util/Vector;

.field argsArray:Lgnu/bytecode/Variable;

.field public body:Lgnu/expr/Expression;

.field capturedVars:Lgnu/expr/Declaration;

.field closureEnv:Lgnu/bytecode/Variable;

.field public closureEnvField:Lgnu/bytecode/Field;

.field public defaultArgs:[Lgnu/expr/Expression;

.field private firstArgsArrayArg:Lgnu/expr/Declaration;

.field public firstChild:Lgnu/expr/LambdaExp;

.field heapFrame:Lgnu/bytecode/Variable;

.field initChain:Lgnu/expr/Initializer;

.field public inlineHome:Lgnu/expr/LambdaExp;

.field public keywords:[Lgnu/expr/Keyword;

.field public max_args:I

.field public min_args:I

.field public nameDecl:Lgnu/expr/Declaration;

.field public nextSibling:Lgnu/expr/LambdaExp;

.field primBodyMethods:[Lgnu/bytecode/Method;

.field primMethods:[Lgnu/bytecode/Method;

.field properties:[Ljava/lang/Object;

.field public returnContinuation:Lgnu/expr/Expression;

.field public returnType:Lgnu/bytecode/Type;

.field selectorValue:I

.field public staticLinkField:Lgnu/bytecode/Field;

.field tailCallers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lgnu/expr/LambdaExp;",
            ">;"
        }
    .end annotation
.end field

.field thisValue:Lgnu/mapping/Procedure;

.field thisVariable:Lgnu/bytecode/Variable;

.field throwsSpecification:[Lgnu/expr/Expression;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Lgnu/expr/ApplyExp;

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lgnu/expr/Expression;

    move-object v2, v1

    check-cast v2, [Lgnu/expr/Expression;

    invoke-direct {v0, v1, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    sput-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 472
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 473
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "args"    # I

    .line 476
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 477
    iput p1, p0, Lgnu/expr/LambdaExp;->min_args:I

    .line 478
    iput p1, p0, Lgnu/expr/LambdaExp;->max_args:I

    .line 479
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "body"    # Lgnu/expr/Expression;

    .line 483
    invoke-direct {p0}, Lgnu/expr/ScopeExp;-><init>()V

    .line 270
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 484
    iput-object p1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 485
    return-void
.end method


# virtual methods
.method final addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V
    .registers 7
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "field"    # Lgnu/bytecode/Field;

    .line 624
    move-object v0, p0

    .line 625
    .local v0, "owner":Lgnu/expr/LambdaExp;
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 626
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    goto :goto_2e

    .line 633
    :cond_e
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 634
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_1a

    iget-object v1, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_e

    .line 638
    :cond_1a
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 639
    .local v1, "frameType":Lgnu/bytecode/ClassType;
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeModuleBody:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 640
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 642
    .end local v1    # "frameType":Lgnu/bytecode/ClassType;
    :cond_2e
    :goto_2e
    iget-object v1, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    if-nez v1, :cond_39

    .line 643
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    .line 644
    :cond_39
    iget-object v1, v0, Lgnu/expr/LambdaExp;->applyMethods:Ljava/util/Vector;

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .registers 42
    .param p1, "ctype"    # Lgnu/bytecode/ClassType;
    .param p2, "comp"    # Lgnu/expr/Compilation;
    .param p3, "closureEnvType"    # Lgnu/bytecode/ObjectType;

    .line 805
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 806
    .local v4, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v5

    .line 808
    .local v5, "outer":Lgnu/expr/LambdaExp;
    iget-object v6, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v6, :cond_16

    const/4 v6, 0x0

    goto :goto_17

    :cond_16
    array-length v6, v6

    .line 809
    .local v6, "key_args":I
    :goto_17
    iget-object v8, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v8, :cond_1d

    const/4 v8, 0x0

    goto :goto_1f

    :cond_1d
    array-length v8, v8

    sub-int/2addr v8, v6

    .line 810
    .local v8, "opt_args":I
    :goto_1f
    iget v9, v0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v9, v9, 0x200

    if-eqz v9, :cond_27

    const/4 v9, 0x0

    goto :goto_28

    :cond_27
    move v9, v8

    .line 812
    .local v9, "numStubs":I
    :goto_28
    iget v10, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v10, :cond_34

    iget v12, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v12, v9

    if-ge v12, v10, :cond_32

    goto :goto_34

    :cond_32
    const/4 v10, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v10, 0x1

    .line 814
    .local v10, "varArgs":Z
    :goto_35
    add-int/lit8 v12, v9, 0x1

    new-array v12, v12, [Lgnu/bytecode/Method;

    .line 818
    .local v12, "methods":[Lgnu/bytecode/Method;
    iput-object v12, v0, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 819
    iget-object v13, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v13, :cond_41

    .line 820
    iput-object v12, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 824
    :cond_41
    const/4 v13, 0x0

    .line 825
    .local v13, "isInitMethod":C
    iget-object v14, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v14, :cond_54

    move/from16 v16, v8

    .end local v8    # "opt_args":I
    .local v16, "opt_args":I
    const-wide/16 v7, 0x1000

    invoke-virtual {v14, v7, v8}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 827
    const/4 v7, 0x0

    move-object v14, v12

    .local v7, "isStatic":Z
    goto/16 :goto_bf

    .line 825
    .end local v7    # "isStatic":Z
    .end local v16    # "opt_args":I
    .restart local v8    # "opt_args":I
    :cond_54
    move/from16 v16, v8

    .line 828
    .end local v8    # "opt_args":I
    .restart local v16    # "opt_args":I
    :cond_56
    iget-object v7, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_66

    move-object v14, v12

    .end local v12    # "methods":[Lgnu/bytecode/Method;
    .local v14, "methods":[Lgnu/bytecode/Method;
    const-wide/16 v11, 0x800

    invoke-virtual {v7, v11, v12}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 830
    const/4 v7, 0x1

    .restart local v7    # "isStatic":Z
    goto/16 :goto_bf

    .line 828
    .end local v7    # "isStatic":Z
    .end local v14    # "methods":[Lgnu/bytecode/Method;
    .restart local v12    # "methods":[Lgnu/bytecode/Method;
    :cond_66
    move-object v14, v12

    .line 831
    .end local v12    # "methods":[Lgnu/bytecode/Method;
    .restart local v14    # "methods":[Lgnu/bytecode/Method;
    :cond_67
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 833
    instance-of v7, v5, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_92

    .line 835
    move-object v7, v5

    check-cast v7, Lgnu/expr/ClassExp;

    .line 836
    .local v7, "cl":Lgnu/expr/ClassExp;
    invoke-virtual {v7}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    move-result v11

    if-eqz v11, :cond_7e

    if-eqz v3, :cond_7e

    const/4 v11, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v11, 0x0

    .line 837
    .local v11, "isStatic":Z
    :goto_7f
    iget-object v12, v7, Lgnu/expr/ClassExp;->initMethod:Lgnu/expr/LambdaExp;

    if-ne v0, v12, :cond_87

    .line 838
    const/16 v13, 0x49

    move v7, v11

    goto :goto_91

    .line 839
    :cond_87
    iget-object v12, v7, Lgnu/expr/ClassExp;->clinitMethod:Lgnu/expr/LambdaExp;

    if-ne v0, v12, :cond_90

    .line 841
    const/16 v13, 0x43

    .line 842
    const/4 v11, 0x1

    move v7, v11

    goto :goto_91

    .line 839
    :cond_90
    move v7, v11

    .line 844
    .end local v11    # "isStatic":Z
    .local v7, "isStatic":Z
    :goto_91
    goto :goto_bf

    .line 846
    .end local v7    # "isStatic":Z
    :cond_92
    const/4 v7, 0x0

    .restart local v7    # "isStatic":Z
    goto :goto_bf

    .line 848
    .end local v7    # "isStatic":Z
    :cond_94
    iget-object v7, v0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v7, :cond_be

    if-ne v3, v1, :cond_9b

    goto :goto_be

    .line 850
    :cond_9b
    iget-object v7, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_bc

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v7, v7, Lgnu/expr/ModuleExp;

    if-eqz v7, :cond_bc

    .line 852
    iget-object v7, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v7, Lgnu/expr/ModuleExp;

    .line 853
    .local v7, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->getSuperType()Lgnu/bytecode/ClassType;

    move-result-object v11

    if-nez v11, :cond_b9

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->getInterfaces()[Lgnu/bytecode/ClassType;

    move-result-object v11

    if-nez v11, :cond_b9

    const/4 v11, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v11, 0x0

    :goto_ba
    move v7, v11

    .line 854
    .local v7, "isStatic":Z
    goto :goto_bf

    .line 856
    .end local v7    # "isStatic":Z
    :cond_bc
    const/4 v7, 0x1

    .restart local v7    # "isStatic":Z
    goto :goto_bf

    .line 849
    .end local v7    # "isStatic":Z
    :cond_be
    :goto_be
    const/4 v7, 0x0

    .line 858
    .restart local v7    # "isStatic":Z
    :goto_bf
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v12, 0x3c

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 859
    .local v11, "nameBuf":Ljava/lang/StringBuffer;
    if-eqz v7, :cond_cb

    const/16 v12, 0x8

    goto :goto_cc

    :cond_cb
    const/4 v12, 0x0

    .line 860
    .local v12, "mflags":I
    :goto_cc
    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v8, :cond_f8

    .line 862
    invoke-virtual {v8}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 863
    or-int/lit8 v12, v12, 0x1

    goto :goto_f8

    .line 866
    :cond_d9
    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v8}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v8

    const/16 v17, 0x1

    xor-int/lit8 v18, v8, 0x1

    move/from16 v17, v18

    .line 867
    .local v17, "defaultFlag":S
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v18

    if-eqz v18, :cond_f4

    .line 868
    iget-object v8, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    move/from16 v15, v17

    .end local v17    # "defaultFlag":S
    .local v15, "defaultFlag":S
    invoke-virtual {v8, v15}, Lgnu/expr/Declaration;->getAccessFlags(S)S

    move-result v17

    .end local v15    # "defaultFlag":S
    .restart local v17    # "defaultFlag":S
    goto :goto_f6

    .line 867
    :cond_f4
    move/from16 v15, v17

    .line 869
    :goto_f6
    or-int v12, v12, v17

    .line 872
    .end local v17    # "defaultFlag":S
    :cond_f8
    :goto_f8
    invoke-virtual {v5}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v8

    if-nez v8, :cond_102

    instance-of v8, v5, Lgnu/expr/ClassExp;

    if-eqz v8, :cond_104

    :cond_102
    if-nez v4, :cond_113

    .line 875
    :cond_104
    const-string v8, "lambda"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 876
    iget v8, v2, Lgnu/expr/Compilation;->method_counter:I

    const/4 v15, 0x1

    add-int/2addr v8, v15

    move v15, v8

    iput v15, v2, Lgnu/expr/Compilation;->method_counter:I

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 878
    :cond_113
    const/16 v15, 0x43

    if-ne v13, v15, :cond_11d

    .line 879
    const-string v15, "<clinit>"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12a

    .line 880
    :cond_11d
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_12a

    .line 881
    invoke-static {v4}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 882
    :cond_12a
    :goto_12a
    const/16 v15, 0x400

    invoke-virtual {v0, v15}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v17

    if-eqz v17, :cond_137

    .line 883
    const-string v8, "$C"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :cond_137
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v8

    const/4 v15, 0x2

    if-lt v8, v15, :cond_142

    if-nez v13, :cond_142

    const/4 v8, 0x1

    goto :goto_143

    :cond_142
    const/4 v8, 0x0

    :goto_143
    move/from16 v20, v8

    .line 887
    .local v20, "withContext":Z
    if-eqz v13, :cond_154

    .line 889
    if-eqz v7, :cond_150

    .line 893
    and-int/lit8 v8, v12, -0x3

    const/16 v17, 0x1

    add-int/lit8 v12, v8, 0x1

    goto :goto_154

    .line 899
    :cond_150
    and-int/lit8 v17, v12, 0x2

    add-int/lit8 v12, v17, 0x2

    .line 902
    :cond_154
    :goto_154
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->isInterface()Z

    move-result v17

    if-nez v17, :cond_160

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v17

    if-eqz v17, :cond_162

    .line 903
    :cond_160
    or-int/lit16 v12, v12, 0x400

    .line 907
    :cond_162
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v17

    if-eqz v17, :cond_207

    instance-of v8, v5, Lgnu/expr/ClassExp;

    if-eqz v8, :cond_207

    iget v8, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget v15, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v8, v15, :cond_207

    .line 910
    const/4 v8, 0x0

    .line 911
    .local v8, "inherited":[Lgnu/bytecode/Method;
    const/4 v15, 0x0

    .line 913
    .local v15, "iarg":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v21

    move-object/from16 v37, v21

    move-object/from16 v21, v4

    move-object/from16 v4, v37

    .line 916
    .local v4, "param":Lgnu/expr/Declaration;
    .local v21, "name":Ljava/lang/String;
    :goto_17e
    if-nez v4, :cond_18f

    .line 918
    move/from16 v22, v7

    .end local v7    # "isStatic":Z
    .local v22, "isStatic":Z
    iget-object v7, v0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-eqz v7, :cond_18b

    .line 919
    move-object v7, v5

    move/from16 v23, v6

    goto/16 :goto_20e

    .line 918
    :cond_18b
    move-object v7, v5

    move/from16 v23, v6

    goto :goto_1ac

    .line 921
    .end local v22    # "isStatic":Z
    .restart local v7    # "isStatic":Z
    :cond_18f
    move/from16 v22, v7

    .end local v7    # "isStatic":Z
    .restart local v22    # "isStatic":Z
    invoke-virtual {v4}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v7

    if-eqz v7, :cond_19f

    .line 923
    add-int/lit8 v15, v15, -0x1

    .line 924
    move-object v7, v5

    move/from16 v23, v6

    move-object v5, v8

    goto/16 :goto_1f9

    .line 926
    :cond_19f
    move-object v7, v5

    move/from16 v23, v6

    .end local v5    # "outer":Lgnu/expr/LambdaExp;
    .end local v6    # "key_args":I
    .local v7, "outer":Lgnu/expr/LambdaExp;
    .local v23, "key_args":I
    const-wide/16 v5, 0x2000

    invoke-virtual {v4, v5, v6}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v5

    if-eqz v5, :cond_1ac

    .line 927
    move-object v5, v8

    goto :goto_1f9

    .line 928
    :cond_1ac
    :goto_1ac
    if-nez v8, :cond_1be

    .line 930
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 931
    .local v5, "mangled":Ljava/lang/String;
    new-instance v6, Lgnu/expr/LambdaExp$1;

    invoke-direct {v6, v0, v5}, Lgnu/expr/LambdaExp$1;-><init>(Lgnu/expr/LambdaExp;Ljava/lang/String;)V

    .line 942
    .local v6, "filter":Lgnu/bytecode/Filter;
    move-object/from16 v24, v5

    const/4 v5, 0x2

    .end local v5    # "mangled":Ljava/lang/String;
    .local v24, "mangled":Ljava/lang/String;
    invoke-virtual {v1, v6, v5}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;I)[Lgnu/bytecode/Method;

    move-result-object v8

    .line 944
    .end local v6    # "filter":Lgnu/bytecode/Filter;
    .end local v24    # "mangled":Ljava/lang/String;
    :cond_1be
    const/4 v5, 0x0

    .line 945
    .local v5, "type":Lgnu/bytecode/Type;
    array-length v6, v8

    .local v6, "i":I
    :goto_1c0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_1e8

    .line 947
    aget-object v24, v8, v6

    .line 948
    .local v24, "method":Lgnu/bytecode/Method;
    if-nez v4, :cond_1cd

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v25

    goto :goto_1d3

    :cond_1cd
    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v25

    aget-object v25, v25, v15

    :goto_1d3
    move-object/from16 v26, v25

    .line 950
    .local v26, "ptype":Lgnu/bytecode/Type;
    if-nez v5, :cond_1dc

    .line 951
    move-object/from16 v5, v26

    move/from16 v25, v6

    goto :goto_1e5

    .line 952
    :cond_1dc
    move/from16 v25, v6

    move-object/from16 v6, v26

    .end local v26    # "ptype":Lgnu/bytecode/Type;
    .local v6, "ptype":Lgnu/bytecode/Type;
    .local v25, "i":I
    if-eq v6, v5, :cond_1e5

    .line 955
    if-nez v4, :cond_1f8

    .line 956
    goto :goto_20e

    .line 960
    .end local v6    # "ptype":Lgnu/bytecode/Type;
    .end local v24    # "method":Lgnu/bytecode/Method;
    :cond_1e5
    :goto_1e5
    move/from16 v6, v25

    goto :goto_1c0

    .line 945
    .end local v25    # "i":I
    .local v6, "i":I
    :cond_1e8
    move/from16 v25, v6

    .line 961
    .end local v6    # "i":I
    if-eqz v5, :cond_1f5

    .line 963
    if-eqz v4, :cond_1f2

    .line 964
    invoke-virtual {v4, v5}, Lgnu/expr/Declaration;->setType(Lgnu/bytecode/Type;)V

    goto :goto_1f5

    .line 966
    :cond_1f2
    invoke-virtual {v0, v5}, Lgnu/expr/LambdaExp;->setCoercedReturnType(Lgnu/bytecode/Type;)V

    .line 968
    :cond_1f5
    :goto_1f5
    if-nez v4, :cond_1f8

    .line 969
    goto :goto_20e

    .line 914
    .end local v5    # "type":Lgnu/bytecode/Type;
    :cond_1f8
    move-object v5, v8

    .end local v8    # "inherited":[Lgnu/bytecode/Method;
    .local v5, "inherited":[Lgnu/bytecode/Method;
    :goto_1f9
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    const/4 v6, 0x1

    add-int/2addr v15, v6

    move-object v8, v5

    move-object v5, v7

    move/from16 v7, v22

    move/from16 v6, v23

    goto/16 :goto_17e

    .line 907
    .end local v15    # "iarg":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v22    # "isStatic":Z
    .end local v23    # "key_args":I
    .local v4, "name":Ljava/lang/String;
    .local v5, "outer":Lgnu/expr/LambdaExp;
    .local v6, "key_args":I
    .local v7, "isStatic":Z
    :cond_207
    move-object/from16 v21, v4

    move/from16 v23, v6

    move/from16 v22, v7

    move-object v7, v5

    .line 973
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "outer":Lgnu/expr/LambdaExp;
    .end local v6    # "key_args":I
    .local v7, "outer":Lgnu/expr/LambdaExp;
    .restart local v21    # "name":Ljava/lang/String;
    .restart local v22    # "isStatic":Z
    .restart local v23    # "key_args":I
    :goto_20e
    const/16 v4, 0x400

    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result v4

    if-nez v4, :cond_227

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_21e

    goto :goto_227

    :cond_21e
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v4

    goto :goto_229

    :cond_227
    :goto_227
    sget-object v4, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .line 978
    .local v4, "rtype":Lgnu/bytecode/Type;
    :goto_229
    if-eqz v3, :cond_22f

    if-eq v3, v1, :cond_22f

    const/4 v5, 0x1

    goto :goto_230

    :cond_22f
    const/4 v5, 0x0

    .line 980
    .local v5, "extraArg":I
    :goto_230
    const/4 v6, 0x0

    .line 981
    .local v6, "ctxArg":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v15

    const/4 v8, 0x2

    if-lt v15, v8, :cond_23b

    if-nez v13, :cond_23b

    .line 983
    const/4 v6, 0x1

    .line 985
    :cond_23b
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v15

    .line 986
    .local v15, "nameBaseLength":I
    const/16 v18, 0x0

    move/from16 v8, v18

    .local v8, "i":I
    :goto_243
    if-gt v8, v9, :cond_49c

    .line 988
    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 989
    move/from16 v18, v13

    .end local v13    # "isInitMethod":C
    .local v18, "isInitMethod":C
    iget v13, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v13, v8

    .line 990
    .local v13, "plainArgs":I
    move/from16 v24, v13

    .line 991
    .local v24, "numArgs":I
    if-ne v8, v9, :cond_25a

    if-eqz v10, :cond_25a

    .line 992
    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v10

    move/from16 v10, v24

    goto :goto_25e

    .line 993
    :cond_25a
    move/from16 v25, v10

    move/from16 v10, v24

    .end local v24    # "numArgs":I
    .local v10, "numArgs":I
    .local v25, "varArgs":Z
    :goto_25e
    add-int v24, v5, v10

    move/from16 v26, v15

    .end local v15    # "nameBaseLength":I
    .local v26, "nameBaseLength":I
    add-int v15, v24, v6

    new-array v15, v15, [Lgnu/bytecode/Type;

    .line 994
    .local v15, "atypes":[Lgnu/bytecode/Type;
    if-lez v5, :cond_26d

    .line 995
    const/16 v19, 0x0

    aput-object v3, v15, v19

    goto :goto_26f

    .line 994
    :cond_26d
    const/16 v19, 0x0

    .line 996
    :goto_26f
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v24

    .line 997
    .local v24, "var":Lgnu/expr/Declaration;
    if-eqz v24, :cond_27f

    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v27

    if-eqz v27, :cond_27f

    .line 998
    invoke-virtual/range {v24 .. v24}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v24

    .line 999
    :cond_27f
    const/16 v27, 0x0

    move-object/from16 v28, v24

    move/from16 v3, v27

    .end local v24    # "var":Lgnu/expr/Declaration;
    .local v3, "itype":I
    .local v28, "var":Lgnu/expr/Declaration;
    :goto_285
    if-ge v3, v13, :cond_29b

    .line 1000
    add-int/lit8 v27, v3, 0x1

    .end local v3    # "itype":I
    .local v27, "itype":I
    add-int/2addr v3, v5

    invoke-virtual/range {v28 .. v28}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v24

    aput-object v24, v15, v3

    .line 999
    invoke-virtual/range {v28 .. v28}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v28

    move/from16 v3, v27

    goto :goto_285

    .line 1001
    .end local v27    # "itype":I
    :cond_29b
    if-eqz v6, :cond_2a6

    .line 1002
    array-length v3, v15

    const/16 v17, 0x1

    add-int/lit8 v3, v3, -0x1

    sget-object v24, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    aput-object v24, v15, v3

    .line 1003
    :cond_2a6
    if-ge v13, v10, :cond_30b

    .line 1005
    invoke-virtual/range {v28 .. v28}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    .line 1006
    .local v3, "lastType":Lgnu/bytecode/Type;
    move/from16 v24, v5

    .end local v5    # "extraArg":I
    .local v24, "extraArg":I
    invoke-virtual {v3}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1007
    .local v5, "lastTypeName":Ljava/lang/String;
    move/from16 v27, v6

    .end local v6    # "ctxArg":I
    .local v27, "ctxArg":I
    invoke-virtual/range {p1 .. p1}, Lgnu/bytecode/ClassType;->getClassfileVersion()I

    move-result v6

    move/from16 v29, v10

    .end local v10    # "numArgs":I
    .local v29, "numArgs":I
    const/high16 v10, 0x310000    # 4.49994E-39f

    if-lt v6, v10, :cond_2c5

    instance-of v6, v3, Lgnu/bytecode/ArrayType;

    if-eqz v6, :cond_2c5

    .line 1009
    or-int/lit16 v12, v12, 0x80

    goto :goto_2ca

    .line 1011
    :cond_2c5
    const-string v6, "$V"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1012
    :goto_2ca
    if-gtz v23, :cond_2e3

    move/from16 v6, v16

    .end local v16    # "opt_args":I
    .local v6, "opt_args":I
    if-lt v9, v6, :cond_2e5

    const-string v10, "gnu.lists.LList"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2dd

    instance-of v10, v3, Lgnu/bytecode/ArrayType;

    if-nez v10, :cond_2dd

    goto :goto_2e5

    .line 1026
    :cond_2dd
    move-object/from16 v16, v3

    move-object/from16 v30, v5

    const/4 v3, 0x1

    goto :goto_2fa

    .line 1012
    .end local v6    # "opt_args":I
    .restart local v16    # "opt_args":I
    :cond_2e3
    move/from16 v6, v16

    .line 1021
    .end local v16    # "opt_args":I
    .restart local v6    # "opt_args":I
    :cond_2e5
    :goto_2e5
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    .line 1022
    new-instance v10, Lgnu/bytecode/Variable;

    move-object/from16 v16, v3

    .end local v3    # "lastType":Lgnu/bytecode/Type;
    .local v16, "lastType":Lgnu/bytecode/Type;
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    move-object/from16 v30, v5

    .end local v5    # "lastTypeName":Ljava/lang/String;
    .local v30, "lastTypeName":Ljava/lang/String;
    const-string v5, "argsArray"

    invoke-direct {v10, v5, v3}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v10, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    .line 1024
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1026
    :goto_2fa
    move-object/from16 v5, v28

    .end local v28    # "var":Lgnu/expr/Declaration;
    .local v5, "var":Lgnu/expr/Declaration;
    iput-object v5, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    .line 1027
    array-length v10, v15

    if-eqz v20, :cond_304

    const/16 v17, 0x2

    goto :goto_306

    :cond_304
    const/16 v17, 0x1

    :goto_306
    sub-int v10, v10, v17

    aput-object v16, v15, v10

    goto :goto_316

    .line 1003
    .end local v24    # "extraArg":I
    .end local v27    # "ctxArg":I
    .end local v29    # "numArgs":I
    .end local v30    # "lastTypeName":Ljava/lang/String;
    .local v5, "extraArg":I
    .local v6, "ctxArg":I
    .restart local v10    # "numArgs":I
    .local v16, "opt_args":I
    .restart local v28    # "var":Lgnu/expr/Declaration;
    :cond_30b
    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v29, v10

    move/from16 v6, v16

    move-object/from16 v5, v28

    const/4 v3, 0x1

    .line 1029
    .end local v10    # "numArgs":I
    .end local v16    # "opt_args":I
    .end local v28    # "var":Lgnu/expr/Declaration;
    .local v5, "var":Lgnu/expr/Declaration;
    .local v6, "opt_args":I
    .restart local v24    # "extraArg":I
    .restart local v27    # "ctxArg":I
    .restart local v29    # "numArgs":I
    :goto_316
    if-eqz v20, :cond_31d

    .line 1030
    const-string v10, "$X"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1032
    :cond_31d
    instance-of v10, v7, Lgnu/expr/ClassExp;

    if-nez v10, :cond_333

    instance-of v10, v7, Lgnu/expr/ModuleExp;

    if-eqz v10, :cond_331

    move-object v10, v7

    check-cast v10, Lgnu/expr/ModuleExp;

    const/high16 v3, 0x20000

    invoke-virtual {v10, v3}, Lgnu/expr/ModuleExp;->getFlag(I)Z

    move-result v3

    if-eqz v3, :cond_331

    goto :goto_333

    :cond_331
    const/4 v3, 0x0

    goto :goto_334

    :cond_333
    :goto_333
    const/4 v3, 0x1

    .line 1037
    .local v3, "classSpecified":Z
    :goto_334
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1044
    .end local v21    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1045
    .local v16, "renameCount":I
    move-object/from16 v28, v5

    .end local v5    # "var":Lgnu/expr/Declaration;
    .restart local v28    # "var":Lgnu/expr/Declaration;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    .line 1049
    .local v5, "len":I
    :goto_340
    move-object/from16 v21, p1

    move/from16 v30, v6

    move-object/from16 v6, v21

    .local v6, "t":Lgnu/bytecode/ClassType;
    .local v30, "opt_args":I
    :goto_346
    if-eqz v6, :cond_374

    .line 1051
    invoke-virtual {v6, v10, v15}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v21

    if-eqz v21, :cond_368

    .line 1053
    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1054
    move/from16 v21, v5

    .end local v5    # "len":I
    .local v21, "len":I
    const/16 v5, 0x24

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1055
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "renameCount":I
    .local v5, "renameCount":I
    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1057
    move/from16 v16, v5

    move/from16 v5, v21

    move/from16 v6, v30

    goto :goto_340

    .line 1059
    .end local v21    # "len":I
    .local v5, "len":I
    .restart local v16    # "renameCount":I
    :cond_368
    move/from16 v21, v5

    .end local v5    # "len":I
    .restart local v21    # "len":I
    if-eqz v3, :cond_36d

    .line 1061
    goto :goto_376

    .line 1049
    :cond_36d
    invoke-virtual {v6}, Lgnu/bytecode/ClassType;->getSuperclass()Lgnu/bytecode/ClassType;

    move-result-object v6

    move/from16 v5, v21

    goto :goto_346

    .end local v21    # "len":I
    .restart local v5    # "len":I
    :cond_374
    move/from16 v21, v5

    .line 1063
    .end local v5    # "len":I
    .end local v6    # "t":Lgnu/bytecode/ClassType;
    .restart local v21    # "len":I
    :goto_376
    nop

    .line 1066
    .end local v16    # "renameCount":I
    .end local v21    # "len":I
    invoke-virtual {v1, v10, v15, v4, v12}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v5

    .line 1067
    .local v5, "method":Lgnu/bytecode/Method;
    aput-object v5, v14, v8

    .line 1069
    iget-object v6, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    if-eqz v6, :cond_47a

    array-length v1, v6

    if-lez v1, :cond_47a

    .line 1071
    array-length v1, v6

    .line 1072
    .local v1, "n":I
    new-array v6, v1, [Lgnu/bytecode/ClassType;

    .line 1073
    .local v6, "exceptions":[Lgnu/bytecode/ClassType;
    const/16 v16, 0x0

    move/from16 v31, v3

    move/from16 v3, v16

    .local v3, "j":I
    .local v31, "classSpecified":Z
    :goto_38d
    if-ge v3, v1, :cond_46b

    .line 1075
    const/16 v16, 0x0

    .line 1076
    .local v16, "exception":Lgnu/bytecode/ClassType;
    move/from16 v21, v1

    .end local v1    # "n":I
    .local v21, "n":I
    iget-object v1, v0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    aget-object v1, v1, v3

    .line 1077
    .local v1, "throwsExpr":Lgnu/expr/Expression;
    const/16 v32, 0x0

    .line 1078
    .local v32, "msg":Ljava/lang/String;
    instance-of v0, v1, Lgnu/expr/ReferenceExp;

    if-eqz v0, :cond_3f8

    .line 1080
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    .line 1081
    .local v0, "throwsRef":Lgnu/expr/ReferenceExp;
    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v33

    .line 1082
    .local v33, "decl":Lgnu/expr/Declaration;
    if-eqz v33, :cond_3da

    .line 1084
    move-object/from16 v34, v4

    .end local v4    # "rtype":Lgnu/bytecode/Type;
    .local v34, "rtype":Lgnu/bytecode/Type;
    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v4

    .line 1085
    .local v4, "declValue":Lgnu/expr/Expression;
    move-object/from16 v35, v7

    .end local v7    # "outer":Lgnu/expr/LambdaExp;
    .local v35, "outer":Lgnu/expr/LambdaExp;
    instance-of v7, v4, Lgnu/expr/ClassExp;

    if-eqz v7, :cond_3ba

    .line 1086
    move-object v7, v4

    check-cast v7, Lgnu/expr/ClassExp;

    invoke-virtual {v7, v2}, Lgnu/expr/ClassExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v16

    goto :goto_3d9

    .line 1089
    :cond_3ba
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v4

    .end local v4    # "declValue":Lgnu/expr/Expression;
    .local v36, "declValue":Lgnu/expr/Expression;
    const-string v4, "throws specification "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v33 .. v33}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " has non-class lexical binding"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 1091
    .end local v36    # "declValue":Lgnu/expr/Expression;
    :goto_3d9
    goto :goto_3f7

    .line 1093
    .end local v34    # "rtype":Lgnu/bytecode/Type;
    .end local v35    # "outer":Lgnu/expr/LambdaExp;
    .local v4, "rtype":Lgnu/bytecode/Type;
    .restart local v7    # "outer":Lgnu/expr/LambdaExp;
    :cond_3da
    move-object/from16 v34, v4

    move-object/from16 v35, v7

    .end local v4    # "rtype":Lgnu/bytecode/Type;
    .end local v7    # "outer":Lgnu/expr/LambdaExp;
    .restart local v34    # "rtype":Lgnu/bytecode/Type;
    .restart local v35    # "outer":Lgnu/expr/LambdaExp;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown class "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lgnu/expr/ReferenceExp;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v32, v4

    .line 1094
    .end local v0    # "throwsRef":Lgnu/expr/ReferenceExp;
    .end local v33    # "decl":Lgnu/expr/Declaration;
    :goto_3f7
    goto :goto_449

    .line 1095
    .end local v34    # "rtype":Lgnu/bytecode/Type;
    .end local v35    # "outer":Lgnu/expr/LambdaExp;
    .restart local v4    # "rtype":Lgnu/bytecode/Type;
    .restart local v7    # "outer":Lgnu/expr/LambdaExp;
    :cond_3f8
    move-object/from16 v34, v4

    move-object/from16 v35, v7

    .end local v4    # "rtype":Lgnu/bytecode/Type;
    .end local v7    # "outer":Lgnu/expr/LambdaExp;
    .restart local v34    # "rtype":Lgnu/bytecode/Type;
    .restart local v35    # "outer":Lgnu/expr/LambdaExp;
    instance-of v0, v1, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_449

    .line 1097
    move-object v0, v1

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1098
    .local v0, "value":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_412

    .line 1099
    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    invoke-static {v4}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1100
    :cond_412
    instance-of v4, v0, Lgnu/bytecode/ClassType;

    if-eqz v4, :cond_41d

    .line 1101
    move-object/from16 v16, v0

    check-cast v16, Lgnu/bytecode/ClassType;

    move-object/from16 v4, v16

    goto :goto_41f

    .line 1100
    :cond_41d
    move-object/from16 v4, v16

    .line 1102
    .end local v16    # "exception":Lgnu/bytecode/ClassType;
    .local v4, "exception":Lgnu/bytecode/ClassType;
    :goto_41f
    if-eqz v4, :cond_445

    sget-object v7, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    invoke-virtual {v4, v7}, Lgnu/bytecode/ClassType;->isSubtype(Lgnu/bytecode/Type;)Z

    move-result v7

    if-nez v7, :cond_445

    .line 1104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v0

    .end local v0    # "value":Ljava/lang/Object;
    .local v33, "value":Ljava/lang/Object;
    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " does not extend Throwable"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v16, v4

    goto :goto_449

    .line 1102
    .end local v33    # "value":Ljava/lang/Object;
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_445
    move-object/from16 v33, v0

    .line 1106
    .end local v0    # "value":Ljava/lang/Object;
    move-object/from16 v16, v4

    .end local v4    # "exception":Lgnu/bytecode/ClassType;
    .restart local v16    # "exception":Lgnu/bytecode/ClassType;
    :cond_449
    :goto_449
    if-nez v16, :cond_452

    if-nez v32, :cond_452

    .line 1107
    const-string v32, "invalid throws specification"

    move-object/from16 v0, v32

    goto :goto_454

    .line 1108
    :cond_452
    move-object/from16 v0, v32

    .end local v32    # "msg":Ljava/lang/String;
    .local v0, "msg":Ljava/lang/String;
    :goto_454
    if-eqz v0, :cond_45d

    .line 1110
    const/16 v4, 0x65

    invoke-virtual {v2, v4, v0, v1}, Lgnu/expr/Compilation;->error(CLjava/lang/String;Lgnu/text/SourceLocator;)V

    .line 1111
    sget-object v16, Lgnu/bytecode/Type;->javalangThrowableType:Lgnu/bytecode/ClassType;

    .line 1113
    :cond_45d
    aput-object v16, v6, v3

    .line 1073
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "throwsExpr":Lgnu/expr/Expression;
    .end local v16    # "exception":Lgnu/bytecode/ClassType;
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    goto/16 :goto_38d

    .end local v21    # "n":I
    .end local v34    # "rtype":Lgnu/bytecode/Type;
    .end local v35    # "outer":Lgnu/expr/LambdaExp;
    .local v1, "n":I
    .local v4, "rtype":Lgnu/bytecode/Type;
    .restart local v7    # "outer":Lgnu/expr/LambdaExp;
    :cond_46b
    move/from16 v21, v1

    move-object/from16 v34, v4

    move-object/from16 v35, v7

    .line 1115
    .end local v1    # "n":I
    .end local v3    # "j":I
    .end local v4    # "rtype":Lgnu/bytecode/Type;
    .end local v7    # "outer":Lgnu/expr/LambdaExp;
    .restart local v21    # "n":I
    .restart local v34    # "rtype":Lgnu/bytecode/Type;
    .restart local v35    # "outer":Lgnu/expr/LambdaExp;
    new-instance v0, Lgnu/bytecode/ExceptionsAttr;

    invoke-direct {v0, v5}, Lgnu/bytecode/ExceptionsAttr;-><init>(Lgnu/bytecode/Method;)V

    .line 1116
    .local v0, "attr":Lgnu/bytecode/ExceptionsAttr;
    invoke-virtual {v0, v6}, Lgnu/bytecode/ExceptionsAttr;->setExceptions([Lgnu/bytecode/ClassType;)V

    goto :goto_480

    .line 1069
    .end local v0    # "attr":Lgnu/bytecode/ExceptionsAttr;
    .end local v6    # "exceptions":[Lgnu/bytecode/ClassType;
    .end local v21    # "n":I
    .end local v31    # "classSpecified":Z
    .end local v34    # "rtype":Lgnu/bytecode/Type;
    .end local v35    # "outer":Lgnu/expr/LambdaExp;
    .local v3, "classSpecified":Z
    .restart local v4    # "rtype":Lgnu/bytecode/Type;
    .restart local v7    # "outer":Lgnu/expr/LambdaExp;
    :cond_47a
    move/from16 v31, v3

    move-object/from16 v34, v4

    move-object/from16 v35, v7

    .line 986
    .end local v3    # "classSpecified":Z
    .end local v4    # "rtype":Lgnu/bytecode/Type;
    .end local v5    # "method":Lgnu/bytecode/Method;
    .end local v7    # "outer":Lgnu/expr/LambdaExp;
    .end local v13    # "plainArgs":I
    .end local v15    # "atypes":[Lgnu/bytecode/Type;
    .end local v28    # "var":Lgnu/expr/Declaration;
    .end local v29    # "numArgs":I
    .restart local v34    # "rtype":Lgnu/bytecode/Type;
    .restart local v35    # "outer":Lgnu/expr/LambdaExp;
    :goto_480
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v21, v10

    move/from16 v13, v18

    move/from16 v5, v24

    move/from16 v10, v25

    move/from16 v15, v26

    move/from16 v6, v27

    move/from16 v16, v30

    move-object/from16 v4, v34

    move-object/from16 v7, v35

    goto/16 :goto_243

    .line 1119
    .end local v8    # "i":I
    .end local v18    # "isInitMethod":C
    .end local v24    # "extraArg":I
    .end local v25    # "varArgs":Z
    .end local v26    # "nameBaseLength":I
    .end local v27    # "ctxArg":I
    .end local v30    # "opt_args":I
    .end local v34    # "rtype":Lgnu/bytecode/Type;
    .end local v35    # "outer":Lgnu/expr/LambdaExp;
    .restart local v4    # "rtype":Lgnu/bytecode/Type;
    .local v5, "extraArg":I
    .local v6, "ctxArg":I
    .restart local v7    # "outer":Lgnu/expr/LambdaExp;
    .local v10, "varArgs":Z
    .local v13, "isInitMethod":C
    .local v15, "nameBaseLength":I
    .local v16, "opt_args":I
    .local v21, "name":Ljava/lang/String;
    :cond_49c
    return-void
.end method

.method addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "closureEnvType"    # Lgnu/bytecode/ObjectType;

    .line 789
    move-object v0, p0

    .line 790
    .local v0, "sc":Lgnu/expr/ScopeExp;
    :goto_1
    if-eqz v0, :cond_a

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-nez v1, :cond_a

    .line 791
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_1

    .line 795
    :cond_a
    if-eqz v0, :cond_12

    .line 796
    move-object v1, v0

    check-cast v1, Lgnu/expr/ClassExp;

    iget-object v1, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    .local v1, "ctype":Lgnu/bytecode/ClassType;
    goto :goto_1a

    .line 798
    .end local v1    # "ctype":Lgnu/bytecode/ClassType;
    :cond_12
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 799
    .restart local v1    # "ctype":Lgnu/bytecode/ClassType;
    :goto_1a
    invoke-virtual {p0, v1, p1, p2}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 800
    return-void
.end method

.method public allocChildClasses(Lgnu/expr/Compilation;)V
    .registers 10
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1124
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v0

    .line 1126
    .local v0, "main":Lgnu/bytecode/Method;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1127
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    .line 1129
    :cond_13
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 1132
    .local v1, "decl":Lgnu/expr/Declaration;
    :goto_17
    iget-object v2, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v1, v2, :cond_28

    iget-object v2, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_28

    .line 1134
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    iget-object v3, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 1136
    :cond_28
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_5a

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v2

    const/4 v5, 0x2

    if-lt v2, v5, :cond_5a

    iget-object v2, p0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-nez v2, :cond_3e

    if-nez v1, :cond_5a

    goto :goto_4b

    :cond_3e
    iget-object v5, p0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_45

    if-ne v1, v2, :cond_5a

    goto :goto_4b

    :cond_45
    invoke-virtual {v2}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v2

    if-ne v1, v2, :cond_5a

    .line 1142
    :goto_4b
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    sget-object v5, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v6, "$ctx"

    invoke-virtual {v2, v4, v5, v6}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 1146
    .local v2, "var":Lgnu/bytecode/Variable;
    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1148
    .end local v2    # "var":Lgnu/bytecode/Variable;
    :cond_5a
    if-nez v1, :cond_67

    .line 1149
    nop

    .line 1180
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    .line 1182
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFrame(Lgnu/expr/Compilation;)V

    .line 1184
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocChildMethods(Lgnu/expr/Compilation;)V

    .line 1185
    return-void

    .line 1150
    :cond_67
    iget-object v2, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1152
    .restart local v2    # "var":Lgnu/bytecode/Variable;
    if-nez v2, :cond_ab

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {v1}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 1154
    goto :goto_ab

    .line 1155
    :cond_78
    invoke-virtual {v1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v1}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v5

    if-nez v5, :cond_89

    .line 1159
    invoke-virtual {v1, v4}, Lgnu/expr/Declaration;->allocateVariable(Lgnu/bytecode/CodeAttr;)Lgnu/bytecode/Variable;

    move-result-object v2

    goto :goto_ab

    .line 1169
    :cond_89
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgnu/expr/Compilation;->mangleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 1171
    .local v5, "vname":Ljava/lang/String;
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v6

    invoke-virtual {v6}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v6

    .line 1172
    .local v6, "vtype":Lgnu/bytecode/Type;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v4

    iput-object v4, v1, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    move-object v2, v4

    .line 1174
    invoke-virtual {v2, v3}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 1177
    .end local v5    # "vname":Ljava/lang/String;
    .end local v6    # "vtype":Lgnu/bytecode/Type;
    :cond_ab
    :goto_ab
    invoke-virtual {v1}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v1

    .line 1178
    .end local v2    # "var":Lgnu/bytecode/Variable;
    goto/16 :goto_17
.end method

.method allocChildMethods(Lgnu/expr/Compilation;)V
    .registers 6
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1206
    iget-object v0, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v0, "child":Lgnu/expr/LambdaExp;
    :goto_2
    if-eqz v0, :cond_4f

    .line 1209
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_17

    .line 1212
    invoke-virtual {v0, p0, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 1214
    :cond_17
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_4c

    .line 1216
    move-object v1, v0

    check-cast v1, Lgnu/expr/ClassExp;

    .line 1217
    .local v1, "cl":Lgnu/expr/ClassExp;
    invoke-virtual {v1}, Lgnu/expr/ClassExp;->getNeedsClosureEnv()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 1220
    instance-of v2, p0, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_3b

    instance-of v2, p0, Lgnu/expr/ClassExp;

    if-eqz v2, :cond_2d

    goto :goto_3b

    .line 1224
    :cond_2d
    iget-object v2, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_32

    goto :goto_34

    :cond_32
    iget-object v2, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1227
    .local v2, "parentFrame":Lgnu/bytecode/Variable;
    :goto_34
    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .local v3, "parentFrameType":Lgnu/bytecode/ClassType;
    goto :goto_42

    .line 1221
    .end local v2    # "parentFrame":Lgnu/bytecode/Variable;
    .end local v3    # "parentFrameType":Lgnu/bytecode/ClassType;
    :cond_3b
    :goto_3b
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1229
    .restart local v3    # "parentFrameType":Lgnu/bytecode/ClassType;
    :goto_42
    iget-object v2, v1, Lgnu/expr/ClassExp;->instanceType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v3}, Lgnu/bytecode/ClassType;->setOuterLink(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Field;

    move-result-object v2

    iput-object v2, v1, Lgnu/expr/ClassExp;->staticLinkField:Lgnu/bytecode/Field;

    iput-object v2, v1, Lgnu/expr/ClassExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1207
    .end local v1    # "cl":Lgnu/expr/ClassExp;
    .end local v3    # "parentFrameType":Lgnu/bytecode/ClassType;
    :cond_4c
    iget-object v0, v0, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_2

    .line 1234
    .end local v0    # "child":Lgnu/expr/LambdaExp;
    :cond_4f
    return-void
.end method

.method allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .registers 12
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 573
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v0, :cond_d

    .line 574
    iget-object v0, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v0, v0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    return-object v0

    .line 575
    :cond_d
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v0

    .line 576
    .local v0, "needsClosure":Z
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getHeapFrameType()Lgnu/bytecode/ClassType;

    move-result-object v1

    goto :goto_1e

    :cond_1c
    iget-object v1, p1, Lgnu/expr/Compilation;->mainClass:Lgnu/bytecode/ClassType;

    .line 578
    .local v1, "frameType":Lgnu/bytecode/ClassType;
    :goto_1e
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_27

    const-string v3, "lambda"

    goto :goto_2b

    :cond_27
    invoke-static {v2}, Lgnu/expr/Compilation;->mangleNameIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "fname":Ljava/lang/String;
    :goto_2b
    const/16 v4, 0x10

    .line 582
    .local v4, "fflags":I
    iget-object v5, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const/4 v6, 0x1

    if-eqz v5, :cond_ae

    iget-object v5, v5, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v5, v5, Lgnu/expr/ModuleExp;

    if-eqz v5, :cond_ae

    .line 584
    iget-object v5, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v5}, Lgnu/expr/Declaration;->needsExternalAccess()Z

    move-result v5

    .line 585
    .local v5, "external_access":Z
    if-eqz v5, :cond_53

    .line 586
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "$Prvt$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 587
    :cond_53
    iget-object v7, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    const-wide/16 v8, 0x800

    invoke-virtual {v7, v8, v9}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v7

    if-eqz v7, :cond_6d

    .line 589
    or-int/lit8 v4, v4, 0x8

    .line 593
    iget-object v7, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v7, v7, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    check-cast v7, Lgnu/expr/ModuleExp;

    invoke-virtual {v7}, Lgnu/expr/ModuleExp;->isStatic()Z

    move-result v7

    if-nez v7, :cond_6d

    .line 594
    and-int/lit8 v4, v4, -0x11

    .line 599
    :cond_6d
    iget-object v7, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_7b

    if-nez v5, :cond_7b

    iget-boolean v7, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v7, :cond_7d

    .line 600
    :cond_7b
    or-int/lit8 v4, v4, 0x1

    .line 601
    :cond_7d
    iget v7, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v7, v7, 0x800

    if-eqz v7, :cond_ad

    .line 603
    move-object v7, v3

    .line 604
    .local v7, "fname0":Ljava/lang/String;
    iget v8, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v9, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v8, v9, :cond_8b

    move v6, v8

    .line 605
    .local v6, "suffix":I
    :cond_8b
    :goto_8b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "suffix":I
    .local v9, "suffix":I
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-virtual {v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v6

    if-nez v6, :cond_ab

    goto :goto_ad

    :cond_ab
    move v6, v9

    goto :goto_8b

    .line 608
    .end local v5    # "external_access":Z
    .end local v7    # "fname0":Ljava/lang/String;
    .end local v9    # "suffix":I
    :cond_ad
    :goto_ad
    goto :goto_ce

    .line 611
    :cond_ae
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "$Fn"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    add-int/2addr v7, v6

    iput v7, p1, Lgnu/expr/Compilation;->localFieldIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    if-nez v0, :cond_ce

    .line 613
    or-int/lit8 v4, v4, 0x8

    .line 615
    :cond_ce
    :goto_ce
    sget-object v5, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 616
    .local v5, "rtype":Lgnu/bytecode/Type;
    invoke-virtual {v1, v3, v5, v4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v6

    .line 617
    .local v6, "field":Lgnu/bytecode/Field;
    iget-object v7, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v7, :cond_da

    .line 618
    iput-object v6, v7, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 619
    :cond_da
    return-object v6
.end method

.method public allocFrame(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1238
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v0, :cond_2c

    .line 1241
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_23

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_d

    goto :goto_23

    .line 1245
    :cond_d
    new-instance v0, Lgnu/bytecode/ClassType;

    const-string v1, "frame"

    invoke-virtual {p1, v1}, Lgnu/expr/Compilation;->generateClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/bytecode/ClassType;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v0, "frameType":Lgnu/bytecode/ClassType;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getModuleType()Lgnu/bytecode/ClassType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->setSuper(Lgnu/bytecode/ClassType;)V

    .line 1247
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->addClass(Lgnu/bytecode/ClassType;)V

    goto :goto_27

    .line 1242
    .end local v0    # "frameType":Lgnu/bytecode/ClassType;
    :cond_23
    :goto_23
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1249
    .restart local v0    # "frameType":Lgnu/bytecode/ClassType;
    :goto_27
    iget-object v1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1251
    .end local v0    # "frameType":Lgnu/bytecode/ClassType;
    :cond_2c
    return-void
.end method

.method allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "outer"    # Lgnu/expr/LambdaExp;
    .param p2, "comp"    # Lgnu/expr/Compilation;

    .line 1190
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1191
    const/4 v0, 0x0

    .local v0, "closureEnvType":Lgnu/bytecode/ObjectType;
    goto :goto_27

    .line 1192
    .end local v0    # "closureEnvType":Lgnu/bytecode/ObjectType;
    :cond_8
    instance-of v0, p1, Lgnu/expr/ClassExp;

    if-nez v0, :cond_23

    instance-of v0, p1, Lgnu/expr/ModuleExp;

    if-eqz v0, :cond_11

    goto :goto_23

    .line 1196
    :cond_11
    move-object v0, p1

    .line 1197
    .local v0, "owner":Lgnu/expr/LambdaExp;
    :goto_12
    iget-object v1, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v1, :cond_1b

    .line 1198
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_12

    .line 1199
    :cond_1b
    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    move-object v0, v1

    .local v1, "closureEnvType":Lgnu/bytecode/ObjectType;
    goto :goto_27

    .line 1193
    .end local v0    # "owner":Lgnu/expr/LambdaExp;
    .end local v1    # "closureEnvType":Lgnu/bytecode/ObjectType;
    :cond_23
    :goto_23
    invoke-virtual {p1, p2}, Lgnu/expr/LambdaExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 1201
    .local v0, "closureEnvType":Lgnu/bytecode/ObjectType;
    :goto_27
    invoke-virtual {p0, p2, v0}, Lgnu/expr/LambdaExp;->addMethodFor(Lgnu/expr/Compilation;Lgnu/bytecode/ObjectType;)V

    .line 1202
    return-void
.end method

.method allocParameters(Lgnu/expr/Compilation;)V
    .registers 7
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1255
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 1257
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    const/4 v1, 0x0

    .line 1258
    .local v1, "i":I
    const/4 v2, 0x0

    .line 1260
    .local v2, "j":I
    iget-object v3, v0, Lgnu/bytecode/CodeAttr;->locals:Lgnu/bytecode/LocalVarsAttr;

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/bytecode/LocalVarsAttr;->enterScope(Lgnu/bytecode/Scope;)V

    .line 1261
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v3

    .line 1262
    .local v3, "line":I
    if-lez v3, :cond_1c

    .line 1263
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lgnu/bytecode/CodeAttr;->putLineNumber(Ljava/lang/String;I)V

    .line 1265
    :cond_1c
    iget-object v4, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v4, :cond_23

    .line 1266
    invoke-virtual {v4, v0}, Lgnu/bytecode/Variable;->allocateLocal(Lgnu/bytecode/CodeAttr;)V

    .line 1267
    :cond_23
    return-void
.end method

.method public apply(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "ctx"    # Lgnu/mapping/CallContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setIndexes()V

    .line 1712
    new-instance v0, Lgnu/expr/Closure;

    invoke-direct {v0, p0, p1}, Lgnu/expr/Closure;-><init>(Lgnu/expr/LambdaExp;Lgnu/mapping/CallContext;)V

    invoke-virtual {p1, v0}, Lgnu/mapping/CallContext;->writeValue(Ljava/lang/Object;)V

    .line 1713
    return-void
.end method

.method public capture(Lgnu/expr/Declaration;)V
    .registers 4
    .param p1, "decl"    # Lgnu/expr/Declaration;

    .line 42
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 44
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    if-nez v0, :cond_21

    invoke-virtual {p1}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v0

    if-nez v0, :cond_21

    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_21

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-nez v0, :cond_21

    .line 48
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "heapFrame"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    .line 50
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 51
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isPublic()Z

    move-result v0

    if-nez v0, :cond_31

    .line 53
    iget-object v0, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    iput-object v0, p1, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    .line 54
    iput-object p1, p0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    .line 57
    :cond_31
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .registers 9
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "target"    # Lgnu/expr/Target;

    .line 665
    instance-of v0, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v0, :cond_5

    .line 666
    return-void

    .line 668
    :cond_5
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 733
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v1

    .line 734
    .local v1, "outer":Lgnu/expr/LambdaExp;
    sget-object v2, Lgnu/expr/Compilation;->typeModuleMethod:Lgnu/bytecode/ClassType;

    .line 735
    .local v2, "rtype":Lgnu/bytecode/Type;
    iget v3, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_3c

    iget-boolean v3, p1, Lgnu/expr/Compilation;->immediate:Z

    if-eqz v3, :cond_1e

    instance-of v3, v1, Lgnu/expr/ModuleExp;

    if-eqz v3, :cond_1e

    goto :goto_3c

    .line 746
    :cond_1e
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v3

    .line 747
    .local v3, "field":Lgnu/bytecode/Field;
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getStaticFlag()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 748
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_51

    .line 751
    :cond_2c
    iget-object v4, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 752
    .local v4, "parent":Lgnu/expr/LambdaExp;
    iget-object v5, v4, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_33

    goto :goto_35

    :cond_33
    iget-object v5, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 755
    .local v5, "frame":Lgnu/bytecode/Variable;
    :goto_35
    invoke-virtual {v0, v5}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 756
    invoke-virtual {v0, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    goto :goto_51

    .line 738
    .end local v3    # "field":Lgnu/bytecode/Field;
    .end local v4    # "parent":Lgnu/expr/LambdaExp;
    .end local v5    # "frame":Lgnu/bytecode/Variable;
    :cond_3c
    :goto_3c
    iget-object v3, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v3, :cond_47

    .line 739
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 740
    :cond_47
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 741
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 742
    invoke-static {p0, p1}, Lgnu/expr/ProcInitializer;->emitLoadModuleMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 760
    .end local v1    # "outer":Lgnu/expr/LambdaExp;
    :goto_51
    invoke-virtual {p2, p1, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 761
    return-void
.end method

.method compileAsMethod(Lgnu/expr/Compilation;)V
    .registers 27
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1495
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1b6

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_1b6

    .line 1497
    :cond_12
    iget v2, v0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lgnu/expr/LambdaExp;->flags:I

    .line 1498
    iget-object v2, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v2, :cond_1d

    .line 1499
    return-void

    .line 1500
    :cond_1d
    iget-object v2, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1501
    .local v2, "save_method":Lgnu/bytecode/Method;
    iget-object v3, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1502
    .local v3, "save_lambda":Lgnu/expr/LambdaExp;
    iput-object v0, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1504
    iget-object v4, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1505
    .local v4, "method":Lgnu/bytecode/Method;
    invoke-virtual {v4}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v6

    .line 1506
    .local v6, "isStatic":Z
    iget-object v7, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 1507
    .local v7, "numStubs":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->restArgType()Lgnu/bytecode/Type;

    move-result-object v9

    .line 1509
    .local v9, "restArgType":Lgnu/bytecode/Type;
    const/4 v10, 0x0

    .line 1510
    .local v10, "saveDeclFlags":[J
    if-lez v7, :cond_53

    .line 1512
    iget v11, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v11, v7

    new-array v10, v11, [J

    .line 1513
    const/4 v11, 0x0

    .line 1514
    .local v11, "k":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v12

    .line 1515
    .local v12, "decl":Lgnu/expr/Declaration;
    :goto_42
    iget v13, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v13, v7

    if-ge v11, v13, :cond_53

    .line 1516
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "k":I
    .local v13, "k":I
    iget-wide v14, v12, Lgnu/expr/Declaration;->flags:J

    aput-wide v14, v10, v11

    .line 1515
    invoke-virtual {v12}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v12

    move v11, v13

    goto :goto_42

    .line 1519
    .end local v12    # "decl":Lgnu/expr/Declaration;
    .end local v13    # "k":I
    :cond_53
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_5c

    const/4 v11, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v11, 0x0

    .line 1521
    .local v11, "ctxArg":Z
    :goto_5d
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5e
    if-gt v12, v7, :cond_1a7

    .line 1523
    iget-object v13, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    aget-object v13, v13, v12

    iput-object v13, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1524
    if-ge v12, v7, :cond_161

    .line 1526
    iget-object v14, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v14}, Lgnu/bytecode/Method;->startCode()Lgnu/bytecode/CodeAttr;

    move-result-object v14

    .line 1527
    .local v14, "code":Lgnu/bytecode/CodeAttr;
    add-int/lit8 v15, v12, 0x1

    .line 1529
    .local v15, "toCall":I
    :goto_70
    if-ge v15, v7, :cond_7d

    iget-object v13, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v13, v13, v15

    instance-of v13, v13, Lgnu/expr/QuoteExp;

    if-eqz v13, :cond_7d

    .line 1530
    add-int/lit8 v15, v15, 0x1

    goto :goto_70

    .line 1531
    :cond_7d
    if-ne v15, v7, :cond_83

    if-eqz v9, :cond_83

    const/4 v13, 0x1

    goto :goto_84

    :cond_83
    const/4 v13, 0x0

    .line 1533
    .local v13, "varArgs":Z
    :goto_84
    iget-object v8, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1534
    .local v8, "callContextSave":Lgnu/bytecode/Variable;
    move-object/from16 v17, v4

    .end local v4    # "method":Lgnu/bytecode/Method;
    .local v17, "method":Lgnu/bytecode/Method;
    invoke-virtual {v14, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    .line 1535
    .local v4, "var":Lgnu/bytecode/Variable;
    if-nez v6, :cond_9f

    .line 1537
    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v18

    if-eqz v18, :cond_99

    .line 1539
    iput-object v4, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1540
    :cond_99
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Lgnu/bytecode/CodeAttr;->getArg(I)Lgnu/bytecode/Variable;

    move-result-object v4

    goto :goto_a0

    .line 1535
    :cond_9f
    const/4 v5, 0x1

    .line 1542
    :goto_a0
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v16

    .line 1543
    .local v16, "decl":Lgnu/expr/Declaration;
    const/16 v19, 0x0

    move-object/from16 v5, v16

    move/from16 v24, v19

    move-object/from16 v19, v3

    move/from16 v3, v24

    .end local v16    # "decl":Lgnu/expr/Declaration;
    .local v3, "j":I
    .local v5, "decl":Lgnu/expr/Declaration;
    .local v19, "save_lambda":Lgnu/expr/LambdaExp;
    :goto_ae
    move-object/from16 v20, v2

    .end local v2    # "save_method":Lgnu/bytecode/Method;
    .local v20, "save_method":Lgnu/bytecode/Method;
    iget v2, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v2, v12

    if-ge v3, v2, :cond_d5

    .line 1545
    move v2, v7

    move-object/from16 v21, v8

    .end local v7    # "numStubs":I
    .end local v8    # "callContextSave":Lgnu/bytecode/Variable;
    .local v2, "numStubs":I
    .local v21, "callContextSave":Lgnu/bytecode/Variable;
    iget-wide v7, v5, Lgnu/expr/Declaration;->flags:J

    const-wide/16 v22, 0x40

    or-long v7, v7, v22

    iput-wide v7, v5, Lgnu/expr/Declaration;->flags:J

    .line 1546
    iput-object v4, v5, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1547
    invoke-virtual {v14, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1548
    invoke-virtual {v4}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v4

    .line 1543
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    move v7, v2

    move-object/from16 v2, v20

    move-object/from16 v8, v21

    goto :goto_ae

    .end local v2    # "numStubs":I
    .end local v21    # "callContextSave":Lgnu/bytecode/Variable;
    .restart local v7    # "numStubs":I
    .restart local v8    # "callContextSave":Lgnu/bytecode/Variable;
    :cond_d5
    move v2, v7

    move-object/from16 v21, v8

    .line 1550
    .end local v3    # "j":I
    .end local v7    # "numStubs":I
    .end local v8    # "callContextSave":Lgnu/bytecode/Variable;
    .restart local v2    # "numStubs":I
    .restart local v21    # "callContextSave":Lgnu/bytecode/Variable;
    if-eqz v11, :cond_dc

    move-object v3, v4

    goto :goto_dd

    :cond_dc
    const/4 v3, 0x0

    :goto_dd
    iput-object v3, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1551
    move v3, v12

    .restart local v3    # "j":I
    :goto_e0
    if-ge v3, v15, :cond_f8

    .line 1553
    invoke-virtual {v5}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v7

    invoke-static {v7}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v7

    .line 1554
    .local v7, "paramTarget":Lgnu/expr/Target;
    iget-object v8, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v8, v8, v3

    invoke-virtual {v8, v1, v7}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 1551
    .end local v7    # "paramTarget":Lgnu/expr/Target;
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v5

    goto :goto_e0

    .line 1556
    .end local v3    # "j":I
    :cond_f8
    if-eqz v13, :cond_13e

    .line 1559
    invoke-virtual {v9}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1560
    .local v3, "lastTypeName":Ljava/lang/String;
    const-string v7, "gnu.lists.LList"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10e

    .line 1561
    new-instance v7, Lgnu/expr/QuoteExp;

    sget-object v8, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .local v7, "arg":Lgnu/expr/Expression;
    goto :goto_11d

    .line 1562
    .end local v7    # "arg":Lgnu/expr/Expression;
    :cond_10e
    const-string v7, "java.lang.Object[]"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_123

    .line 1563
    new-instance v7, Lgnu/expr/QuoteExp;

    sget-object v8, Lgnu/mapping/Values;->noArgs:[Ljava/lang/Object;

    invoke-direct {v7, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    .line 1566
    .restart local v7    # "arg":Lgnu/expr/Expression;
    :goto_11d
    invoke-virtual {v7, v1, v9}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    move-object/from16 v22, v5

    goto :goto_140

    .line 1565
    .end local v7    # "arg":Lgnu/expr/Expression;
    :cond_123
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v5

    .end local v5    # "decl":Lgnu/expr/Declaration;
    .local v22, "decl":Lgnu/expr/Declaration;
    const-string v5, "unimplemented #!rest type "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1556
    .end local v3    # "lastTypeName":Ljava/lang/String;
    .end local v22    # "decl":Lgnu/expr/Declaration;
    .restart local v5    # "decl":Lgnu/expr/Declaration;
    :cond_13e
    move-object/from16 v22, v5

    .line 1568
    .end local v5    # "decl":Lgnu/expr/Declaration;
    .restart local v22    # "decl":Lgnu/expr/Declaration;
    :goto_140
    if-eqz v11, :cond_145

    .line 1569
    invoke-virtual {v14, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1570
    :cond_145
    if-eqz v6, :cond_14f

    .line 1571
    iget-object v3, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    aget-object v3, v3, v15

    invoke-virtual {v14, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_156

    .line 1573
    :cond_14f
    iget-object v3, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    aget-object v3, v3, v15

    invoke-virtual {v14, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 1574
    :goto_156
    invoke-virtual {v14}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 1575
    const/4 v3, 0x0

    iput-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 1576
    move-object/from16 v3, v21

    .end local v21    # "callContextSave":Lgnu/bytecode/Variable;
    .local v3, "callContextSave":Lgnu/bytecode/Variable;
    iput-object v3, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1577
    .end local v3    # "callContextSave":Lgnu/bytecode/Variable;
    .end local v4    # "var":Lgnu/bytecode/Variable;
    .end local v13    # "varArgs":Z
    .end local v14    # "code":Lgnu/bytecode/CodeAttr;
    .end local v15    # "toCall":I
    .end local v22    # "decl":Lgnu/expr/Declaration;
    goto :goto_19a

    .line 1580
    .end local v17    # "method":Lgnu/bytecode/Method;
    .end local v19    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v20    # "save_method":Lgnu/bytecode/Method;
    .local v2, "save_method":Lgnu/bytecode/Method;
    .local v3, "save_lambda":Lgnu/expr/LambdaExp;
    .local v4, "method":Lgnu/bytecode/Method;
    .local v7, "numStubs":I
    :cond_161
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move v2, v7

    .end local v3    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v4    # "method":Lgnu/bytecode/Method;
    .end local v7    # "numStubs":I
    .local v2, "numStubs":I
    .restart local v17    # "method":Lgnu/bytecode/Method;
    .restart local v19    # "save_lambda":Lgnu/expr/LambdaExp;
    .restart local v20    # "save_method":Lgnu/bytecode/Method;
    if-eqz v10, :cond_183

    .line 1582
    const/4 v3, 0x0

    .line 1583
    .local v3, "k":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 1584
    .local v4, "decl":Lgnu/expr/Declaration;
    :goto_16f
    iget v5, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v5, v2

    if-ge v3, v5, :cond_183

    .line 1586
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    aget-wide v7, v10, v3

    iput-wide v7, v4, Lgnu/expr/Declaration;->flags:J

    .line 1587
    const/4 v7, 0x0

    iput-object v7, v4, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 1584
    invoke-virtual {v4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    move v3, v5

    goto :goto_16f

    .line 1590
    .end local v4    # "decl":Lgnu/expr/Declaration;
    .end local v5    # "k":I
    :cond_183
    iget-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3}, Lgnu/bytecode/Method;->initCode()V

    .line 1591
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 1592
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 1593
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 1595
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileBody(Lgnu/expr/Compilation;)V

    .line 1596
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 1597
    invoke-virtual/range {p0 .. p1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 1521
    :goto_19a
    add-int/lit8 v12, v12, 0x1

    move v7, v2

    move-object/from16 v4, v17

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5e

    .end local v17    # "method":Lgnu/bytecode/Method;
    .end local v19    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v20    # "save_method":Lgnu/bytecode/Method;
    .local v2, "save_method":Lgnu/bytecode/Method;
    .local v3, "save_lambda":Lgnu/expr/LambdaExp;
    .local v4, "method":Lgnu/bytecode/Method;
    .restart local v7    # "numStubs":I
    :cond_1a7
    move-object/from16 v20, v2

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    .line 1601
    .end local v2    # "save_method":Lgnu/bytecode/Method;
    .end local v3    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v4    # "method":Lgnu/bytecode/Method;
    .end local v12    # "i":I
    .restart local v17    # "method":Lgnu/bytecode/Method;
    .restart local v19    # "save_lambda":Lgnu/expr/LambdaExp;
    .restart local v20    # "save_method":Lgnu/bytecode/Method;
    move-object/from16 v3, v20

    .end local v20    # "save_method":Lgnu/bytecode/Method;
    .local v3, "save_method":Lgnu/bytecode/Method;
    iput-object v3, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    .line 1602
    move-object/from16 v4, v19

    .end local v19    # "save_lambda":Lgnu/expr/LambdaExp;
    .local v4, "save_lambda":Lgnu/expr/LambdaExp;
    iput-object v4, v1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1603
    return-void

    .line 1496
    .end local v3    # "save_method":Lgnu/bytecode/Method;
    .end local v4    # "save_lambda":Lgnu/expr/LambdaExp;
    .end local v6    # "isStatic":Z
    .end local v7    # "numStubs":I
    .end local v9    # "restArgType":Lgnu/bytecode/Type;
    .end local v10    # "saveDeclFlags":[J
    .end local v11    # "ctxArg":Z
    .end local v17    # "method":Lgnu/bytecode/Method;
    :cond_1b6
    :goto_1b6
    return-void
.end method

.method public compileBody(Lgnu/expr/Compilation;)V
    .registers 6
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1608
    iget-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1609
    .local v0, "callContextSave":Lgnu/bytecode/Variable;
    const/4 v1, 0x0

    iput-object v1, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1610
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_27

    .line 1612
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v1

    const-string v2, "$ctx"

    invoke-virtual {v1, v2}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 1613
    .local v1, "var":Lgnu/bytecode/Variable;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    sget-object v3, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    if-ne v2, v3, :cond_22

    .line 1614
    iput-object v1, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1615
    :cond_22
    invoke-static {p1}, Lgnu/expr/ConsumerTarget;->makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;

    move-result-object v1

    .line 1616
    .local v1, "target":Lgnu/expr/Target;
    goto :goto_2f

    .line 1618
    .end local v1    # "target":Lgnu/expr/Target;
    :cond_27
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-static {v1}, Lgnu/expr/Target;->pushValue(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v1

    .line 1619
    .restart local v1    # "target":Lgnu/expr/Target;
    :goto_2f
    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v2}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3a

    iget-object v3, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    goto :goto_3b

    :cond_3a
    move-object v3, p0

    :goto_3b
    invoke-virtual {v2, p1, v1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/expr/Expression;)V

    .line 1621
    iput-object v0, p1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1622
    return-void
.end method

.method public compileEnd(Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 538
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 539
    .local v0, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-nez v1, :cond_32

    .line 541
    iget-object v1, p1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v1}, Lgnu/bytecode/Method;->reachableHere()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_29

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 544
    :cond_29
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    .line 545
    :cond_2c
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->popScope(Lgnu/bytecode/CodeAttr;)V

    .line 546
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 549
    :cond_32
    iget-object v1, p0, Lgnu/expr/LambdaExp;->firstChild:Lgnu/expr/LambdaExp;

    .local v1, "child":Lgnu/expr/LambdaExp;
    :goto_34
    if-eqz v1, :cond_48

    .line 551
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getCanRead()Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_45

    .line 553
    invoke-virtual {v1, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 555
    :cond_45
    iget-object v1, v1, Lgnu/expr/LambdaExp;->nextSibling:Lgnu/expr/LambdaExp;

    goto :goto_34

    .line 558
    .end local v1    # "child":Lgnu/expr/LambdaExp;
    :cond_48
    iget-object v1, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_4f

    .line 559
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateConstructor(Lgnu/expr/LambdaExp;)V

    .line 560
    :cond_4f
    return-void
.end method

.method public compileSetField(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 649
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v0, :cond_b

    .line 650
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/expr/LambdaExp;->allocMethod(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;)V

    .line 651
    :cond_b
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->allocFieldFor(Lgnu/expr/Compilation;)Lgnu/bytecode/Field;

    move-result-object v0

    .line 652
    .local v0, "field":Lgnu/bytecode/Field;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 653
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, p1, v1}, Lgnu/expr/LambdaExp;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_21

    .line 656
    :cond_1b
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->compileAsMethod(Lgnu/expr/Compilation;)V

    .line 657
    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->addApplyMethod(Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    .line 660
    :goto_21
    new-instance v1, Lgnu/expr/ProcInitializer;

    invoke-direct {v1, p0, p1, v0}, Lgnu/expr/ProcInitializer;-><init>(Lgnu/expr/LambdaExp;Lgnu/expr/Compilation;Lgnu/bytecode/Field;)V

    iget-object v1, v1, Lgnu/expr/ProcInitializer;->field:Lgnu/bytecode/Field;

    return-object v1
.end method

.method public declareClosureEnv()Lgnu/bytecode/Variable;
    .registers 9

    .line 428
    iget-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-nez v0, :cond_c0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 430
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 431
    .local v0, "parent":Lgnu/expr/LambdaExp;
    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_16

    .line 432
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 433
    :cond_16
    iget-object v1, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    iget-object v1, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 435
    .local v1, "parentFrame":Lgnu/bytecode/Variable;
    :goto_1d
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v2

    const-string v3, "*init*"

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 436
    iget-object v2, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {p0, v2}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto/16 :goto_c0

    .line 437
    :cond_39
    iget-object v2, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v2, :cond_4c

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getNeedsStaticLink()Z

    move-result v2

    if-nez v2, :cond_4c

    instance-of v2, v0, Lgnu/expr/ModuleExp;

    if-nez v2, :cond_4c

    .line 439
    const/4 v2, 0x0

    iput-object v2, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto/16 :goto_c0

    .line 440
    :cond_4c
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassGenerated()Z

    move-result v2

    const-string v4, "closureEnv"

    if-nez v2, :cond_a3

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_a3

    .line 442
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v2

    .line 443
    .local v2, "primMethod":Lgnu/bytecode/Method;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 444
    .local v3, "isInit":Z
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v5

    if-nez v5, :cond_79

    if-nez v3, :cond_79

    .line 446
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v4

    iput-object v4, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_a2

    .line 449
    :cond_79
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 450
    .local v5, "envType":Lgnu/bytecode/Type;
    new-instance v6, Lgnu/bytecode/Variable;

    invoke-direct {v6, v4, v5}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 452
    if-eqz v3, :cond_92

    .line 453
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/expr/LambdaExp;->declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;

    move-result-object v4

    .local v4, "prev":Lgnu/bytecode/Variable;
    goto :goto_93

    .line 455
    .end local v4    # "prev":Lgnu/bytecode/Variable;
    :cond_92
    const/4 v4, 0x0

    .line 456
    .restart local v4    # "prev":Lgnu/bytecode/Variable;
    :goto_93
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v6

    iget-object v7, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v6, v4, v7}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 457
    iget-object v6, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 459
    .end local v2    # "primMethod":Lgnu/bytecode/Method;
    .end local v3    # "isInit":Z
    .end local v4    # "prev":Lgnu/bytecode/Variable;
    .end local v5    # "envType":Lgnu/bytecode/Type;
    :goto_a2
    goto :goto_c0

    .line 460
    :cond_a3
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 461
    iput-object v1, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    goto :goto_c0

    .line 464
    :cond_ac
    new-instance v2, Lgnu/bytecode/Variable;

    invoke-virtual {v1}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;Lgnu/bytecode/Type;)V

    iput-object v2, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    .line 465
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v2

    iget-object v3, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/Variable;)V

    .line 468
    .end local v0    # "parent":Lgnu/expr/LambdaExp;
    .end local v1    # "parentFrame":Lgnu/bytecode/Variable;
    :cond_c0
    :goto_c0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public declareThis(Lgnu/bytecode/ClassType;)Lgnu/bytecode/Variable;
    .registers 5
    .param p1, "clas"    # Lgnu/bytecode/ClassType;

    .line 413
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    if-nez v0, :cond_1d

    .line 415
    new-instance v0, Lgnu/bytecode/Variable;

    const-string v1, "this"

    invoke-direct {v0, v1}, Lgnu/bytecode/Variable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    .line 416
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/Scope;->addVariableAfter(Lgnu/bytecode/Variable;Lgnu/bytecode/Variable;)V

    .line 417
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/bytecode/Variable;->setParameter(Z)V

    .line 419
    :cond_1d
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 420
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 421
    :cond_2a
    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    invoke-virtual {v0}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 422
    iget-object v0, p0, Lgnu/expr/LambdaExp;->decls:Lgnu/expr/Declaration;

    iget-object v1, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    iput-object v1, v0, Lgnu/expr/Declaration;->var:Lgnu/bytecode/Variable;

    .line 423
    :cond_3c
    iget-object v0, p0, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method enterFunction(Lgnu/expr/Compilation;)V
    .registers 27
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 1277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v2

    .line 1280
    .local v2, "code":Lgnu/bytecode/CodeAttr;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v3

    invoke-virtual {v3, v2}, Lgnu/bytecode/Scope;->noteStartFunction(Lgnu/bytecode/CodeAttr;)V

    .line 1282
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_51

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->isParameter()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-nez v3, :cond_51

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1287
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 1288
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1289
    .local v3, "field":Lgnu/bytecode/Field;
    if-nez v3, :cond_32

    .line 1290
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v4

    iget-object v3, v4, Lgnu/expr/LambdaExp;->closureEnvField:Lgnu/bytecode/Field;

    .line 1291
    :cond_32
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 1292
    iget-object v4, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v4}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1293
    .end local v3    # "field":Lgnu/bytecode/Field;
    goto :goto_51

    .line 1294
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgnu/expr/LambdaExp;->inlinedIn(Lgnu/expr/LambdaExp;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 1296
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    .line 1297
    iget-object v3, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1300
    :cond_51
    :goto_51
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_7a

    .line 1302
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-nez v3, :cond_65

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->currentModule()Lgnu/expr/ModuleExp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lgnu/expr/ModuleExp;->getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;

    move-result-object v3

    goto :goto_6b

    :cond_65
    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1305
    .local v3, "frameType":Lgnu/bytecode/ClassType;
    :goto_6b
    iget-object v5, v0, Lgnu/expr/LambdaExp;->capturedVars:Lgnu/expr/Declaration;

    .local v5, "decl":Lgnu/expr/Declaration;
    :goto_6d
    if-eqz v5, :cond_7a

    .line 1308
    iget-object v6, v5, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    if-eqz v6, :cond_74

    .line 1309
    goto :goto_77

    .line 1310
    :cond_74
    invoke-virtual {v5, v3, v1, v4}, Lgnu/expr/Declaration;->makeField(Lgnu/bytecode/ClassType;Lgnu/expr/Compilation;Lgnu/expr/Expression;)V

    .line 1306
    :goto_77
    iget-object v5, v5, Lgnu/expr/Declaration;->nextCapturedVar:Lgnu/expr/Declaration;

    goto :goto_6d

    .line 1313
    .end local v3    # "frameType":Lgnu/bytecode/ClassType;
    .end local v5    # "decl":Lgnu/expr/Declaration;
    :cond_7a
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v3, :cond_d0

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-nez v3, :cond_d0

    .line 1315
    iget-object v3, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v3}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v3

    check-cast v3, Lgnu/bytecode/ClassType;

    .line 1316
    .restart local v3    # "frameType":Lgnu/bytecode/ClassType;
    iget-object v5, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v5, :cond_a0

    instance-of v6, v0, Lgnu/expr/ModuleExp;

    if-nez v6, :cond_a0

    .line 1317
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v5

    const-string v6, "staticLink"

    invoke-virtual {v3, v6, v5}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;)Lgnu/bytecode/Field;

    move-result-object v5

    iput-object v5, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 1319
    :cond_a0
    instance-of v5, v0, Lgnu/expr/ModuleExp;

    if-nez v5, :cond_d0

    instance-of v5, v0, Lgnu/expr/ClassExp;

    if-nez v5, :cond_d0

    .line 1321
    iget-object v5, v1, Lgnu/expr/Compilation;->method:Lgnu/bytecode/Method;

    invoke-virtual {v3, v5}, Lgnu/bytecode/ClassType;->setEnclosingMember(Lgnu/bytecode/Member;)V

    .line 1322
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 1323
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1324
    invoke-static {v3, v0}, Lgnu/expr/Compilation;->getConstructor(Lgnu/bytecode/ClassType;Lgnu/expr/LambdaExp;)Lgnu/bytecode/Method;

    move-result-object v5

    .line 1325
    .local v5, "constructor":Lgnu/bytecode/Method;
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitInvokeSpecial(Lgnu/bytecode/Method;)V

    .line 1327
    iget-object v6, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    if-eqz v6, :cond_cb

    .line 1329
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 1330
    iget-object v6, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1331
    iget-object v6, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1333
    :cond_cb
    iget-object v6, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v2, v6}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1337
    .end local v3    # "frameType":Lgnu/bytecode/ClassType;
    .end local v5    # "constructor":Lgnu/bytecode/Method;
    :cond_d0
    iget-object v3, v0, Lgnu/expr/LambdaExp;->argsArray:Lgnu/bytecode/Variable;

    .line 1338
    .local v3, "argsArray":Lgnu/bytecode/Variable;
    iget v5, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget v6, v0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v7, 0x2

    if-ne v5, v6, :cond_e4

    iget-object v5, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-nez v5, :cond_e4

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v5

    if-ge v5, v7, :cond_e4

    .line 1341
    const/4 v3, 0x0

    .line 1346
    :cond_e4
    const/4 v5, 0x0

    .line 1347
    .local v5, "i":I
    const/4 v6, 0x0

    .line 1348
    .local v6, "opt_i":I
    const/4 v8, 0x0

    .line 1349
    .local v8, "key_i":I
    iget-object v9, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v9, :cond_ed

    const/4 v9, 0x0

    goto :goto_ee

    :cond_ed
    array-length v9, v9

    .line 1350
    .local v9, "key_args":I
    :goto_ee
    iget-object v11, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v11, :cond_f4

    const/4 v11, 0x0

    goto :goto_f6

    :cond_f4
    array-length v11, v11

    sub-int/2addr v11, v9

    .line 1352
    .local v11, "opt_args":I
    :goto_f6
    instance-of v12, v0, Lgnu/expr/ModuleExp;

    if-eqz v12, :cond_fb

    .line 1353
    return-void

    .line 1355
    :cond_fb
    const/4 v12, -0x1

    .line 1356
    .local v12, "plainArgs":I
    const/4 v13, 0x0

    .line 1357
    .local v13, "defaultStart":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getMainMethod()Lgnu/bytecode/Method;

    move-result-object v14

    .line 1358
    .local v14, "mainMethod":Lgnu/bytecode/Method;
    iget-object v15, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1360
    .local v15, "callContextSave":Lgnu/bytecode/Variable;
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v16

    move-object/from16 v10, v16

    .local v10, "param":Lgnu/expr/Declaration;
    :goto_109
    if-eqz v10, :cond_2ce

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v4

    if-ge v4, v7, :cond_113

    const/4 v4, 0x0

    goto :goto_11d

    :cond_113
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v4

    const-string v7, "$ctx"

    invoke-virtual {v4, v7}, Lgnu/bytecode/Scope;->lookup(Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v4

    :goto_11d
    iput-object v4, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1365
    iget-object v4, v0, Lgnu/expr/LambdaExp;->firstArgsArrayArg:Lgnu/expr/Declaration;

    if-ne v10, v4, :cond_135

    if-eqz v3, :cond_135

    .line 1367
    iget-object v4, v0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v4, :cond_131

    .line 1369
    move v4, v5

    .line 1370
    .end local v12    # "plainArgs":I
    .local v4, "plainArgs":I
    iget v7, v0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v7, v4, v7

    move v12, v4

    move v13, v7

    .end local v13    # "defaultStart":I
    .local v7, "defaultStart":I
    goto :goto_135

    .line 1374
    .end local v4    # "plainArgs":I
    .end local v7    # "defaultStart":I
    .restart local v12    # "plainArgs":I
    .restart local v13    # "defaultStart":I
    :cond_131
    const/4 v4, 0x0

    .line 1375
    .end local v12    # "plainArgs":I
    .restart local v4    # "plainArgs":I
    const/4 v7, 0x0

    move v12, v4

    move v13, v7

    .line 1378
    .end local v4    # "plainArgs":I
    .restart local v12    # "plainArgs":I
    :cond_135
    :goto_135
    if-gez v12, :cond_14e

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v4

    if-eqz v4, :cond_14e

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v4

    if-eqz v4, :cond_144

    goto :goto_14e

    :cond_144
    move-object/from16 v20, v3

    move/from16 v19, v9

    move/from16 v24, v11

    const/16 v16, 0x2

    goto/16 :goto_2be

    .line 1381
    :cond_14e
    :goto_14e
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 1382
    .local v4, "paramType":Lgnu/bytecode/Type;
    if-ltz v12, :cond_157

    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    goto :goto_158

    :cond_157
    move-object v7, v4

    .line 1388
    .local v7, "stackType":Lgnu/bytecode/Type;
    :goto_158
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v18

    if-nez v18, :cond_165

    .line 1389
    move-object/from16 v18, v7

    const/4 v7, 0x0

    .end local v7    # "stackType":Lgnu/bytecode/Type;
    .local v18, "stackType":Lgnu/bytecode/Type;
    invoke-virtual {v10, v7, v1}, Lgnu/expr/Declaration;->loadOwningObject(Lgnu/expr/Declaration;Lgnu/expr/Compilation;)V

    goto :goto_168

    .line 1388
    .end local v18    # "stackType":Lgnu/bytecode/Type;
    .restart local v7    # "stackType":Lgnu/bytecode/Type;
    :cond_165
    move-object/from16 v18, v7

    const/4 v7, 0x0

    .line 1391
    .end local v7    # "stackType":Lgnu/bytecode/Type;
    .restart local v18    # "stackType":Lgnu/bytecode/Type;
    :goto_168
    if-gez v12, :cond_172

    .line 1394
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v7

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    goto :goto_181

    .line 1396
    :cond_172
    iget v7, v0, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v5, v7, :cond_18d

    .line 1398
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1399
    invoke-virtual {v2, v5}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1400
    sget-object v7, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitArrayLoad(Lgnu/bytecode/Type;)V

    .line 1474
    :goto_181
    move-object/from16 v20, v3

    move/from16 v19, v9

    move/from16 v24, v11

    move-object/from16 v7, v18

    const/16 v16, 0x2

    goto/16 :goto_290

    .line 1402
    :cond_18d
    move/from16 v19, v9

    .end local v9    # "key_args":I
    .local v19, "key_args":I
    add-int v9, v7, v11

    if-ge v5, v9, :cond_1c7

    .line 1404
    sub-int v7, v5, v12

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1405
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1406
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitArrayLength()V

    .line 1407
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitIfIntLt()V

    .line 1408
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1409
    sub-int v7, v5, v12

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1410
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitArrayLoad()V

    .line 1411
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitElse()V

    .line 1412
    iget-object v7, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v9, v6, 0x1

    .end local v6    # "opt_i":I
    .local v9, "opt_i":I
    add-int/2addr v6, v13

    aget-object v6, v7, v6

    invoke-virtual {v6, v1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1413
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFi()V

    move-object/from16 v20, v3

    move v6, v9

    move/from16 v24, v11

    move-object/from16 v7, v18

    const/16 v16, 0x2

    goto/16 :goto_290

    .line 1415
    .end local v9    # "opt_i":I
    .restart local v6    # "opt_i":I
    :cond_1c7
    iget v9, v0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v9, :cond_1e5

    add-int/2addr v7, v11

    if-ne v5, v7, :cond_1e5

    .line 1419
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1420
    sub-int v7, v5, v12

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1421
    sget-object v7, Lgnu/expr/Compilation;->makeListMethod:Lgnu/bytecode/Method;

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1422
    sget-object v7, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    move-object/from16 v20, v3

    move/from16 v24, v11

    const/16 v16, 0x2

    .end local v18    # "stackType":Lgnu/bytecode/Type;
    .restart local v7    # "stackType":Lgnu/bytecode/Type;
    goto/16 :goto_290

    .line 1426
    .end local v7    # "stackType":Lgnu/bytecode/Type;
    .restart local v18    # "stackType":Lgnu/bytecode/Type;
    :cond_1e5
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 1427
    iget v7, v0, Lgnu/expr/LambdaExp;->min_args:I

    add-int/2addr v7, v11

    sub-int/2addr v7, v12

    invoke-virtual {v2, v7}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 1428
    iget-object v7, v0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "key_i":I
    .local v9, "key_i":I
    aget-object v7, v7, v8

    invoke-virtual {v1, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1429
    iget-object v7, v0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "opt_i":I
    .local v8, "opt_i":I
    add-int/2addr v6, v13

    aget-object v6, v7, v6

    .line 1433
    .local v6, "defaultArg":Lgnu/expr/Expression;
    instance-of v7, v6, Lgnu/expr/QuoteExp;

    move-object/from16 v20, v3

    .end local v3    # "argsArray":Lgnu/bytecode/Variable;
    .local v20, "argsArray":Lgnu/bytecode/Variable;
    const-string v3, "searchForKeyword"

    move/from16 v21, v8

    .end local v8    # "opt_i":I
    .local v21, "opt_i":I
    const/4 v8, 0x1

    if-eqz v7, :cond_247

    .line 1435
    sget-object v7, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    if-nez v7, :cond_238

    .line 1437
    const/4 v7, 0x4

    new-array v7, v7, [Lgnu/bytecode/Type;

    .line 1438
    .local v7, "argts":[Lgnu/bytecode/Type;
    sget-object v23, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/16 v16, 0x0

    aput-object v23, v7, v16

    .line 1439
    sget-object v23, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v23, v7, v8

    .line 1440
    sget-object v8, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v17, 0x2

    aput-object v8, v7, v17

    .line 1441
    sget-object v8, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v22, 0x3

    aput-object v8, v7, v22

    .line 1442
    sget-object v8, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    move/from16 v23, v9

    .end local v9    # "key_i":I
    .local v23, "key_i":I
    sget-object v9, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    move/from16 v24, v11

    const/16 v11, 0x9

    .end local v11    # "opt_args":I
    .local v24, "opt_args":I
    invoke-virtual {v8, v3, v7, v9, v11}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    goto :goto_23c

    .line 1435
    .end local v7    # "argts":[Lgnu/bytecode/Type;
    .end local v23    # "key_i":I
    .end local v24    # "opt_args":I
    .restart local v9    # "key_i":I
    .restart local v11    # "opt_args":I
    :cond_238
    move/from16 v23, v9

    move/from16 v24, v11

    .line 1447
    .end local v9    # "key_i":I
    .end local v11    # "opt_args":I
    .restart local v23    # "key_i":I
    .restart local v24    # "opt_args":I
    :goto_23c
    invoke-virtual {v6, v1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1448
    sget-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod4:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    const/16 v16, 0x2

    goto :goto_28a

    .line 1452
    .end local v23    # "key_i":I
    .end local v24    # "opt_args":I
    .restart local v9    # "key_i":I
    .restart local v11    # "opt_args":I
    :cond_247
    move/from16 v23, v9

    move/from16 v24, v11

    .end local v9    # "key_i":I
    .end local v11    # "opt_args":I
    .restart local v23    # "key_i":I
    .restart local v24    # "opt_args":I
    sget-object v7, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    if-nez v7, :cond_26e

    .line 1454
    const/4 v7, 0x3

    new-array v7, v7, [Lgnu/bytecode/Type;

    .line 1455
    .restart local v7    # "argts":[Lgnu/bytecode/Type;
    sget-object v9, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    const/4 v11, 0x0

    aput-object v9, v7, v11

    .line 1456
    sget-object v9, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    aput-object v9, v7, v8

    .line 1457
    sget-object v9, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v16, 0x2

    aput-object v9, v7, v16

    .line 1458
    sget-object v9, Lgnu/expr/Compilation;->scmKeywordType:Lgnu/bytecode/ClassType;

    sget-object v11, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    const/16 v8, 0x9

    invoke-virtual {v9, v3, v7, v11, v8}, Lgnu/bytecode/ClassType;->addMethod(Ljava/lang/String;[Lgnu/bytecode/Type;Lgnu/bytecode/Type;I)Lgnu/bytecode/Method;

    move-result-object v3

    sput-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    goto :goto_270

    .line 1452
    .end local v7    # "argts":[Lgnu/bytecode/Type;
    :cond_26e
    const/16 v16, 0x2

    .line 1463
    :goto_270
    sget-object v3, Lgnu/expr/LambdaExp;->searchForKeywordMethod3:Lgnu/bytecode/Method;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    .line 1464
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitDup(I)V

    .line 1465
    sget-object v7, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    invoke-virtual {v1, v7}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;)V

    .line 1466
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitIfEq()V

    .line 1467
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 1468
    invoke-virtual {v6, v1, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 1469
    invoke-virtual {v2}, Lgnu/bytecode/CodeAttr;->emitFi()V

    .line 1474
    .end local v6    # "defaultArg":Lgnu/expr/Expression;
    :goto_28a
    move-object/from16 v7, v18

    move/from16 v6, v21

    move/from16 v8, v23

    .end local v18    # "stackType":Lgnu/bytecode/Type;
    .end local v21    # "opt_i":I
    .end local v23    # "key_i":I
    .local v6, "opt_i":I
    .local v7, "stackType":Lgnu/bytecode/Type;
    .local v8, "key_i":I
    :goto_290
    if-eq v4, v7, :cond_297

    .line 1475
    add-int/lit8 v3, v5, 0x1

    invoke-static {v1, v0, v3, v4}, Lgnu/expr/CheckedTarget;->emitCheckedCoerce(Lgnu/expr/Compilation;Lgnu/expr/LambdaExp;ILgnu/bytecode/Type;)V

    .line 1476
    :cond_297
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v3

    if-eqz v3, :cond_2a0

    .line 1477
    invoke-virtual {v10, v1}, Lgnu/expr/Declaration;->pushIndirectBinding(Lgnu/expr/Compilation;)V

    .line 1478
    :cond_2a0
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isSimple()Z

    move-result v3

    if-eqz v3, :cond_2b9

    .line 1480
    invoke-virtual {v10}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v3

    .line 1481
    .local v3, "var":Lgnu/bytecode/Variable;
    invoke-virtual {v10}, Lgnu/expr/Declaration;->isIndirectBinding()Z

    move-result v9

    if-eqz v9, :cond_2b5

    .line 1482
    sget-object v9, Lgnu/expr/Compilation;->typeLocation:Lgnu/bytecode/ClassType;

    invoke-virtual {v3, v9}, Lgnu/bytecode/Variable;->setType(Lgnu/bytecode/Type;)V

    .line 1483
    :cond_2b5
    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 1484
    .end local v3    # "var":Lgnu/bytecode/Variable;
    goto :goto_2be

    .line 1486
    :cond_2b9
    iget-object v3, v10, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2, v3}, Lgnu/bytecode/CodeAttr;->emitPutField(Lgnu/bytecode/Field;)V

    .line 1488
    .end local v4    # "paramType":Lgnu/bytecode/Type;
    .end local v7    # "stackType":Lgnu/bytecode/Type;
    :goto_2be
    add-int/lit8 v5, v5, 0x1

    .line 1360
    invoke-virtual {v10}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v10

    move/from16 v9, v19

    move-object/from16 v3, v20

    move/from16 v11, v24

    const/4 v4, 0x0

    const/4 v7, 0x2

    goto/16 :goto_109

    .line 1490
    .end local v10    # "param":Lgnu/expr/Declaration;
    .end local v19    # "key_args":I
    .end local v20    # "argsArray":Lgnu/bytecode/Variable;
    .end local v24    # "opt_args":I
    .local v3, "argsArray":Lgnu/bytecode/Variable;
    .local v9, "key_args":I
    .restart local v11    # "opt_args":I
    :cond_2ce
    iput-object v15, v1, Lgnu/expr/Compilation;->callContextVar:Lgnu/bytecode/Variable;

    .line 1491
    return-void
.end method

.method evalDefaultArg(ILgnu/mapping/CallContext;)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .param p2, "ctx"    # Lgnu/mapping/CallContext;

    .line 1719
    :try_start_0
    iget-object v0, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-object v0

    .line 1721
    :catchall_9
    move-exception v0

    .line 1723
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Lgnu/mapping/WrappedException;

    const-string v2, "error evaluating default argument"

    invoke-direct {v1, v2, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateApplyMethods(Lgnu/expr/Compilation;)V
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 564
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateMatchMethods(Lgnu/expr/LambdaExp;)V

    .line 565
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_c

    .line 566
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithContext(Lgnu/expr/LambdaExp;)V

    goto :goto_f

    .line 568
    :cond_c
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->generateApplyMethodsWithoutContext(Lgnu/expr/LambdaExp;)V

    .line 569
    :goto_f
    return-void
.end method

.method getArg(I)Lgnu/expr/Declaration;
    .registers 5
    .param p1, "i"    # I

    .line 526
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v0

    .line 528
    .local v0, "var":Lgnu/expr/Declaration;
    :goto_4
    if-eqz v0, :cond_10

    .line 530
    if-nez p1, :cond_9

    .line 531
    return-object v0

    .line 532
    :cond_9
    add-int/lit8 p1, p1, -0x1

    .line 526
    invoke-virtual {v0}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v0

    goto :goto_4

    .line 529
    :cond_10
    new-instance v1, Ljava/lang/Error;

    const-string v2, "internal error - getArg"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    goto :goto_19

    :goto_18
    throw v1

    :goto_19
    goto :goto_18
.end method

.method public getCallConvention()I
    .registers 3

    .line 248
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 249
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    :cond_d
    return v1

    .line 253
    :cond_e
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 254
    return v1

    .line 255
    :cond_16
    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    if-eqz v0, :cond_1c

    sget v1, Lgnu/expr/Compilation;->defaultCallConvention:I

    :cond_1c
    return v1
.end method

.method public getCaller()Lgnu/expr/LambdaExp;
    .registers 2

    .line 406
    iget-object v0, p0, Lgnu/expr/LambdaExp;->inlineHome:Lgnu/expr/LambdaExp;

    return-object v0
.end method

.method public final getCanCall()Z
    .registers 2

    .line 213
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final getCanRead()Z
    .registers 2

    .line 205
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .registers 2

    .line 288
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method protected getCompiledClassType(Lgnu/expr/Compilation;)Lgnu/bytecode/ClassType;
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 275
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    if-eq v0, v1, :cond_9

    .line 277
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0

    .line 276
    :cond_9
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error: getCompiledClassType"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getExpClassName()Ljava/lang/String;
    .registers 4

    .line 1868
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1869
    .local v0, "cname":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1870
    .local v1, "index":I
    if-ltz v1, :cond_16

    .line 1871
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1872
    :cond_16
    return-object v0
.end method

.method public getHeapFrameType()Lgnu/bytecode/ClassType;
    .registers 2

    .line 765
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    if-nez v0, :cond_12

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_9

    goto :goto_12

    .line 768
    :cond_9
    iget-object v0, p0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    invoke-virtual {v0}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    return-object v0

    .line 766
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getImportsLexVars()Z
    .registers 2

    .line 165
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final getInlineOnly()Z
    .registers 2

    .line 145
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final getMainMethod()Lgnu/bytecode/Method;
    .registers 3

    .line 346
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primBodyMethods:[Lgnu/bytecode/Method;

    .line 347
    .local v0, "methods":[Lgnu/bytecode/Method;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    goto :goto_b

    :cond_6
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    :goto_b
    return-object v1
.end method

.method public final getMethod(I)Lgnu/bytecode/Method;
    .registers 6
    .param p1, "argCount"    # I

    .line 333
    iget-object v0, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget v2, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v2, :cond_c

    if-le p1, v2, :cond_c

    goto :goto_1d

    .line 335
    :cond_c
    iget v2, p0, Lgnu/expr/LambdaExp;->min_args:I

    sub-int v2, p1, v2

    .line 336
    .local v2, "index":I
    if-gez v2, :cond_13

    .line 337
    return-object v1

    .line 338
    :cond_13
    array-length v1, v0

    .line 339
    .local v1, "length":I
    if-ge v2, v1, :cond_18

    move v3, v2

    goto :goto_1a

    :cond_18
    add-int/lit8 v3, v1, -0x1

    :goto_1a
    aget-object v0, v0, v3

    return-object v0

    .line 334
    .end local v1    # "length":I
    .end local v2    # "index":I
    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public final getNeedsClosureEnv()Z
    .registers 2

    .line 150
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final getNeedsStaticLink()Z
    .registers 2

    .line 155
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getOwningLambda()Lgnu/expr/LambdaExp;
    .registers 3

    .line 774
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    .line 777
    .local v0, "exp":Lgnu/expr/ScopeExp;
    :goto_2
    if-nez v0, :cond_6

    .line 778
    const/4 v1, 0x0

    return-object v1

    .line 779
    :cond_6
    instance-of v1, v0, Lgnu/expr/ModuleExp;

    if-nez v1, :cond_23

    instance-of v1, v0, Lgnu/expr/ClassExp;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getNeedsClosureEnv()Z

    move-result v1

    if-nez v1, :cond_23

    :cond_14
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_20

    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    iget-object v1, v1, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v1, :cond_20

    goto :goto_23

    .line 775
    :cond_20
    iget-object v0, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    goto :goto_2

    .line 783
    :cond_23
    :goto_23
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    return-object v1
.end method

.method public getProperty(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 1896
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v0, :cond_14

    .line 1898
    array-length v0, v0

    .local v0, "i":I
    :cond_5
    add-int/lit8 v0, v0, -0x2

    if-ltz v0, :cond_14

    .line 1900
    iget-object v1, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v2, v1, v0

    if-ne v2, p1, :cond_5

    .line 1901
    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    return-object v1

    .line 1904
    .end local v0    # "i":I
    :cond_14
    return-object p2
.end method

.method public final getReturnType()Lgnu/bytecode/Type;
    .registers 2

    .line 1919
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    if-nez v0, :cond_1a

    .line 1921
    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1923
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1924
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v0}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1926
    :cond_1a
    iget-object v0, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    return-object v0
.end method

.method getSelectorValue(Lgnu/expr/Compilation;)I
    .registers 4
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 310
    iget v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 311
    .local v0, "s":I
    if-nez v0, :cond_10

    .line 313
    iget v0, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 314
    iget-object v1, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    array-length v1, v1

    add-int/2addr v1, v0

    iput v1, p1, Lgnu/expr/Compilation;->maxSelectorValue:I

    .line 315
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgnu/expr/LambdaExp;->selectorValue:I

    .line 317
    :cond_10
    return v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .registers 2

    .line 282
    iget-object v0, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public incomingArgs()I
    .registers 3

    .line 302
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x4

    if-gt v1, v0, :cond_c

    if-lez v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method inlinedIn(Lgnu/expr/LambdaExp;)Z
    .registers 4
    .param p1, "outer"    # Lgnu/expr/LambdaExp;

    .line 395
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/LambdaExp;
    :goto_1
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 397
    if-ne v0, p1, :cond_b

    .line 398
    const/4 v1, 0x1

    return v1

    .line 395
    :cond_b
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_1

    .line 400
    .end local v0    # "exp":Lgnu/expr/LambdaExp;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isAbstract()Z
    .registers 3

    .line 241
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isClassGenerated()Z
    .registers 2

    .line 236
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_d

    instance-of v0, p0, Lgnu/expr/ClassExp;

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public final isClassMethod()Z
    .registers 2

    .line 222
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final isHandlingTailCalls()Z
    .registers 3

    .line 263
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isModuleBody()Z

    move-result v0

    if-nez v0, :cond_14

    sget v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public final isModuleBody()Z
    .registers 2

    .line 231
    instance-of v0, p0, Lgnu/expr/ModuleExp;

    return v0
.end method

.method public loadHeapFrame(Lgnu/expr/Compilation;)V
    .registers 7
    .param p1, "comp"    # Lgnu/expr/Compilation;

    .line 490
    iget-object v0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 491
    .local v0, "curLambda":Lgnu/expr/LambdaExp;
    :goto_2
    if-eq v0, p0, :cond_f

    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 492
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getCaller()Lgnu/expr/LambdaExp;

    move-result-object v0

    goto :goto_2

    .line 494
    :cond_f
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 495
    .local v1, "code":Lgnu/bytecode/CodeAttr;
    iget-object v2, v0, Lgnu/expr/LambdaExp;->heapFrame:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_1d

    if-ne p0, v0, :cond_1d

    .line 497
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 498
    return-void

    .line 501
    :cond_1d
    iget-object v2, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_2d

    .line 503
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 504
    iget-object v2, v0, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    invoke-virtual {v2}, Lgnu/bytecode/Variable;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    .local v2, "curType":Lgnu/bytecode/ClassType;
    goto :goto_32

    .line 508
    .end local v2    # "curType":Lgnu/bytecode/ClassType;
    :cond_2d
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitPushThis()V

    .line 509
    iget-object v2, p1, Lgnu/expr/Compilation;->curClass:Lgnu/bytecode/ClassType;

    .line 511
    .restart local v2    # "curType":Lgnu/bytecode/ClassType;
    :goto_32
    if-eq v0, p0, :cond_4d

    .line 513
    iget-object v3, v0, Lgnu/expr/LambdaExp;->staticLinkField:Lgnu/bytecode/Field;

    .line 514
    .local v3, "link":Lgnu/bytecode/Field;
    if-eqz v3, :cond_48

    invoke-virtual {v3}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v4

    if-ne v4, v2, :cond_48

    .line 516
    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 517
    invoke-virtual {v3}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lgnu/bytecode/ClassType;

    .line 519
    :cond_48
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 520
    .end local v3    # "link":Lgnu/bytecode/Field;
    goto :goto_32

    .line 521
    :cond_4d
    return-void
.end method

.method protected mustCompile()Z
    .registers 5

    .line 1690
    iget-object v0, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    .line 1691
    return v1

    .line 1692
    :cond_9
    iget-object v0, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-eqz v0, :cond_1e

    .line 1694
    array-length v0, v0

    .local v0, "i":I
    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1e

    .line 1696
    iget-object v2, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    aget-object v2, v2, v0

    .line 1698
    .local v2, "def":Lgnu/expr/Expression;
    if-eqz v2, :cond_1d

    instance-of v3, v2, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_1d

    .line 1699
    return v1

    .line 1700
    .end local v2    # "def":Lgnu/expr/Expression;
    :cond_1d
    goto :goto_e

    .line 1702
    .end local v0    # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public outerLambda()Lgnu/expr/LambdaExp;
    .registers 2

    .line 370
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    invoke-virtual {v0}, Lgnu/expr/ScopeExp;->currentLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public outerLambdaNotInline()Lgnu/expr/LambdaExp;
    .registers 4

    .line 377
    move-object v0, p0

    .local v0, "exp":Lgnu/expr/ScopeExp;
    :cond_1
    :goto_1
    iget-object v1, v0, Lgnu/expr/ScopeExp;->outer:Lgnu/expr/ScopeExp;

    move-object v0, v1

    if-eqz v1, :cond_15

    .line 379
    instance-of v1, v0, Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_1

    .line 381
    move-object v1, v0

    check-cast v1, Lgnu/expr/LambdaExp;

    .line 382
    .local v1, "result":Lgnu/expr/LambdaExp;
    invoke-virtual {v1}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_14

    .line 383
    return-object v1

    .line 384
    .end local v1    # "result":Lgnu/expr/LambdaExp;
    :cond_14
    goto :goto_1

    .line 386
    .end local v0    # "exp":Lgnu/expr/ScopeExp;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .registers 14
    .param p1, "out"    # Lgnu/mapping/OutPort;

    .line 1803
    const-string v0, "(Lambda/"

    const-string v1, ")"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1804
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v0

    .line 1805
    .local v0, "sym":Ljava/lang/Object;
    const/16 v2, 0x2f

    if-eqz v0, :cond_16

    .line 1807
    invoke-virtual {p1, v0}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1808
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 1810
    :cond_16
    iget v3, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {p1, v3}, Lgnu/mapping/OutPort;->print(I)V

    .line 1811
    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(C)V

    .line 1812
    const-string v2, "fl:"

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    iget v2, p0, Lgnu/expr/LambdaExp;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1814
    invoke-virtual {p0, p1}, Lgnu/expr/LambdaExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 1815
    const-string v2, "("

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1816
    const/4 v2, 0x0

    .line 1817
    .local v2, "prevMode":Lgnu/expr/Special;
    const/4 v4, 0x0

    .line 1818
    .local v4, "i":I
    const/4 v5, 0x0

    .line 1819
    .local v5, "opt_i":I
    iget-object v6, p0, Lgnu/expr/LambdaExp;->keywords:[Lgnu/expr/Keyword;

    if-nez v6, :cond_41

    const/4 v6, 0x0

    goto :goto_42

    :cond_41
    array-length v6, v6

    .line 1820
    .local v6, "key_args":I
    :goto_42
    iget-object v7, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    if-nez v7, :cond_47

    goto :goto_49

    :cond_47
    array-length v3, v7

    sub-int/2addr v3, v6

    .line 1821
    .local v3, "opt_args":I
    :goto_49
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 1822
    .local v7, "decl":Lgnu/expr/Declaration;
    if-eqz v7, :cond_56

    invoke-virtual {v7}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1823
    const/4 v4, -0x1

    .line 1824
    :cond_56
    :goto_56
    if-eqz v7, :cond_b7

    .line 1827
    iget v8, p0, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v4, v8, :cond_5e

    .line 1828
    const/4 v8, 0x0

    .local v8, "mode":Lgnu/expr/Special;
    goto :goto_71

    .line 1829
    .end local v8    # "mode":Lgnu/expr/Special;
    :cond_5e
    add-int v9, v8, v3

    if-ge v4, v9, :cond_65

    .line 1830
    sget-object v8, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    .restart local v8    # "mode":Lgnu/expr/Special;
    goto :goto_71

    .line 1831
    .end local v8    # "mode":Lgnu/expr/Special;
    :cond_65
    iget v9, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v9, :cond_6f

    add-int/2addr v8, v3

    if-ne v4, v8, :cond_6f

    .line 1832
    sget-object v8, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    .restart local v8    # "mode":Lgnu/expr/Special;
    goto :goto_71

    .line 1834
    .end local v8    # "mode":Lgnu/expr/Special;
    :cond_6f
    sget-object v8, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    .line 1835
    .restart local v8    # "mode":Lgnu/expr/Special;
    :goto_71
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v9

    if-eq v7, v9, :cond_7a

    .line 1836
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1837
    :cond_7a
    if-eq v8, v2, :cond_82

    .line 1839
    invoke-virtual {p1, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 1840
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 1842
    :cond_82
    const/4 v9, 0x0

    .line 1843
    .local v9, "defaultArg":Lgnu/expr/Expression;
    sget-object v10, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    if-eq v8, v10, :cond_8b

    sget-object v10, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    if-ne v8, v10, :cond_92

    .line 1844
    :cond_8b
    iget-object v10, p0, Lgnu/expr/LambdaExp;->defaultArgs:[Lgnu/expr/Expression;

    add-int/lit8 v11, v5, 0x1

    .end local v5    # "opt_i":I
    .local v11, "opt_i":I
    aget-object v9, v10, v5

    move v5, v11

    .line 1845
    .end local v11    # "opt_i":I
    .restart local v5    # "opt_i":I
    :cond_92
    if-eqz v9, :cond_99

    .line 1846
    const/16 v10, 0x28

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1847
    :cond_99
    invoke-virtual {v7, p1}, Lgnu/expr/Declaration;->printInfo(Lgnu/mapping/OutPort;)V

    .line 1848
    if-eqz v9, :cond_af

    sget-object v10, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    if-eq v9, v10, :cond_af

    .line 1850
    const/16 v10, 0x20

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1851
    invoke-virtual {v9, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 1852
    const/16 v10, 0x29

    invoke-virtual {p1, v10}, Lgnu/mapping/OutPort;->print(C)V

    .line 1854
    :cond_af
    add-int/lit8 v4, v4, 0x1

    .line 1855
    move-object v2, v8

    .line 1824
    .end local v8    # "mode":Lgnu/expr/Special;
    .end local v9    # "defaultArg":Lgnu/expr/Expression;
    invoke-virtual {v7}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_56

    .line 1857
    :cond_b7
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1858
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 1859
    iget-object v8, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-nez v8, :cond_c7

    .line 1860
    const-string v8, "<null body>"

    invoke-virtual {p1, v8}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    goto :goto_ca

    .line 1862
    :cond_c7
    invoke-virtual {v8, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 1863
    :goto_ca
    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method public final restArgType()Lgnu/bytecode/Type;
    .registers 7

    .line 353
    iget v0, p0, Lgnu/expr/LambdaExp;->min_args:I

    iget v1, p0, Lgnu/expr/LambdaExp;->max_args:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 354
    return-object v2

    .line 355
    :cond_8
    iget-object v3, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    if-eqz v3, :cond_32

    .line 357
    iget-object v3, p0, Lgnu/expr/LambdaExp;->primMethods:[Lgnu/bytecode/Method;

    .line 358
    .local v3, "methods":[Lgnu/bytecode/Method;
    if-ltz v1, :cond_15

    array-length v4, v3

    sub-int/2addr v1, v0

    if-le v4, v1, :cond_15

    .line 359
    return-object v2

    .line 360
    :cond_15
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v3, v0

    .line 361
    .local v0, "method":Lgnu/bytecode/Method;
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getParameterTypes()[Lgnu/bytecode/Type;

    move-result-object v1

    .line 362
    .local v1, "types":[Lgnu/bytecode/Type;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 363
    .local v2, "ilast":I
    invoke-virtual {v0}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "$X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 364
    add-int/lit8 v2, v2, -0x1

    .line 365
    :cond_2f
    aget-object v4, v1, v2

    return-object v4

    .line 356
    .end local v0    # "method":Lgnu/bytecode/Method;
    .end local v1    # "types":[Lgnu/bytecode/Type;
    .end local v2    # "ilast":I
    .end local v3    # "methods":[Lgnu/bytecode/Method;
    :cond_32
    new-instance v0, Ljava/lang/Error;

    const-string v1, "internal error - restArgType"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallersNeedStaticLink()V
    .registers 5

    .line 195
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v0

    .line 196
    .local v0, "outer":Lgnu/expr/LambdaExp;
    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    iget-object v1, v1, Lgnu/expr/Declaration;->firstCall:Lgnu/expr/ApplyExp;

    .local v1, "app":Lgnu/expr/ApplyExp;
    :goto_8
    if-eqz v1, :cond_1d

    .line 198
    iget-object v2, v1, Lgnu/expr/ApplyExp;->context:Lgnu/expr/LambdaExp;

    .line 199
    .local v2, "caller":Lgnu/expr/LambdaExp;
    :goto_c
    if-eq v2, v0, :cond_1a

    instance-of v3, v2, Lgnu/expr/ModuleExp;

    if-nez v3, :cond_1a

    .line 200
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->setNeedsStaticLink()V

    .line 199
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v2

    goto :goto_c

    .line 196
    .end local v2    # "caller":Lgnu/expr/LambdaExp;
    :cond_1a
    iget-object v1, v1, Lgnu/expr/ApplyExp;->nextCall:Lgnu/expr/ApplyExp;

    goto :goto_8

    .line 202
    .end local v1    # "app":Lgnu/expr/ApplyExp;
    :cond_1d
    return-void
.end method

.method public final setCanCall(Z)V
    .registers 3
    .param p1, "called"    # Z

    .line 216
    if-eqz p1, :cond_9

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_f

    .line 217
    :cond_9
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 218
    :goto_f
    return-void
.end method

.method public final setCanRead(Z)V
    .registers 3
    .param p1, "read"    # Z

    .line 208
    if-eqz p1, :cond_9

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_f

    .line 209
    :cond_9
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 210
    :goto_f
    return-void
.end method

.method public final setClassMethod(Z)V
    .registers 3
    .param p1, "isMethod"    # Z

    .line 226
    if-eqz p1, :cond_9

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_f

    .line 227
    :cond_9
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 228
    :goto_f
    return-void
.end method

.method public final setCoercedReturnType(Lgnu/bytecode/Type;)V
    .registers 4
    .param p1, "returnType"    # Lgnu/bytecode/Type;

    .line 1937
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1938
    if-eqz p1, :cond_1d

    sget-object v0, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    if-eq p1, v0, :cond_1d

    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    sget-object v1, Lgnu/expr/QuoteExp;->abstractExp:Lgnu/expr/QuoteExp;

    if-eq v0, v1, :cond_1d

    .line 1943
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1944
    .local v0, "value":Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1945
    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 1947
    .end local v0    # "value":Lgnu/expr/Expression;
    :cond_1d
    return-void
.end method

.method public final setCoercedReturnValue(Lgnu/expr/Expression;Lgnu/expr/Language;)V
    .registers 5
    .param p1, "type"    # Lgnu/expr/Expression;
    .param p2, "language"    # Lgnu/expr/Language;

    .line 1953
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->isAbstract()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1955
    iget-object v0, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1956
    .local v0, "value":Lgnu/expr/Expression;
    invoke-static {v0, p1}, Lgnu/expr/Compilation;->makeCoercion(Lgnu/expr/Expression;Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 1957
    invoke-virtual {v1, v0}, Lgnu/expr/Expression;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    .line 1959
    .end local v0    # "value":Lgnu/expr/Expression;
    :cond_11
    invoke-virtual {p2, p1}, Lgnu/expr/Language;->getTypeFor(Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 1960
    .local v0, "rtype":Lgnu/bytecode/Type;
    if-eqz v0, :cond_1a

    .line 1961
    invoke-virtual {p0, v0}, Lgnu/expr/LambdaExp;->setReturnType(Lgnu/bytecode/Type;)V

    .line 1962
    :cond_1a
    return-void
.end method

.method public setExceptions([Lgnu/expr/Expression;)V
    .registers 2
    .param p1, "exceptions"    # [Lgnu/expr/Expression;

    .line 100
    iput-object p1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 101
    return-void
.end method

.method public final setImportsLexVars()V
    .registers 3

    .line 175
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 176
    .local v0, "old":I
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 179
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_13

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_13

    .line 180
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 181
    :cond_13
    return-void
.end method

.method public final setImportsLexVars(Z)V
    .registers 3
    .param p1, "importsLexVars"    # Z

    .line 169
    if-eqz p1, :cond_9

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_f

    .line 170
    :cond_9
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 171
    :goto_f
    return-void
.end method

.method public final setInlineOnly(Z)V
    .registers 3
    .param p1, "inlineOnly"    # Z

    .line 147
    const/16 v0, 0x2000

    invoke-virtual {p0, p1, v0}, Lgnu/expr/LambdaExp;->setFlag(ZI)V

    return-void
.end method

.method public final setNeedsStaticLink()V
    .registers 3

    .line 185
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 186
    .local v0, "old":I
    iget v1, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 189
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_13

    iget-object v1, p0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    if-eqz v1, :cond_13

    .line 190
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->setCallersNeedStaticLink()V

    .line 191
    :cond_13
    return-void
.end method

.method public final setNeedsStaticLink(Z)V
    .registers 3
    .param p1, "needsStaticLink"    # Z

    .line 159
    if-eqz p1, :cond_9

    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    goto :goto_f

    .line 160
    :cond_9
    iget v0, p0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgnu/expr/LambdaExp;->flags:I

    .line 161
    :goto_f
    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1909
    :try_start_1
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lgnu/mapping/PropertySet;->setProperty([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 1910
    monitor-exit p0

    return-void

    .line 1908
    .end local p0    # "this":Lgnu/expr/LambdaExp;
    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setReturnType(Lgnu/bytecode/Type;)V
    .registers 2
    .param p1, "returnType"    # Lgnu/bytecode/Type;

    .line 1932
    iput-object p1, p0, Lgnu/expr/LambdaExp;->returnType:Lgnu/bytecode/Type;

    .line 1933
    return-void
.end method

.method public setType(Lgnu/bytecode/ClassType;)V
    .registers 2
    .param p1, "type"    # Lgnu/bytecode/ClassType;

    .line 292
    iput-object p1, p0, Lgnu/expr/LambdaExp;->type:Lgnu/bytecode/ClassType;

    .line 293
    return-void
.end method

.method public side_effects()Z
    .registers 2

    .line 1875
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getExpClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getSymbol()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lgnu/expr/LambdaExp;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1881
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->getLineNumber()I

    move-result v1

    .line 1882
    .local v1, "l":I
    if-gtz v1, :cond_3d

    iget-object v2, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v2, :cond_3d

    .line 1883
    invoke-virtual {v2}, Lgnu/expr/Expression;->getLineNumber()I

    move-result v1

    .line 1884
    :cond_3d
    if-lez v1, :cond_56

    .line 1885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "l:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1887
    :cond_56
    return-object v0
.end method

.method public validateApply(Lgnu/expr/ApplyExp;Lgnu/expr/InlineCalls;Lgnu/bytecode/Type;Lgnu/expr/Declaration;)Lgnu/expr/Expression;
    .registers 23
    .param p1, "exp"    # Lgnu/expr/ApplyExp;
    .param p2, "visitor"    # Lgnu/expr/InlineCalls;
    .param p3, "required"    # Lgnu/bytecode/Type;
    .param p4, "decl"    # Lgnu/expr/Declaration;

    .line 1730
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v3

    .line 1731
    .local v3, "args":[Lgnu/expr/Expression;
    iget v4, v0, Lgnu/expr/LambdaExp;->flags:I

    and-int/lit16 v4, v4, 0x1000

    const/4 v5, 0x1

    if-eqz v4, :cond_21

    .line 1733
    invoke-static {v0, v3, v5}, Lgnu/expr/InlineCalls;->inlineCall(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;Z)Lgnu/expr/Expression;

    move-result-object v4

    .line 1734
    .local v4, "inlined":Lgnu/expr/Expression;
    if-eqz v4, :cond_1e

    .line 1735
    move-object/from16 v6, p3

    invoke-virtual {v2, v4, v6}, Lgnu/expr/InlineCalls;->visit(Lgnu/expr/Expression;Lgnu/bytecode/Type;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 1734
    :cond_1e
    move-object/from16 v6, p3

    goto :goto_23

    .line 1731
    .end local v4    # "inlined":Lgnu/expr/Expression;
    :cond_21
    move-object/from16 v6, p3

    .line 1737
    :goto_23
    invoke-virtual/range {p1 .. p2}, Lgnu/expr/ApplyExp;->visitArgs(Lgnu/expr/InlineCalls;)V

    .line 1738
    iget-object v4, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v4, v4

    .line 1739
    .local v4, "args_length":I
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v7

    iget v8, v0, Lgnu/expr/LambdaExp;->min_args:I

    iget v9, v0, Lgnu/expr/LambdaExp;->max_args:I

    invoke-static {v7, v8, v9, v4}, Lgnu/mapping/WrongArguments;->checkArgCount(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v7

    .line 1741
    .local v7, "msg":Ljava/lang/String;
    if-eqz v7, :cond_3c

    .line 1742
    invoke-virtual {v2, v7}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 1743
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v8

    .line 1744
    .local v8, "conv":I
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v9

    .line 1747
    .local v9, "comp":Lgnu/expr/Compilation;
    invoke-virtual {v9, v0}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v10

    if-eqz v10, :cond_126

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->isClassMethod()Z

    move-result v10

    if-eqz v10, :cond_126

    const/4 v10, 0x2

    if-le v8, v10, :cond_5d

    const/4 v10, 0x3

    if-ne v8, v10, :cond_57

    goto :goto_5d

    :cond_57
    move-object/from16 v16, v3

    move/from16 v17, v4

    goto/16 :goto_12a

    :cond_5d
    :goto_5d
    invoke-virtual {v0, v4}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v10

    move-object v11, v10

    .local v11, "method":Lgnu/bytecode/Method;
    if-eqz v10, :cond_121

    .line 1762
    iget-object v10, v0, Lgnu/expr/LambdaExp;->nameDecl:Lgnu/expr/Declaration;

    invoke-virtual {v10}, Lgnu/expr/Declaration;->isStatic()Z

    move-result v10

    .line 1763
    .local v10, "isStatic":Z
    if-nez v10, :cond_79

    iget-object v12, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    instance-of v12, v12, Lgnu/expr/ClassExp;

    if-eqz v12, :cond_79

    .line 1765
    iget-object v12, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    check-cast v12, Lgnu/expr/ClassExp;

    .line 1766
    .local v12, "cl":Lgnu/expr/ClassExp;
    invoke-virtual {v12}, Lgnu/expr/ClassExp;->isMakingClassPair()Z

    .line 1770
    .end local v12    # "cl":Lgnu/expr/ClassExp;
    :cond_79
    new-instance v12, Lgnu/expr/PrimProcedure;

    invoke-direct {v12, v11, v0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 1772
    .local v12, "mproc":Lgnu/expr/PrimProcedure;
    if-eqz v10, :cond_87

    .line 1773
    iget-object v5, v1, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    move-object/from16 v16, v3

    move/from16 v17, v4

    .local v5, "margs":[Lgnu/expr/Expression;
    goto :goto_d9

    .line 1776
    .end local v5    # "margs":[Lgnu/expr/Expression;
    :cond_87
    invoke-virtual/range {p2 .. p2}, Lgnu/expr/InlineCalls;->getCurrentLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    .line 1779
    .local v13, "curLambda":Lgnu/expr/LambdaExp;
    :goto_8b
    if-nez v13, :cond_a5

    .line 1780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "internal error: missing "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    return-object v5

    .line 1781
    :cond_a5
    iget-object v14, v13, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    iget-object v15, v0, Lgnu/expr/LambdaExp;->outer:Lgnu/expr/ScopeExp;

    if-ne v14, v15, :cond_111

    .line 1782
    nop

    .line 1785
    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v14

    .line 1786
    .local v14, "d":Lgnu/expr/Declaration;
    if-eqz v14, :cond_e3

    invoke-virtual {v14}, Lgnu/expr/Declaration;->isThisParameter()Z

    move-result v15

    if-nez v15, :cond_bd

    move-object/from16 v16, v3

    move/from16 v17, v4

    goto :goto_e7

    .line 1790
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgCount()I

    move-result v15

    .line 1791
    .local v15, "nargs":I
    add-int/lit8 v5, v15, 0x1

    new-array v5, v5, [Lgnu/expr/Expression;

    .line 1792
    .restart local v5    # "margs":[Lgnu/expr/Expression;
    invoke-virtual/range {p1 .. p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v0

    move-object/from16 v16, v3

    .end local v3    # "args":[Lgnu/expr/Expression;
    .local v16, "args":[Lgnu/expr/Expression;
    const/4 v3, 0x0

    move/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "args_length":I
    .local v17, "args_length":I
    invoke-static {v0, v3, v5, v4, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1793
    new-instance v0, Lgnu/expr/ThisExp;

    invoke-direct {v0, v14}, Lgnu/expr/ThisExp;-><init>(Lgnu/expr/Declaration;)V

    aput-object v0, v5, v3

    .line 1795
    .end local v13    # "curLambda":Lgnu/expr/LambdaExp;
    .end local v14    # "d":Lgnu/expr/Declaration;
    .end local v15    # "nargs":I
    :goto_d9
    new-instance v0, Lgnu/expr/ApplyExp;

    invoke-direct {v0, v12, v5}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    .line 1796
    .local v0, "nexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v0, v1}, Lgnu/expr/ApplyExp;->setLine(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v3

    return-object v3

    .line 1786
    .end local v0    # "nexp":Lgnu/expr/ApplyExp;
    .end local v5    # "margs":[Lgnu/expr/Expression;
    .end local v16    # "args":[Lgnu/expr/Expression;
    .end local v17    # "args_length":I
    .restart local v3    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "args_length":I
    .restart local v13    # "curLambda":Lgnu/expr/LambdaExp;
    .restart local v14    # "d":Lgnu/expr/Declaration;
    :cond_e3
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 1787
    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v4    # "args_length":I
    .restart local v16    # "args":[Lgnu/expr/Expression;
    .restart local v17    # "args_length":I
    :goto_e7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling non-static method "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from static method "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgnu/expr/InlineCalls;->noteError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0

    .line 1783
    .end local v14    # "d":Lgnu/expr/Declaration;
    .end local v16    # "args":[Lgnu/expr/Expression;
    .end local v17    # "args_length":I
    .restart local v3    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "args_length":I
    :cond_111
    move-object/from16 v16, v3

    move/from16 v17, v4

    const/4 v4, 0x1

    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v4    # "args_length":I
    .restart local v16    # "args":[Lgnu/expr/Expression;
    .restart local v17    # "args_length":I
    invoke-virtual {v13}, Lgnu/expr/LambdaExp;->outerLambda()Lgnu/expr/LambdaExp;

    move-result-object v13

    move-object/from16 v0, p0

    move/from16 v4, v17

    const/4 v5, 0x1

    goto/16 :goto_8b

    .line 1747
    .end local v10    # "isStatic":Z
    .end local v12    # "mproc":Lgnu/expr/PrimProcedure;
    .end local v13    # "curLambda":Lgnu/expr/LambdaExp;
    .end local v16    # "args":[Lgnu/expr/Expression;
    .end local v17    # "args_length":I
    .restart local v3    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "args_length":I
    :cond_121
    move-object/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v4    # "args_length":I
    .restart local v16    # "args":[Lgnu/expr/Expression;
    .restart local v17    # "args_length":I
    goto :goto_12a

    .end local v11    # "method":Lgnu/bytecode/Method;
    .end local v16    # "args":[Lgnu/expr/Expression;
    .end local v17    # "args_length":I
    .restart local v3    # "args":[Lgnu/expr/Expression;
    .restart local v4    # "args_length":I
    :cond_126
    move-object/from16 v16, v3

    move/from16 v17, v4

    .line 1798
    .end local v3    # "args":[Lgnu/expr/Expression;
    .end local v4    # "args_length":I
    .restart local v16    # "args":[Lgnu/expr/Expression;
    .restart local v17    # "args_length":I
    :goto_12a
    return-object v1
.end method

.method public final variable_args()Z
    .registers 2

    .line 268
    iget v0, p0, Lgnu/expr/LambdaExp;->max_args:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1629
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p1}, Lgnu/expr/ExpVisitor;->getCompilation()Lgnu/expr/Compilation;

    move-result-object v0

    .line 1631
    .local v0, "comp":Lgnu/expr/Compilation;
    if-nez v0, :cond_8

    .line 1632
    const/4 v1, 0x0

    .local v1, "saveLambda":Lgnu/expr/LambdaExp;
    goto :goto_c

    .line 1635
    .end local v1    # "saveLambda":Lgnu/expr/LambdaExp;
    :cond_8
    iget-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1636
    .restart local v1    # "saveLambda":Lgnu/expr/LambdaExp;
    iput-object p0, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 1640
    :goto_c
    :try_start_c
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitLambdaExp(Lgnu/expr/LambdaExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_15

    .line 1644
    if-eqz v0, :cond_14

    .line 1645
    iput-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_14
    return-object v2

    .line 1644
    :catchall_15
    move-exception v2

    if-eqz v0, :cond_1a

    .line 1645
    iput-object v1, v0, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    :cond_1a
    throw v2
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 1651
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LambdaExp;->visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1652
    invoke-virtual {p0, p1, p2}, Lgnu/expr/LambdaExp;->visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V

    .line 1653
    return-void
.end method

.method protected final visitChildrenOnly(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 1657
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1658
    .local v0, "save":Lgnu/expr/LambdaExp;
    iput-object p0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1661
    :try_start_4
    iget-object v1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;Ljava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->throwsSpecification:[Lgnu/expr/Expression;

    .line 1662
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitDefaultArgs(Lgnu/expr/LambdaExp;Ljava/lang/Object;)V

    .line 1663
    iget-object v1, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v1, :cond_21

    iget-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    if-eqz v1, :cond_21

    .line 1664
    invoke-virtual {p1, v1, p2}, Lgnu/expr/ExpVisitor;->visit(Lgnu/expr/Expression;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lgnu/expr/ExpVisitor;->update(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v1

    iput-object v1, p0, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 1668
    :cond_21
    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    .line 1669
    nop

    .line 1670
    return-void

    .line 1668
    :catchall_25
    move-exception v1

    iput-object v0, p1, Lgnu/expr/ExpVisitor;->currentLambda:Lgnu/expr/LambdaExp;

    throw v1
.end method

.method protected final visitProperties(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor<",
            "TR;TD;>;TD;)V"
        }
    .end annotation

    .line 1674
    .local p1, "visitor":Lgnu/expr/ExpVisitor;, "Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, "d":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    if-eqz v0, :cond_1c

    .line 1676
    array-length v0, v0

    .line 1677
    .local v0, "len":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_1c

    .line 1679
    iget-object v2, p0, Lgnu/expr/LambdaExp;->properties:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 1680
    .local v3, "val":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/Expression;

    if-eqz v4, :cond_19

    .line 1682
    move-object v4, v3

    check-cast v4, Lgnu/expr/Expression;

    invoke-virtual {p1, v4, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1677
    .end local v3    # "val":Ljava/lang/Object;
    :cond_19
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 1686
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

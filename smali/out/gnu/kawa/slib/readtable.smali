.class public Lgnu/kawa/slib/readtable;
.super Lgnu/expr/ModuleBody;
.source "readtable.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nreadtable.scm\nScheme\n*S Scheme\n*F\n+ 1 readtable.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/readtable.scm\n*L\n1#1,83:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/readtable;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field public static final current$Mnreadtable:Lgnu/expr/ModuleMethod;

.field public static final define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

.field public static final get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

.field public static final make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final readtable$Qu:Lgnu/expr/ModuleMethod;

.field public static final set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

.field public static final set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "define-reader-ctor"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/readtable;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "get-dispatch-macro-table"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/readtable;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "set-dispatch-macro-character"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/readtable;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v3, Lgnu/mapping/SimpleSymbol;

    const-string v4, "make-dispatch-macro-character"

    invoke-direct {v3, v4}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/mapping/SimpleSymbol;

    sput-object v3, Lgnu/kawa/slib/readtable;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v4, Lgnu/mapping/SimpleSymbol;

    const-string v5, "set-macro-character"

    invoke-direct {v4, v5}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/mapping/SimpleSymbol;

    sput-object v4, Lgnu/kawa/slib/readtable;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v5, Lgnu/mapping/SimpleSymbol;

    const-string v6, "readtable?"

    invoke-direct {v5, v6}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgnu/mapping/SimpleSymbol;

    sput-object v5, Lgnu/kawa/slib/readtable;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v6, Lgnu/mapping/SimpleSymbol;

    const-string v7, "current-readtable"

    invoke-direct {v6, v7}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/mapping/SimpleSymbol;

    sput-object v6, Lgnu/kawa/slib/readtable;->Lit0:Lgnu/mapping/SimpleSymbol;

    new-instance v7, Lgnu/kawa/slib/readtable;

    invoke-direct {v7}, Lgnu/kawa/slib/readtable;-><init>()V

    sput-object v7, Lgnu/kawa/slib/readtable;->$instance:Lgnu/kawa/slib/readtable;

    new-instance v8, Lgnu/expr/ModuleMethod;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct {v8, v7, v9, v6, v10}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v8, Lgnu/kawa/slib/readtable;->current$Mnreadtable:Lgnu/expr/ModuleMethod;

    new-instance v6, Lgnu/expr/ModuleMethod;

    const/4 v8, 0x2

    const/16 v9, 0x1001

    invoke-direct {v6, v7, v8, v5, v9}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v6, Lgnu/kawa/slib/readtable;->readtable$Qu:Lgnu/expr/ModuleMethod;

    new-instance v5, Lgnu/expr/ModuleMethod;

    const/4 v6, 0x3

    const/16 v8, 0x4002

    invoke-direct {v5, v7, v6, v4, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v5, Lgnu/kawa/slib/readtable;->set$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x6

    const/16 v6, 0x3001

    invoke-direct {v4, v7, v5, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/readtable;->make$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v3, Lgnu/expr/ModuleMethod;

    const/16 v4, 0x9

    const/16 v5, 0x4003

    invoke-direct {v3, v7, v4, v2, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v3, Lgnu/kawa/slib/readtable;->set$Mndispatch$Mnmacro$Mncharacter:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/16 v3, 0xb

    const/16 v4, 0x3002

    invoke-direct {v2, v7, v3, v1, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/readtable;->get$Mndispatch$Mnmacro$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xd

    invoke-direct {v1, v7, v2, v0, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/readtable;->define$Mnreader$Mnctor:Lgnu/expr/ModuleMethod;

    invoke-virtual {v7}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static currentReadtable()Lgnu/kawa/lispexpr/ReadTable;
    .registers 1

    .line 1
    nop

    .line 2
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    return-object v0
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .registers 3

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V
    .registers 4
    .param p0, "key"    # Lgnu/mapping/Symbol;
    .param p1, "proc"    # Lgnu/mapping/Procedure;
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 82
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0, p1}, Lgnu/kawa/lispexpr/ReadTable;->putReaderCtor(Ljava/lang/String;Lgnu/mapping/Procedure;)V

    return-void
.end method

.method public static getDispatchMacroTable(CC)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .registers 6
    .param p0, "disp$Mnchar"    # C
    .param p1, "sub$Mnchar"    # C
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 74
    nop

    .line 77
    nop

    .line 78
    invoke-virtual {p2, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_6
    move-object v1, v0

    check-cast v1, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_9} :catch_16

    const/4 v2, 0x0

    .line 77
    .local v1, "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    nop

    .line 79
    invoke-virtual {v1, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    .local v0, "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    move-object v0, v2

    .line 80
    if-nez v0, :cond_15

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    .end local v0    # "sub$Mnentry":Lgnu/kawa/lispexpr/ReadTableEntry;
    .end local v1    # "disp$Mnentry":Lgnu/kawa/lispexpr/ReaderDispatch;
    :cond_15
    return-object v0

    .line 78
    .end local p0    # "disp$Mnchar":C
    .end local p1    # "sub$Mnchar":C
    .end local p2    # "readtable":Lgnu/kawa/lispexpr/ReadTable;
    :catch_16
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, -0x2

    const-string v1, "disp-entry"

    invoke-direct {p1, p0, v1, p2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static isReadtable(Ljava/lang/Object;)Z
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 5
    nop

    .line 6
    instance-of v0, p0, Lgnu/kawa/lispexpr/ReadTable;

    return v0
.end method

.method public static makeDispatchMacroCharacter(C)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZ)V
    .registers 3

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V
    .registers 4
    .param p0, "char"    # C
    .param p1, "non$Mnterminating"    # Z
    .param p2, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 57
    nop

    .line 62
    new-instance v0, Lgnu/kawa/lispexpr/ReaderDispatch;

    invoke-direct {v0, p1}, Lgnu/kawa/lispexpr/ReaderDispatch;-><init>(Z)V

    invoke-virtual {p2, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;)V
    .registers 4

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V
    .registers 7
    .param p0, "disp$Mnchar"    # C
    .param p1, "sub$Mnchar"    # C
    .param p2, "function"    # Ljava/lang/Object;
    .param p3, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 65
    nop

    .line 69
    nop

    .line 70
    invoke-virtual {p3, p0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    :try_start_6
    check-cast v0, Lgnu/kawa/lispexpr/ReaderDispatch;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_8} :catch_1f

    const/4 v1, 0x0

    .line 71
    .local v0, "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    new-instance v1, Lgnu/kawa/lispexpr/ReaderDispatchMacro;

    :try_start_b
    move-object v2, p2

    check-cast v2, Lgnu/mapping/Procedure;
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_e} :catch_15

    invoke-direct {v1, v2}, Lgnu/kawa/lispexpr/ReaderDispatchMacro;-><init>(Lgnu/mapping/Procedure;)V

    invoke-virtual {v0, p1, v1}, Lgnu/kawa/lispexpr/ReaderDispatch;->set(ILjava/lang/Object;)V

    .end local v0    # "entry":Lgnu/kawa/lispexpr/ReaderDispatch;
    return-void

    .line 72
    .end local p0    # "disp$Mnchar":C
    .end local p1    # "sub$Mnchar":C
    .end local p2    # "function":Ljava/lang/Object;
    .end local p3    # "readtable":Lgnu/kawa/lispexpr/ReadTable;
    :catch_15
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    const-string v0, "gnu.kawa.lispexpr.ReaderDispatchMacro.<init>(gnu.mapping.Procedure)"

    invoke-direct {p1, p0, v0, p3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1

    .line 70
    :catch_1f
    move-exception p0

    new-instance p1, Lgnu/mapping/WrongType;

    const/4 p2, -0x2

    const-string p3, "entry"

    invoke-direct {p1, p0, p3, p2, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p1
.end method

.method public static setMacroCharacter(CLjava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;Z)V
    .registers 4

    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    return-void
.end method

.method public static setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V
    .registers 6
    .param p0, "char"    # C
    .param p1, "function"    # Ljava/lang/Object;
    .param p2, "non$Mnterminating"    # Z
    .param p3, "readtable"    # Lgnu/kawa/lispexpr/ReadTable;

    .line 25
    nop

    .line 30
    new-instance v0, Lgnu/kawa/lispexpr/ReaderMacro;

    :try_start_3
    move-object v1, p1

    check-cast v1, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_6} :catch_d

    invoke-direct {v0, v1, p2}, Lgnu/kawa/lispexpr/ReaderMacro;-><init>(Lgnu/mapping/Procedure;Z)V

    invoke-virtual {p3, p0, v0}, Lgnu/kawa/lispexpr/ReadTable;->set(ILjava/lang/Object;)V

    return-void

    .line 31
    .end local p0    # "char":C
    .end local p1    # "function":Ljava/lang/Object;
    .end local p2    # "non$Mnterminating":Z
    .end local p3    # "readtable":Lgnu/kawa/lispexpr/ReadTable;
    :catch_d
    move-exception p0

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x1

    const-string v0, "gnu.kawa.lispexpr.ReaderMacro.<init>(gnu.mapping.Procedure,boolean)"

    invoke-direct {p2, p0, v0, p3, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .registers 4

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1
    invoke-static {}, Lgnu/kawa/slib/readtable;->currentReadtable()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_2e

    .line 57
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_a
    :try_start_a
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_11} :catch_17

    invoke-static {p1}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(C)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 58
    :catch_17
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const/4 v1, 0x1

    const-string v2, "make-dispatch-macro-character"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 5
    :sswitch_21
    invoke-static {p2}, Lgnu/kawa/slib/readtable;->isReadtable(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2c

    :cond_2a
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2c
    return-object p1

    nop

    :sswitch_data_2e
    .sparse-switch
        0x2 -> :sswitch_21
        0x6 -> :sswitch_a
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const-string v0, "define-reader-ctor"

    const-string v1, "get-dispatch-macro-table"

    const-string v2, "make-dispatch-macro-character"

    iget v3, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_82

    .line 82
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_12
    :try_start_12
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_14
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_14} :catch_23

    :try_start_14
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_16
    .catch Ljava/lang/ClassCastException; {:try_start_14 .. :try_end_16} :catch_1c

    invoke-static {p2, p3}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_1c
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_23
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 74
    :sswitch_2a
    :try_start_2a
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_2a .. :try_end_31} :catch_44

    :try_start_31
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_31 .. :try_end_38} :catch_3d

    invoke-static {p1, p2}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CC)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 75
    :catch_3d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_44
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 57
    :sswitch_4b
    :try_start_4b
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_52
    .catch Ljava/lang/ClassCastException; {:try_start_4b .. :try_end_52} :catch_65

    :try_start_52
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_54
    .catch Ljava/lang/ClassCastException; {:try_start_52 .. :try_end_54} :catch_5e

    if-eq p3, p2, :cond_57

    goto :goto_58

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-static {p1, v5}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZ)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 60
    :catch_5e
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 58
    :catch_65
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_6c
    :try_start_6c
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_73
    .catch Ljava/lang/ClassCastException; {:try_start_6c .. :try_end_73} :catch_79

    invoke-static {p1, p3}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    :catch_79
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    const-string v0, "set-macro-character"

    invoke-direct {p3, p1, v0, v5, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_82
    .sparse-switch
        0x3 -> :sswitch_6c
        0x6 -> :sswitch_4b
        0xb -> :sswitch_2a
        0xd -> :sswitch_12
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const-string v0, "set-dispatch-macro-character"

    const-string v1, "set-macro-character"

    const-string v2, "define-reader-ctor"

    const-string v3, "get-dispatch-macro-table"

    const-string v4, "make-dispatch-macro-character"

    iget v5, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v5, :sswitch_data_ce

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_18
    :try_start_18
    check-cast p2, Lgnu/mapping/Symbol;
    :try_end_1a
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1a} :catch_32

    :try_start_1a
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_1a .. :try_end_1c} :catch_2b

    :try_start_1c
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_1c .. :try_end_1e} :catch_24

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/readtable;->defineReaderCtor(Lgnu/mapping/Symbol;Lgnu/mapping/Procedure;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 83
    :catch_24
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 82
    :catch_2b
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v2, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_32
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v2, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 74
    :sswitch_39
    :try_start_39
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_40
    .catch Ljava/lang/ClassCastException; {:try_start_39 .. :try_end_40} :catch_5c

    :try_start_40
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_47
    .catch Ljava/lang/ClassCastException; {:try_start_40 .. :try_end_47} :catch_55

    :try_start_47
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_49
    .catch Ljava/lang/ClassCastException; {:try_start_47 .. :try_end_49} :catch_4e

    invoke-static {p1, p2, p4}, Lgnu/kawa/slib/readtable;->getDispatchMacroTable(CCLgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 76
    :catch_4e
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 75
    :catch_55
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v3, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_5c
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v3, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 65
    :sswitch_63
    :try_start_63
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_6a
    .catch Ljava/lang/ClassCastException; {:try_start_63 .. :try_end_6a} :catch_7e

    :try_start_6a
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_6a .. :try_end_71} :catch_77

    invoke-static {p1, p2, p4}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 66
    :catch_77
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_7e
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 57
    :sswitch_85
    :try_start_85
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_8c
    .catch Ljava/lang/ClassCastException; {:try_start_85 .. :try_end_8c} :catch_a7

    :try_start_8c
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_8e
    .catch Ljava/lang/ClassCastException; {:try_start_8c .. :try_end_8e} :catch_a0

    if-eq p3, p2, :cond_91

    const/4 v6, 0x1

    :cond_91
    :try_start_91
    check-cast p4, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_93
    .catch Ljava/lang/ClassCastException; {:try_start_91 .. :try_end_93} :catch_99

    invoke-static {p1, v6, p4}, Lgnu/kawa/slib/readtable;->makeDispatchMacroCharacter(CZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 61
    :catch_99
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 60
    :catch_a0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v4, v8, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 58
    :catch_a7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v4, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_ae
    :try_start_ae
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_b5
    .catch Ljava/lang/ClassCastException; {:try_start_ae .. :try_end_b5} :catch_c7

    :try_start_b5
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_b7
    .catch Ljava/lang/ClassCastException; {:try_start_b5 .. :try_end_b7} :catch_c0

    if-eq p4, p2, :cond_ba

    const/4 v6, 0x1

    :cond_ba
    invoke-static {p1, p3, v6}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;Z)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 28
    :catch_c0
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v7, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 25
    :catch_c7
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v9, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    :sswitch_data_ce
    .sparse-switch
        0x3 -> :sswitch_ae
        0x6 -> :sswitch_85
        0x9 -> :sswitch_63
        0xb -> :sswitch_39
        0xd -> :sswitch_18
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    const-string v0, "set-dispatch-macro-character"

    const-string v1, "set-macro-character"

    iget v2, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v3, 0x4

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_68

    .line 65
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_10
    :try_start_10
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_17
    .catch Ljava/lang/ClassCastException; {:try_start_10 .. :try_end_17} :catch_35

    :try_start_17
    move-object p2, p3

    check-cast p2, Lgnu/text/Char;

    invoke-virtual {p2}, Lgnu/text/Char;->charValue()C

    move-result p2
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_1e} :catch_2d

    :try_start_1e
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_20
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_20} :catch_26

    invoke-static {p1, p2, p4, p5}, Lgnu/kawa/slib/readtable;->setDispatchMacroCharacter(CCLjava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 68
    :catch_26
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v0, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 66
    :catch_2d
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p4, 0x2

    invoke-direct {p2, p1, v0, p4, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    :catch_35
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v0, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    .line 25
    :sswitch_3c
    :try_start_3c
    move-object p1, p2

    check-cast p1, Lgnu/text/Char;

    invoke-virtual {p1}, Lgnu/text/Char;->charValue()C

    move-result p1
    :try_end_43
    .catch Ljava/lang/ClassCastException; {:try_start_3c .. :try_end_43} :catch_60

    :try_start_43
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_45
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_45} :catch_58

    if-eq p4, p2, :cond_48

    goto :goto_49

    :cond_48
    const/4 v4, 0x0

    :goto_49
    :try_start_49
    check-cast p5, Lgnu/kawa/lispexpr/ReadTable;
    :try_end_4b
    .catch Ljava/lang/ClassCastException; {:try_start_49 .. :try_end_4b} :catch_51

    invoke-static {p1, p3, v4, p5}, Lgnu/kawa/slib/readtable;->setMacroCharacter(CLjava/lang/Object;ZLgnu/kawa/lispexpr/ReadTable;)V

    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object p1

    .line 29
    :catch_51
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    invoke-direct {p2, p1, v1, v3, p5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 28
    :catch_58
    move-exception p1

    new-instance p2, Lgnu/mapping/WrongType;

    const/4 p3, 0x3

    invoke-direct {p2, p1, v1, p3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p2

    .line 25
    :catch_60
    move-exception p1

    new-instance p3, Lgnu/mapping/WrongType;

    invoke-direct {p3, p1, v1, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw p3

    nop

    :sswitch_data_68
    .sparse-switch
        0x3 -> :sswitch_3c
        0x9 -> :sswitch_10
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .registers 5

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 p1, 0x0

    iput p1, p2, Lgnu/mapping/CallContext;->pc:I

    return p1

    :cond_b
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 7

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_22

    .line 5
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 57
    :sswitch_c
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_17

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :cond_17
    const p1, -0xbffff

    return p1

    .line 5
    :sswitch_1b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    return v1

    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_1b
        0x6 -> :sswitch_c
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 10

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffe

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, -0xbffff

    sparse-switch v0, :sswitch_data_54

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 82
    :sswitch_12
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_17

    return v4

    :cond_17
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_1e

    return v1

    :cond_1e
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 74
    :sswitch_25
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_37

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_36

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_36
    return v1

    :cond_37
    return v4

    .line 57
    :sswitch_38
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_45

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_45
    return v4

    .line 25
    :sswitch_46
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_53

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p4, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_53
    return v4

    :sswitch_data_54
    .sparse-switch
        0x3 -> :sswitch_46
        0x6 -> :sswitch_38
        0xb -> :sswitch_25
        0xd -> :sswitch_12
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffd

    const v2, -0xbfffe

    const/4 v3, 0x0

    const/4 v4, 0x3

    const v5, -0xbffff

    sparse-switch v0, :sswitch_data_84

    .line 25
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 82
    :sswitch_15
    instance-of v0, p2, Lgnu/mapping/Symbol;

    if-nez v0, :cond_1a

    return v5

    :cond_1a
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/mapping/Procedure;

    if-nez p2, :cond_21

    return v2

    :cond_21
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_28

    return v1

    :cond_28
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    .line 74
    :sswitch_2f
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_48

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_47

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_40

    return v1

    :cond_40
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_47
    return v2

    :cond_48
    return v5

    .line 65
    :sswitch_49
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_5d

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_5c

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_5c
    return v2

    :cond_5d
    return v5

    .line 57
    :sswitch_5e
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_72

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of p2, p4, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_6b

    return v1

    :cond_6b
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_72
    return v5

    .line 25
    :sswitch_73
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_82

    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v4, p5, Lgnu/mapping/CallContext;->pc:I

    return v3

    :cond_82
    return v5

    nop

    :sswitch_data_84
    .sparse-switch
        0x3 -> :sswitch_73
        0x6 -> :sswitch_5e
        0x9 -> :sswitch_49
        0xb -> :sswitch_2f
        0xd -> :sswitch_15
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 12

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbfffc

    const/4 v2, 0x0

    const/4 v3, 0x4

    const v4, -0xbffff

    sparse-switch v0, :sswitch_data_48

    .line 25
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 65
    :sswitch_12
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_30

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of p2, p3, Lgnu/text/Char;

    if-eqz p2, :cond_2c

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_25

    return v1

    :cond_25
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_2c
    const p1, -0xbfffe

    return p1

    :cond_30
    return v4

    .line 25
    :sswitch_31
    instance-of v0, p2, Lgnu/text/Char;

    if-eqz v0, :cond_47

    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    instance-of p2, p5, Lgnu/kawa/lispexpr/ReadTable;

    if-nez p2, :cond_40

    return v1

    :cond_40
    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p6, Lgnu/mapping/CallContext;->pc:I

    return v2

    :cond_47
    return v4

    :sswitch_data_48
    .sparse-switch
        0x3 -> :sswitch_31
        0x9 -> :sswitch_12
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 3
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 5
    nop

    .line 25
    nop

    .line 57
    nop

    .line 65
    nop

    .line 74
    nop

    .line 82
    return-void
.end method

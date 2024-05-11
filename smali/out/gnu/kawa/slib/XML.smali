.class public Lgnu/kawa/slib/XML;
.super Lgnu/expr/ModuleBody;
.source "XML.scm"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nXML.scm\nScheme\n*S Scheme\n*F\n+ 1 XML.scm\n/u2/home/jis/ai2-kawa/gnu/kawa/slib/XML.scm\n*L\n1#1,24:1\n*E\n"
.end annotation


# static fields
.field public static final $instance:Lgnu/kawa/slib/XML;

.field static final Lit0:Lgnu/mapping/SimpleSymbol;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field public static as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

.field public static final attribute$Mnname:Lgnu/expr/ModuleMethod;

.field public static final comment:Ljava/lang/Class;

.field public static final element$Mnname:Lgnu/expr/ModuleMethod;

.field public static final parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

.field public static final processing$Mninstruction:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "attribute-name"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/XML;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v1, Lgnu/mapping/SimpleSymbol;

    const-string v2, "element-name"

    invoke-direct {v1, v2}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/SimpleSymbol;

    sput-object v1, Lgnu/kawa/slib/XML;->Lit1:Lgnu/mapping/SimpleSymbol;

    new-instance v2, Lgnu/mapping/SimpleSymbol;

    const-string v3, "parse-xml-from-url"

    invoke-direct {v2, v3}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/mapping/SimpleSymbol;

    sput-object v2, Lgnu/kawa/slib/XML;->Lit0:Lgnu/mapping/SimpleSymbol;

    const-class v3, Lgnu/kawa/xml/KProcessingInstruction;

    sput-object v3, Lgnu/kawa/slib/XML;->processing$Mninstruction:Ljava/lang/Class;

    const-class v3, Lgnu/kawa/xml/KComment;

    sput-object v3, Lgnu/kawa/slib/XML;->comment:Ljava/lang/Class;

    new-instance v3, Lgnu/kawa/slib/XML;

    invoke-direct {v3}, Lgnu/kawa/slib/XML;-><init>()V

    sput-object v3, Lgnu/kawa/slib/XML;->$instance:Lgnu/kawa/slib/XML;

    new-instance v4, Lgnu/expr/ModuleMethod;

    const/4 v5, 0x1

    const/16 v6, 0x1001

    invoke-direct {v4, v3, v5, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v4, Lgnu/kawa/slib/XML;->parse$Mnxml$Mnfrom$Mnurl:Lgnu/expr/ModuleMethod;

    new-instance v2, Lgnu/expr/ModuleMethod;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v1, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v2, Lgnu/kawa/slib/XML;->element$Mnname:Lgnu/expr/ModuleMethod;

    new-instance v1, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v1, Lgnu/kawa/slib/XML;->attribute$Mnname:Lgnu/expr/ModuleMethod;

    invoke-virtual {v3}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "attr"    # Lgnu/kawa/xml/KAttr;

    .line 23
    nop

    .line 24
    invoke-virtual {p0}, Lgnu/kawa/xml/KAttr;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;
    .registers 2
    .param p0, "element"    # Lgnu/kawa/xml/KElement;

    .line 20
    nop

    .line 21
    invoke-virtual {p0}, Lgnu/kawa/xml/KElement;->getNodeSymbol()Lgnu/mapping/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public static parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;
    .registers 2
    .param p0, "url"    # Ljava/lang/Object;

    .line 17
    nop

    .line 18
    invoke-static {p0}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_30

    .line 23
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_b
    :try_start_b
    check-cast p2, Lgnu/kawa/xml/KAttr;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_d} :catch_12

    invoke-static {p2}, Lgnu/kawa/slib/XML;->attributeName(Lgnu/kawa/xml/KAttr;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "attribute-name"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 20
    :pswitch_1b
    :try_start_1b
    check-cast p2, Lgnu/kawa/xml/KElement;
    :try_end_1d
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_1d} :catch_22

    invoke-static {p2}, Lgnu/kawa/slib/XML;->elementName(Lgnu/kawa/xml/KElement;)Lgnu/mapping/Symbol;

    move-result-object p1

    return-object p1

    :catch_22
    move-exception p1

    new-instance v0, Lgnu/mapping/WrongType;

    const-string v2, "element-name"

    invoke-direct {v0, p1, v2, v1, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v0

    .line 17
    :pswitch_2b
    invoke-static {p2}, Lgnu/kawa/slib/XML;->parseXmlFromUrl(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object p1

    return-object p1

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1b
        :pswitch_b
    .end packed-switch
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .registers 8

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const v1, -0xbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_2e

    .line 17
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result p1

    return p1

    .line 23
    :pswitch_f
    instance-of v0, p2, Lgnu/kawa/xml/KAttr;

    if-nez v0, :cond_14

    return v1

    :cond_14
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 20
    :pswitch_1b
    instance-of v0, p2, Lgnu/kawa/xml/KElement;

    if-nez v0, :cond_20

    return v1

    :cond_20
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    .line 17
    :pswitch_27
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v3, p3, Lgnu/mapping/CallContext;->pc:I

    return v2

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_27
        :pswitch_1b
        :pswitch_f
    .end packed-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .registers 4
    .param p1, "$ctx"    # Lgnu/mapping/CallContext;

    const/4 v0, 0x0

    .line 1
    .local v0, "$result":Lgnu/lists/Consumer;
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    new-instance v1, Lgnu/kawa/xml/OutputAsXML;

    invoke-direct {v1}, Lgnu/kawa/xml/OutputAsXML;-><init>()V

    sput-object v1, Lgnu/kawa/slib/XML;->as$Mnxml:Lgnu/kawa/xml/OutputAsXML;

    .line 3
    nop

    .line 14
    nop

    .line 17
    nop

    .line 20
    nop

    .line 23
    return-void
.end method

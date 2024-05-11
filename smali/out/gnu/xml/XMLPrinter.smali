.class public Lgnu/xml/XMLPrinter;
.super Lgnu/mapping/OutPort;
.source "XMLPrinter.java"

# interfaces
.implements Lgnu/lists/PositionConsumer;
.implements Lgnu/lists/XConsumer;


# static fields
.field private static final COMMENT:I = -0x5

.field private static final ELEMENT_END:I = -0x4

.field private static final ELEMENT_START:I = -0x3

.field static final HtmlEmptyTags:Ljava/lang/String; = "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

.field private static final KEYWORD:I = -0x6

.field private static final PROC_INST:I = -0x7

.field private static final WORD:I = -0x2

.field public static final doctypePublic:Lgnu/mapping/ThreadLocation;

.field public static final doctypeSystem:Lgnu/mapping/ThreadLocation;

.field public static final indentLoc:Lgnu/mapping/ThreadLocation;


# instance fields
.field canonicalize:Z

.field public canonicalizeCDATA:Z

.field elementNameStack:[Ljava/lang/Object;

.field elementNesting:I

.field public escapeNonAscii:Z

.field public escapeText:Z

.field inAttribute:Z

.field inComment:I

.field inDocument:Z

.field inStartTag:Z

.field public indentAttributes:Z

.field isHtml:Z

.field isHtmlOrXhtml:Z

.field namespaceBindings:Lgnu/xml/NamespaceBinding;

.field namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

.field needXMLdecl:Z

.field prev:I

.field public printIndent:I

.field printXMLdecl:Z

.field savedHighSurrogate:C

.field public strict:Z

.field style:Ljava/lang/Object;

.field undeclareNamespaces:Z

.field public useEmptyElementTag:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "doctype-system"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    .line 59
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "doctype-public"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    .line 61
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "xml-indent"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/OutPort;Z)V
    .registers 6
    .param p1, "out"    # Lgnu/mapping/OutPort;
    .param p2, "autoFlush"    # Z

    .line 90
    invoke-direct {p0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v2, 0x2

    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    const/16 v0, 0x14

    new-array v1, v0, [Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 110
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v2, 0x2

    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    const/16 v0, 0x14

    new-array v1, v0, [Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lgnu/text/Path;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "path"    # Lgnu/text/Path;

    .line 115
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZLgnu/text/Path;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    const/16 v0, 0x14

    new-array v1, v0, [Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "autoFlush"    # Z

    .line 100
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;ZZ)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v2, 0x2

    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    const/16 v0, 0x14

    new-array v1, v0, [Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;

    .line 105
    invoke-direct {p0, p1}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v2, 0x2

    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    const/16 v0, 0x14

    new-array v1, v0, [Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "autoFlush"    # Z

    .line 95
    invoke-direct {p0, p1, p2}, Lgnu/mapping/OutPort;-><init>(Ljava/io/Writer;Z)V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    .line 32
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 33
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 36
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 45
    const/4 v2, 0x2

    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 46
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 47
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    .line 48
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 49
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 50
    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    .line 67
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 70
    const/16 v0, 0x14

    new-array v1, v0, [Lgnu/xml/NamespaceBinding;

    iput-object v1, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 84
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 96
    return-void
.end method

.method static formatDecimal(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .line 692
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 693
    .local v1, "dot":I
    if-ltz v1, :cond_26

    .line 695
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 696
    .local v2, "len":I
    move v3, v2

    .line 698
    .local v3, "pos":I
    :goto_d
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 699
    .local v4, "ch":C
    const/16 v5, 0x30

    if-eq v4, v5, :cond_25

    .line 701
    if-eq v4, v0, :cond_1b

    .line 702
    add-int/lit8 v3, v3, 0x1

    .line 703
    :cond_1b
    if-ne v3, v2, :cond_1f

    move-object v0, p0

    goto :goto_24

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    .line 705
    .end local v4    # "ch":C
    :cond_25
    goto :goto_d

    .line 707
    .end local v2    # "len":I
    .end local v3    # "pos":I
    :cond_26
    return-object p0
.end method

.method public static formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .registers 2
    .param p0, "dec"    # Ljava/math/BigDecimal;

    .line 684
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDouble(D)Ljava/lang/String;
    .registers 11
    .param p0, "d"    # D

    .line 643
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 644
    const-string v0, "NaN"

    return-object v0

    .line 645
    :cond_9
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 646
    .local v2, "neg":Z
    :goto_12
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 647
    if-eqz v2, :cond_1d

    const-string v0, "-INF"

    goto :goto_1f

    :cond_1d
    const-string v0, "INF"

    :goto_1f
    return-object v0

    .line 648
    :cond_20
    if-eqz v2, :cond_24

    neg-double v3, p0

    goto :goto_25

    :cond_24
    move-wide v3, p0

    .line 649
    .local v3, "dabs":D
    :goto_25
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    .line 652
    .local v5, "dstr":Ljava/lang/String;
    const-wide v6, 0x412e848000000000L    # 1000000.0

    cmpl-double v8, v3, v6

    if-gez v8, :cond_3b

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v8, v3, v6

    if-gez v8, :cond_44

    :cond_3b
    cmpl-double v6, v3, v0

    if-eqz v6, :cond_44

    .line 653
    invoke-static {v5}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 655
    :cond_44
    invoke-static {v5}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatFloat(F)Ljava/lang/String;
    .registers 9
    .param p0, "f"    # F

    .line 661
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 662
    const-string v0, "NaN"

    return-object v0

    .line 663
    :cond_9
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 664
    .local v0, "neg":Z
    :goto_11
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 665
    if-eqz v0, :cond_1c

    const-string v1, "-INF"

    goto :goto_1e

    :cond_1c
    const-string v1, "INF"

    :goto_1e
    return-object v1

    .line 666
    :cond_1f
    if-eqz v0, :cond_23

    neg-float v1, p0

    goto :goto_24

    :cond_23
    move v1, p0

    .line 667
    .local v1, "fabs":F
    :goto_24
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    .line 670
    .local v2, "fstr":Ljava/lang/String;
    const v3, 0x49742400    # 1000000.0f

    cmpl-float v3, v1, v3

    if-gez v3, :cond_39

    float-to-double v3, v1

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v7, v3, v5

    if-gez v7, :cond_45

    :cond_39
    float-to-double v3, v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_45

    .line 671
    invoke-static {v2}, Lgnu/math/RealNum;->toStringScientific(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 673
    :cond_45
    invoke-static {v2}, Lgnu/math/RealNum;->toStringDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isHtmlEmptyElementTag(Ljava/lang/String;)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;

    .line 514
    const-string v0, "/area/base/basefont/br/col/frame/hr/img/input/isindex/link/meta/para/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 515
    .local v1, "index":I
    if-lez v1, :cond_1f

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static make(Lgnu/mapping/OutPort;Ljava/lang/Object;)Lgnu/xml/XMLPrinter;
    .registers 4
    .param p0, "out"    # Lgnu/mapping/OutPort;
    .param p1, "style"    # Ljava/lang/Object;

    .line 120
    new-instance v0, Lgnu/xml/XMLPrinter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lgnu/xml/XMLPrinter;-><init>(Lgnu/mapping/OutPort;Z)V

    .line 121
    .local v0, "xout":Lgnu/xml/XMLPrinter;
    invoke-virtual {v0, p1}, Lgnu/xml/XMLPrinter;->setStyle(Ljava/lang/Object;)V

    .line 122
    return-object v0
.end method

.method private startWord()V
    .registers 1

    .line 241
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 242
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordStart()V

    .line 243
    return-void
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 129
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 130
    .local v0, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Lgnu/xml/XMLPrinter;

    invoke-direct {v1, v0}, Lgnu/xml/XMLPrinter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, p0}, Lgnu/xml/XMLPrinter;->writeObject(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public beginComment()V
    .registers 4

    .line 842
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 843
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_1c

    .line 845
    iget v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_12

    const/4 v2, -0x4

    if-eq v1, v2, :cond_12

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1c

    .line 846
    :cond_12
    if-lez v0, :cond_17

    const/16 v0, 0x52

    goto :goto_19

    :cond_17
    const/16 v0, 0x4e

    :goto_19
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 849
    :cond_1c
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 850
    const/4 v0, 0x1

    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 851
    return-void
.end method

.method public beginEntity(Ljava/lang/Object;)V
    .registers 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 323
    return-void
.end method

.method public closeTag()V
    .registers 6

    .line 264
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    const/16 v1, 0x3e

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_23

    .line 266
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_18

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v0, :cond_18

    .line 267
    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 268
    :cond_18
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 269
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 270
    const/4 v0, -0x3

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_3a

    .line 272
    :cond_23
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-eqz v0, :cond_3a

    .line 275
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v4, "<?xml version=\"1.0\"?>\n"

    invoke-virtual {v0, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_36

    .line 278
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v3, v0}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    :cond_36
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 281
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 283
    :cond_3a
    :goto_3a
    return-void
.end method

.method public consume(Lgnu/lists/SeqPosition;)V
    .registers 4
    .param p1, "position"    # Lgnu/lists/SeqPosition;

    .line 919
    iget-object v0, p1, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v1, p1, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v0, v1, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 920
    return-void
.end method

.method public endAttribute()V
    .registers 3

    .line 617
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_17

    .line 619
    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_13

    .line 621
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 624
    :cond_13
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 626
    :cond_17
    return-void
.end method

.method public endComment()V
    .registers 3

    .line 855
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "-->"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 856
    const/4 v0, -0x5

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 858
    return-void
.end method

.method public endDocument()V
    .registers 2

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 316
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_c

    .line 317
    const-string v0, ""

    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 318
    :cond_c
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->freshLine()V

    .line 319
    return-void
.end method

.method public endElement()V
    .registers 16

    .line 536
    iget v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-nez v0, :cond_7

    .line 537
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 538
    :cond_7
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    iget v1, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 541
    .local v0, "type":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 543
    .local v1, "typeName":Ljava/lang/String;
    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    const/4 v4, -0x4

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ">"

    if-eqz v3, :cond_a8

    .line 545
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_28

    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v3, :cond_28

    .line 547
    invoke-virtual {p0, v5}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 549
    :cond_28
    const/4 v3, 0x0

    .line 550
    .local v3, "end":Ljava/lang/String;
    if-eqz v1, :cond_33

    invoke-static {v1}, Lgnu/xml/XMLPrinter;->isHtmlEmptyElementTag(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_33

    const/4 v8, 0x1

    goto :goto_34

    :cond_33
    const/4 v8, 0x0

    .line 551
    .local v8, "isEmpty":Z
    :goto_34
    iget v9, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    if-eqz v9, :cond_3c

    if-eqz v1, :cond_8c

    if-nez v8, :cond_8c

    .line 554
    :cond_3c
    instance-of v9, v0, Lgnu/mapping/Symbol;

    if-eqz v9, :cond_8c

    .line 556
    move-object v9, v0

    check-cast v9, Lgnu/mapping/Symbol;

    .line 557
    .local v9, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .line 558
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    .line 559
    .local v11, "uri":Ljava/lang/String;
    invoke-virtual {v9}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v12

    .line 560
    .local v12, "local":Ljava/lang/String;
    const-string v13, "></"

    if-eq v10, v5, :cond_73

    .line 561
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8c

    .line 562
    :cond_73
    if-eq v11, v5, :cond_77

    if-nez v11, :cond_8c

    .line 563
    :cond_77
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .end local v9    # "sym":Lgnu/mapping/Symbol;
    .end local v10    # "prefix":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    .end local v12    # "local":Ljava/lang/String;
    :cond_8c
    :goto_8c
    if-nez v3, :cond_a0

    .line 567
    if-eqz v8, :cond_95

    iget-boolean v9, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v9, :cond_95

    goto :goto_9f

    :cond_95
    iget v7, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_9d

    const-string v7, " />"

    goto :goto_9f

    :cond_9d
    const-string v7, "/>"

    :goto_9f
    move-object v3, v7

    .line 568
    :cond_a0
    iget-object v7, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v7, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 569
    iput-boolean v6, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 570
    .end local v3    # "end":Ljava/lang/String;
    .end local v8    # "isEmpty":Z
    goto :goto_ce

    .line 573
    :cond_a8
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_bf

    .line 575
    invoke-virtual {p0, v6, v6}, Lgnu/xml/XMLPrinter;->setIndentation(IZ)V

    .line 576
    iget v3, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-ne v3, v4, :cond_bf

    .line 577
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-lez v3, :cond_ba

    const/16 v3, 0x52

    goto :goto_bc

    :cond_ba
    const/16 v3, 0x4e

    :goto_bc
    invoke-virtual {p0, v3}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 580
    :cond_bf
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v6, "</"

    invoke-virtual {v3, v6}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 582
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v3, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 584
    :goto_ce
    iget v3, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v3, :cond_d5

    .line 586
    invoke-virtual {p0, v5}, Lgnu/xml/XMLPrinter;->endLogicalBlock(Ljava/lang/String;)V

    .line 588
    :cond_d5
    iput v4, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 589
    if-eqz v1, :cond_ef

    iget-boolean v3, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v3, :cond_ef

    const-string v3, "script"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ed

    const-string v3, "style"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 591
    :cond_ed
    iput-boolean v2, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 593
    :cond_ef
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    iget v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    sub-int/2addr v4, v2

    iput v4, p0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aget-object v2, v3, v4

    iput-object v2, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 594
    const/4 v2, 0x0

    aput-object v2, v3, v4

    .line 595
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 596
    return-void
.end method

.method public endEntity()V
    .registers 1

    .line 327
    return-void
.end method

.method protected endNumber()V
    .registers 1

    .line 259
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 260
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .line 924
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serialization error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # Ljava/lang/Object;

    .line 521
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1e

    .line 523
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    .line 524
    .local v0, "sym":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "http://www.w3.org/1999/xhtml"

    if-eq v1, v2, :cond_19

    iget-boolean v2, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    if-eqz v2, :cond_18

    const-string v2, ""

    if-ne v1, v2, :cond_18

    goto :goto_19

    .line 528
    .end local v0    # "sym":Lgnu/mapping/Symbol;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_18
    goto :goto_27

    .line 527
    .restart local v0    # "sym":Lgnu/mapping/Symbol;
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_19
    :goto_19
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 529
    .end local v0    # "sym":Lgnu/mapping/Symbol;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_1e
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    if-eqz v0, :cond_27

    .line 530
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 531
    :cond_27
    :goto_27
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoring()Z
    .registers 2

    .line 770
    const/4 v0, 0x0

    return v0
.end method

.method mustHexEscape(I)Z
    .registers 3
    .param p1, "v"    # I

    .line 160
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_c

    const/16 v0, 0x9f

    if-le p1, v0, :cond_23

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeNonAscii:Z

    if-nez v0, :cond_23

    :cond_c
    const/16 v0, 0x2028

    if-eq p1, v0, :cond_23

    const/16 v0, 0x20

    if-ge p1, v0, :cond_21

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_23

    const/16 v0, 0x9

    if-eq p1, v0, :cond_21

    const/16 v0, 0xa

    if-eq p1, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method public print(Ljava/lang/Object;)V
    .registers 4
    .param p1, "v"    # Ljava/lang/Object;

    .line 712
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_c

    .line 713
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .line 714
    :cond_c
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_25

    instance-of v0, p1, Lgnu/math/DFloNum;

    if-eqz v0, :cond_15

    goto :goto_25

    .line 716
    :cond_15
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_30

    .line 717
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    .line 715
    :cond_25
    :goto_25
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object p1

    .line 718
    :cond_30
    :goto_30
    if-nez p1, :cond_35

    const-string v0, "(null)"

    goto :goto_39

    :cond_35
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_39
    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method setIndentMode()V
    .registers 5

    .line 287
    sget-object v0, Lgnu/xml/XMLPrinter;->indentLoc:Lgnu/mapping/ThreadLocation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    .local v0, "xmlIndent":Ljava/lang/Object;
    if-nez v0, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "indent":Ljava/lang/String;
    :goto_e
    const/4 v2, -0x1

    if-nez v1, :cond_14

    .line 290
    iput v2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_37

    .line 291
    :cond_14
    const-string v3, "pretty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 292
    const/4 v2, 0x0

    iput v2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_37

    .line 293
    :cond_20
    const-string v3, "always"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "yes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_34

    .line 296
    :cond_31
    iput v2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    goto :goto_37

    .line 294
    :cond_34
    :goto_34
    const/4 v2, 0x1

    iput v2, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    .line 297
    :goto_37
    return-void
.end method

.method public setPrintXMLdecl(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 30
    iput-boolean p1, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    return-void
.end method

.method public setStyle(Ljava/lang/Object;)V
    .registers 6
    .param p1, "style"    # Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Lgnu/xml/XMLPrinter;->style:Ljava/lang/Object;

    .line 137
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput v0, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 138
    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_22

    .line 140
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    .line 141
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 142
    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 144
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    if-ne v0, v3, :cond_2c

    .line 145
    sget-object v0, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    goto :goto_2c

    .line 147
    :cond_22
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    sget-object v3, Lgnu/kawa/xml/XmlNamespace;->HTML_BINDINGS:Lgnu/xml/NamespaceBinding;

    if-ne v0, v3, :cond_2c

    .line 148
    sget-object v0, Lgnu/xml/NamespaceBinding;->predefinedXML:Lgnu/xml/NamespaceBinding;

    iput-object v0, p0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 149
    :cond_2c
    :goto_2c
    const-string v0, "xhtml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 151
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->isHtmlOrXhtml:Z

    .line 152
    iput v2, p0, Lgnu/xml/XMLPrinter;->useEmptyElementTag:I

    .line 154
    :cond_38
    const-string v0, "plain"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 156
    :cond_43
    return-void
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .registers 5
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 602
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->strict:Z

    if-eqz v0, :cond_f

    .line 603
    const-string v0, "attribute not in element"

    const-string v1, "SENR0001"

    invoke-virtual {p0, v0, v1}, Lgnu/xml/XMLPrinter;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :cond_f
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_1a

    .line 605
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 606
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 607
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 608
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_2b

    .line 609
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeBreakFill()V

    .line 610
    :cond_2b
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 612
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 613
    return-void
.end method

.method public startDocument()V
    .registers 3

    .line 301
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->printXMLdecl:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 305
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 307
    :cond_7
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 308
    iput-boolean v1, p0, Lgnu/xml/XMLPrinter;->inDocument:Z

    .line 309
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v0, :cond_1a

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    if-nez v0, :cond_1a

    .line 310
    const/4 v0, 0x2

    const-string v1, ""

    invoke-virtual {p0, v1, v1, v0}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    :cond_1a
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .registers 19
    .param p1, "type"    # Ljava/lang/Object;

    .line 348
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 349
    iget v2, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    if-nez v2, :cond_7e

    .line 351
    iget-boolean v2, v0, Lgnu/xml/XMLPrinter;->inDocument:Z

    if-nez v2, :cond_12

    .line 352
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLPrinter;->setIndentMode()V

    .line 353
    :cond_12
    iget v2, v0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v3, -0x7

    if-ne v2, v3, :cond_1c

    .line 354
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 355
    :cond_1c
    sget-object v2, Lgnu/xml/XMLPrinter;->doctypeSystem:Lgnu/mapping/ThreadLocation;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 356
    .local v2, "systemIdentifier":Ljava/lang/Object;
    if-eqz v2, :cond_7e

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "systemId":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7e

    .line 361
    sget-object v5, Lgnu/xml/XMLPrinter;->doctypePublic:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v5, v3}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 362
    .local v5, "publicIdentifier":Ljava/lang/Object;
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v7, "<!DOCTYPE "

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 363
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 364
    if-nez v5, :cond_48

    goto :goto_4c

    :cond_48
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "publicId":Ljava/lang/String;
    :goto_4c
    if-eqz v3, :cond_68

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_68

    .line 368
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v7, " PUBLIC \""

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 369
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v6, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 370
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v7, "\" \""

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_6f

    .line 374
    :cond_68
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v7, " SYSTEM \""

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 376
    :goto_6f
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v6, v4}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 377
    iget-object v6, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p0 .. p0}, Lgnu/xml/XMLPrinter;->println()V

    .line 382
    .end local v2    # "systemIdentifier":Ljava/lang/Object;
    .end local v3    # "publicId":Ljava/lang/String;
    .end local v4    # "systemId":Ljava/lang/String;
    .end local v5    # "publicIdentifier":Ljava/lang/Object;
    :cond_7e
    iget v2, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 v3, 0x2

    const-string v4, ""

    if-ltz v2, :cond_9d

    .line 384
    iget v5, v0, Lgnu/xml/XMLPrinter;->prev:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_90

    const/4 v6, -0x4

    if-eq v5, v6, :cond_90

    const/4 v6, -0x5

    if-ne v5, v6, :cond_9a

    .line 385
    :cond_90
    if-lez v2, :cond_95

    const/16 v2, 0x52

    goto :goto_97

    :cond_95
    const/16 v2, 0x4e

    :goto_97
    invoke-virtual {v0, v2}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 387
    :cond_9a
    invoke-virtual {v0, v4, v4, v3}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    :cond_9d
    iget-object v2, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v5, 0x3c

    invoke-virtual {v2, v5}, Lgnu/text/PrettyWriter;->write(I)V

    .line 390
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/XMLPrinter;->writeQName(Ljava/lang/Object;)V

    .line 391
    iget v2, v0, Lgnu/xml/XMLPrinter;->printIndent:I

    if-ltz v2, :cond_b2

    iget-boolean v2, v0, Lgnu/xml/XMLPrinter;->indentAttributes:Z

    if-eqz v2, :cond_b2

    .line 392
    invoke-virtual {v0, v4, v4, v3}, Lgnu/xml/XMLPrinter;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    :cond_b2
    iget-object v2, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    iget v3, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    aput-object v1, v2, v3

    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, "elementBindings":Lgnu/xml/NamespaceBinding;
    iget-object v4, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    add-int/lit8 v5, v3, 0x1

    iput v5, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    iget-object v5, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    aput-object v5, v4, v3

    .line 396
    instance-of v3, v1, Lgnu/xml/XName;

    const/4 v4, 0x1

    if-eqz v3, :cond_1a6

    .line 398
    move-object v3, v1

    check-cast v3, Lgnu/xml/XName;

    iget-object v2, v3, Lgnu/xml/XName;->namespaceNodes:Lgnu/xml/NamespaceBinding;

    .line 399
    iget-object v3, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-static {v2, v3}, Lgnu/xml/NamespaceBinding;->commonAncestor(Lgnu/xml/NamespaceBinding;Lgnu/xml/NamespaceBinding;)Lgnu/xml/NamespaceBinding;

    move-result-object v3

    .line 401
    .local v3, "join":Lgnu/xml/NamespaceBinding;
    if-nez v2, :cond_d7

    const/4 v6, 0x0

    goto :goto_db

    :cond_d7
    invoke-virtual {v2, v3}, Lgnu/xml/NamespaceBinding;->count(Lgnu/xml/NamespaceBinding;)I

    move-result v6

    .line 403
    .local v6, "numBindings":I
    :goto_db
    new-array v7, v6, [Lgnu/xml/NamespaceBinding;

    .line 404
    .local v7, "sortedBindings":[Lgnu/xml/NamespaceBinding;
    const/4 v8, 0x0

    .line 405
    .local v8, "i":I
    iget-boolean v9, v0, Lgnu/xml/XMLPrinter;->canonicalize:Z

    .line 407
    .local v9, "sortNamespaces":Z
    move-object v10, v2

    .local v10, "ns":Lgnu/xml/NamespaceBinding;
    :goto_e1
    if-eq v10, v3, :cond_11b

    .line 409
    move v11, v8

    .line 410
    .local v11, "j":I
    const/4 v12, 0x0

    .line 411
    .local v12, "skip":Z
    invoke-virtual {v10}, Lgnu/xml/NamespaceBinding;->getUri()Ljava/lang/String;

    move-result-object v13

    .line 412
    .local v13, "uri":Ljava/lang/String;
    invoke-virtual {v10}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v14

    .line 413
    .local v14, "prefix":Ljava/lang/String;
    :goto_ed
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_10e

    .line 415
    aget-object v15, v7, v11

    .line 417
    .local v15, "ns_j":Lgnu/xml/NamespaceBinding;
    invoke-virtual {v15}, Lgnu/xml/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "prefix_j":Ljava/lang/String;
    if-ne v14, v5, :cond_fa

    .line 419
    goto :goto_118

    .line 424
    :cond_fa
    if-nez v9, :cond_fd

    .line 425
    goto :goto_ed

    .line 426
    :cond_fd
    if-nez v14, :cond_100

    .line 427
    goto :goto_10e

    .line 428
    :cond_100
    if-eqz v5, :cond_109

    invoke-virtual {v14, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-gtz v16, :cond_109

    .line 429
    goto :goto_10e

    .line 430
    :cond_109
    add-int/lit8 v16, v11, 0x1

    aput-object v15, v7, v16

    .line 431
    .end local v5    # "prefix_j":Ljava/lang/String;
    .end local v15    # "ns_j":Lgnu/xml/NamespaceBinding;
    goto :goto_ed

    .line 432
    :cond_10e
    :goto_10e
    if-eqz v9, :cond_113

    .line 433
    add-int/lit8 v11, v11, 0x1

    goto :goto_114

    .line 435
    :cond_113
    move v11, v8

    .line 436
    :goto_114
    aput-object v10, v7, v11

    .line 437
    add-int/lit8 v8, v8, 0x1

    .line 407
    .end local v11    # "j":I
    .end local v12    # "skip":Z
    .end local v13    # "uri":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    :goto_118
    iget-object v10, v10, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_e1

    .line 439
    .end local v10    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_11b
    move v5, v8

    .line 442
    .end local v6    # "numBindings":I
    .local v5, "numBindings":I
    move v6, v5

    .end local v8    # "i":I
    .local v6, "i":I
    :goto_11d
    add-int/lit8 v6, v6, -0x1

    const-string v8, "xmlns"

    const-string v10, "xmlns:"

    const/16 v11, 0x20

    if-ltz v6, :cond_16f

    .line 444
    aget-object v12, v7, v6

    .line 445
    .local v12, "ns":Lgnu/xml/NamespaceBinding;
    iget-object v13, v12, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 446
    .local v13, "prefix":Ljava/lang/String;
    iget-object v14, v12, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    .line 447
    .local v14, "uri":Ljava/lang/String;
    iget-object v15, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    invoke-virtual {v15, v13}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_136

    .line 449
    goto :goto_11d

    .line 450
    :cond_136
    if-nez v14, :cond_13f

    if-eqz v13, :cond_13f

    iget-boolean v15, v0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    if-nez v15, :cond_13f

    .line 451
    goto :goto_11d

    .line 452
    :cond_13f
    iget-object v15, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v15, v11}, Lgnu/text/PrettyWriter;->write(I)V

    .line 453
    if-nez v13, :cond_14c

    .line 454
    iget-object v10, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v10, v8}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_156

    .line 457
    :cond_14c
    iget-object v8, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v8, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 458
    iget-object v8, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v8, v13}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 460
    :goto_156
    iget-object v8, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v10, "=\""

    invoke-virtual {v8, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 461
    iput-boolean v4, v0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 462
    if-eqz v14, :cond_164

    .line 463
    invoke-virtual {v0, v14}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 464
    :cond_164
    const/4 v8, 0x0

    iput-boolean v8, v0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    .line 465
    iget-object v8, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Lgnu/text/PrettyWriter;->write(I)V

    .line 466
    .end local v12    # "ns":Lgnu/xml/NamespaceBinding;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "uri":Ljava/lang/String;
    goto :goto_11d

    .line 467
    :cond_16f
    iget-boolean v12, v0, Lgnu/xml/XMLPrinter;->undeclareNamespaces:Z

    if-eqz v12, :cond_1a4

    .line 472
    iget-object v12, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 473
    .restart local v12    # "ns":Lgnu/xml/NamespaceBinding;
    :goto_175
    if-eq v12, v3, :cond_1a4

    .line 475
    iget-object v13, v12, Lgnu/xml/NamespaceBinding;->prefix:Ljava/lang/String;

    .line 476
    .restart local v13    # "prefix":Ljava/lang/String;
    iget-object v14, v12, Lgnu/xml/NamespaceBinding;->uri:Ljava/lang/String;

    if-eqz v14, :cond_1a1

    invoke-virtual {v2, v13}, Lgnu/xml/NamespaceBinding;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1a1

    .line 478
    iget-object v14, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v14, v11}, Lgnu/text/PrettyWriter;->write(I)V

    .line 479
    if-nez v13, :cond_190

    .line 480
    iget-object v14, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v14, v8}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_19a

    .line 483
    :cond_190
    iget-object v14, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v14, v10}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 484
    iget-object v14, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v14, v13}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 486
    :goto_19a
    iget-object v14, v0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v15, "=\"\""

    invoke-virtual {v14, v15}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 473
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_1a1
    iget-object v12, v12, Lgnu/xml/NamespaceBinding;->next:Lgnu/xml/NamespaceBinding;

    goto :goto_175

    .line 490
    .end local v12    # "ns":Lgnu/xml/NamespaceBinding;
    :cond_1a4
    iput-object v2, v0, Lgnu/xml/XMLPrinter;->namespaceBindings:Lgnu/xml/NamespaceBinding;

    .line 492
    .end local v3    # "join":Lgnu/xml/NamespaceBinding;
    .end local v5    # "numBindings":I
    .end local v6    # "i":I
    .end local v7    # "sortedBindings":[Lgnu/xml/NamespaceBinding;
    .end local v9    # "sortNamespaces":Z
    :cond_1a6
    iget v3, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    iget-object v5, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    array-length v6, v5

    if-lt v3, v6, :cond_1c4

    .line 494
    mul-int/lit8 v6, v3, 0x2

    new-array v6, v6, [Lgnu/xml/NamespaceBinding;

    .line 495
    .local v6, "nstmp":[Lgnu/xml/NamespaceBinding;
    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 496
    iput-object v6, v0, Lgnu/xml/XMLPrinter;->namespaceSaveStack:[Lgnu/xml/NamespaceBinding;

    .line 497
    iget v3, v0, Lgnu/xml/XMLPrinter;->elementNesting:I

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 498
    .local v5, "nmtmp":[Ljava/lang/Object;
    iget-object v8, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    invoke-static {v8, v7, v5, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    iput-object v5, v0, Lgnu/xml/XMLPrinter;->elementNameStack:[Ljava/lang/Object;

    .line 502
    .end local v5    # "nmtmp":[Ljava/lang/Object;
    .end local v6    # "nstmp":[Lgnu/xml/NamespaceBinding;
    :cond_1c4
    iput-boolean v4, v0, Lgnu/xml/XMLPrinter;->inStartTag:Z

    .line 504
    invoke-virtual/range {p0 .. p1}, Lgnu/xml/XMLPrinter;->getHtmlTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "typeName":Ljava/lang/String;
    const-string v4, "script"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1da

    const-string v4, "style"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1dd

    .line 506
    :cond_1da
    const/4 v4, 0x0

    iput-boolean v4, v0, Lgnu/xml/XMLPrinter;->escapeText:Z

    .line 507
    :cond_1dd
    return-void
.end method

.method protected startNumber()V
    .registers 1

    .line 254
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 255
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "v"    # I

    .line 169
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 170
    iget v0, p0, Lgnu/xml/XMLPrinter;->printIndent:I

    const/4 v1, 0x1

    if-ltz v0, :cond_22

    .line 172
    const/16 v0, 0xa

    const/16 v2, 0xd

    if-eq p1, v2, :cond_10

    if-ne p1, v0, :cond_22

    .line 174
    :cond_10
    if-ne p1, v0, :cond_16

    iget v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    if-eq v0, v2, :cond_1b

    .line 175
    :cond_16
    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->writeBreak(I)V

    .line 176
    :cond_1b
    iget v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v0, :cond_21

    .line 177
    iput v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 178
    :cond_21
    return-void

    .line 181
    :cond_22
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->escapeText:Z

    if-nez v0, :cond_2f

    .line 183
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 184
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto/16 :goto_e5

    .line 186
    :cond_2f
    iget v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v0, :cond_4c

    .line 188
    const/16 v2, 0x2d

    if-ne p1, v2, :cond_45

    .line 190
    if-ne v0, v1, :cond_3d

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->inComment:I

    goto :goto_47

    .line 193
    :cond_3d
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(I)V

    goto :goto_47

    .line 196
    :cond_45
    iput v1, p0, Lgnu/xml/XMLPrinter;->inComment:I

    .line 197
    :goto_47
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->write(I)V

    goto/16 :goto_e5

    .line 201
    :cond_4c
    const/16 v0, 0x3b

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 202
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_65

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->isHtml:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-nez v0, :cond_65

    .line 203
    :cond_5c
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 204
    :cond_65
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_72

    .line 205
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 206
    :cond_72
    const/16 v0, 0x26

    if-ne p1, v0, :cond_7e

    .line 207
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_e5

    .line 208
    :cond_7e
    const/16 v0, 0x22

    if-ne p1, v0, :cond_8e

    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v0, :cond_8e

    .line 209
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "&quot;"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    goto :goto_e5

    .line 210
    :cond_8e
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 212
    move v0, p1

    .line 213
    .local v0, "i":I
    const v1, 0xd800

    if-lt p1, v1, :cond_b7

    .line 215
    const v2, 0xdc00

    if-ge p1, v2, :cond_a3

    .line 217
    int-to-char v1, p1

    iput-char v1, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    .line 218
    return-void

    .line 220
    :cond_a3
    const v3, 0xe000

    if-ge p1, v3, :cond_b7

    .line 224
    iget-char v3, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    sub-int/2addr v3, v1

    mul-int/lit16 v3, v3, 0x400

    sub-int v1, v0, v2

    add-int/2addr v3, v1

    const/high16 v1, 0x10000

    add-int v0, v3, v1

    .line 226
    const/4 v1, 0x0

    iput-char v1, p0, Lgnu/xml/XMLPrinter;->savedHighSurrogate:C

    .line 229
    :cond_b7
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 230
    .end local v0    # "i":I
    goto :goto_e5

    .line 233
    :cond_de
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p1}, Lgnu/text/PrettyWriter;->write(I)V

    .line 234
    iput p1, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 237
    :goto_e5
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 775
    const/16 v0, 0x2d

    if-lez p3, :cond_57

    .line 777
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 778
    add-int v1, p2, p3

    .line 779
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 780
    .local v2, "count":I
    :goto_a
    if-ge p2, v1, :cond_4e

    .line 782
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "start":I
    .local v3, "start":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 783
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v4

    if-nez v4, :cond_3e

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v4, :cond_22

    if-eq p2, v0, :cond_3e

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    goto :goto_3e

    :cond_22
    const/16 v4, 0x3c

    if-eq p2, v4, :cond_3e

    const/16 v4, 0x3e

    if-eq p2, v4, :cond_3e

    const/16 v4, 0x26

    if-eq p2, v4, :cond_3e

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v4, :cond_3b

    const/16 v4, 0x22

    if-eq p2, v4, :cond_3e

    const/16 v4, 0x20

    if-ge p2, v4, :cond_3b

    goto :goto_3e

    .line 794
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 788
    :cond_3e
    :goto_3e
    if-lez v2, :cond_48

    .line 789
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, p1, v5, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 790
    :cond_48
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 791
    const/4 v2, 0x0

    .line 795
    .end local p2    # "c":C
    :goto_4c
    move p2, v3

    goto :goto_a

    .line 796
    .end local v3    # "start":I
    .local p2, "start":I
    :cond_4e
    if-lez v2, :cond_57

    .line 797
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v4, v1, v2

    invoke-virtual {v3, p1, v4, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;II)V

    .line 799
    .end local v1    # "limit":I
    .end local v2    # "count":I
    :cond_57
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 800
    return-void
.end method

.method public write([CII)V
    .registers 10
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 804
    const/16 v0, 0x2d

    if-lez p3, :cond_55

    .line 806
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 807
    add-int v1, p2, p3

    .line 808
    .local v1, "limit":I
    const/4 v2, 0x0

    .line 809
    .local v2, "count":I
    :goto_a
    if-ge p2, v1, :cond_4c

    .line 811
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "off":I
    .local v3, "off":I
    aget-char p2, p1, p2

    .line 812
    .local p2, "c":C
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->mustHexEscape(I)Z

    move-result v4

    if-nez v4, :cond_3c

    iget v4, p0, Lgnu/xml/XMLPrinter;->inComment:I

    if-lez v4, :cond_20

    if-eq p2, v0, :cond_3c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_39

    goto :goto_3c

    :cond_20
    const/16 v4, 0x3c

    if-eq p2, v4, :cond_3c

    const/16 v4, 0x3e

    if-eq p2, v4, :cond_3c

    const/16 v4, 0x26

    if-eq p2, v4, :cond_3c

    iget-boolean v4, p0, Lgnu/xml/XMLPrinter;->inAttribute:Z

    if-eqz v4, :cond_39

    const/16 v4, 0x22

    if-eq p2, v4, :cond_3c

    const/16 v4, 0x20

    if-ge p2, v4, :cond_39

    goto :goto_3c

    .line 823
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 817
    :cond_3c
    :goto_3c
    if-lez v2, :cond_46

    .line 818
    iget-object v4, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, p1, v5, v2}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 819
    :cond_46
    invoke-virtual {p0, p2}, Lgnu/xml/XMLPrinter;->write(I)V

    .line 820
    const/4 v2, 0x0

    .line 824
    .end local p2    # "c":C
    :goto_4a
    move p2, v3

    goto :goto_a

    .line 825
    .end local v3    # "off":I
    .local p2, "off":I
    :cond_4c
    if-lez v2, :cond_55

    .line 826
    iget-object v3, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v4, v1, v2

    invoke-virtual {v3, p1, v4, v2}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 828
    .end local v1    # "limit":I
    .end local v2    # "count":I
    :cond_55
    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 829
    return-void
.end method

.method public writeBaseUri(Ljava/lang/Object;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/Object;

    .line 838
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 2
    .param p1, "v"    # Z

    .line 247
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 248
    invoke-super {p0, p1}, Lgnu/mapping/OutPort;->print(Z)V

    .line 249
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 250
    return-void
.end method

.method public writeCDATA([CII)V
    .registers 9
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 876
    iget-boolean v0, p0, Lgnu/xml/XMLPrinter;->canonicalizeCDATA:Z

    if-eqz v0, :cond_8

    .line 878
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 879
    return-void

    .line 881
    :cond_8
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 882
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 883
    add-int v0, p2, p3

    .line 886
    .local v0, "limit":I
    move v1, p2

    .local v1, "i":I
    :goto_15
    add-int/lit8 v2, v0, -0x2

    const/16 v3, 0x3e

    if-ge v1, v2, :cond_44

    .line 888
    aget-char v2, p1, v1

    const/16 v4, 0x5d

    if-ne v2, v4, :cond_41

    add-int/lit8 v2, v1, 0x1

    aget-char v2, p1, v2

    if-ne v2, v4, :cond_41

    add-int/lit8 v2, v1, 0x2

    aget-char v2, p1, v2

    if-ne v2, v3, :cond_41

    .line 890
    if-le v1, p2, :cond_36

    .line 891
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    sub-int v3, v1, p2

    invoke-virtual {v2, p1, p2, v3}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 892
    :cond_36
    const-string v2, "]]]><![CDATA[]>"

    invoke-virtual {p0, v2}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    .line 893
    add-int/lit8 p2, v1, 0x3

    .line 894
    sub-int p3, v0, p2

    .line 895
    add-int/lit8 v1, v1, 0x2

    .line 886
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 898
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v1, p1, p2, p3}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 899
    iget-object v1, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 900
    iput v3, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 901
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .registers 2
    .param p1, "chars"    # Ljava/lang/String;

    .line 862
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 863
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->write(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->endComment()V

    .line 865
    return-void
.end method

.method public writeComment([CII)V
    .registers 4
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 869
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->beginComment()V

    .line 870
    invoke-virtual {p0, p1, p2, p3}, Lgnu/xml/XMLPrinter;->write([CII)V

    .line 871
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->endComment()V

    .line 872
    return-void
.end method

.method public writeDouble(D)V
    .registers 5
    .param p1, "d"    # D

    .line 630
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 631
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-static {p1, p2}, Lgnu/xml/XMLPrinter;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method public writeFloat(F)V
    .registers 4
    .param p1, "f"    # F

    .line 636
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 637
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-static {p1}, Lgnu/xml/XMLPrinter;->formatFloat(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 6
    .param p1, "v"    # Ljava/lang/Object;

    .line 723
    instance-of v0, p1, Lgnu/lists/SeqPosition;

    const/16 v1, 0x2d

    if-eqz v0, :cond_1e

    .line 725
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 726
    move-object v0, p1

    check-cast v0, Lgnu/lists/SeqPosition;

    .line 727
    .local v0, "pos":Lgnu/lists/SeqPosition;
    iget-object v2, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    iget v3, v0, Lgnu/lists/SeqPosition;->ipos:I

    invoke-virtual {v2, v3, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 728
    iget-object v2, v0, Lgnu/lists/SeqPosition;->sequence:Lgnu/lists/AbstractSequence;

    instance-of v2, v2, Lgnu/xml/NodeTree;

    if-eqz v2, :cond_1d

    .line 729
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 730
    :cond_1d
    return-void

    .line 732
    .end local v0    # "pos":Lgnu/lists/SeqPosition;
    :cond_1e
    instance-of v0, p1, Lgnu/lists/Consumable;

    if-eqz v0, :cond_2d

    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-nez v0, :cond_2d

    .line 734
    move-object v0, p1

    check-cast v0, Lgnu/lists/Consumable;

    invoke-interface {v0, p0}, Lgnu/lists/Consumable;->consume(Lgnu/lists/Consumer;)V

    .line 735
    return-void

    .line 737
    :cond_2d
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-eqz v0, :cond_3f

    .line 739
    move-object v0, p1

    check-cast v0, Lgnu/expr/Keyword;

    invoke-virtual {v0}, Lgnu/expr/Keyword;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->startAttribute(Ljava/lang/Object;)V

    .line 740
    const/4 v0, -0x6

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 741
    return-void

    .line 743
    :cond_3f
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 744
    instance-of v0, p1, Lgnu/lists/UnescapedData;

    if-eqz v0, :cond_5a

    .line 746
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/text/PrettyWriter;->clearWordEnd()V

    .line 747
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    move-object v2, p1

    check-cast v2, Lgnu/lists/UnescapedData;

    invoke-virtual {v2}, Lgnu/lists/UnescapedData;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 748
    iput v1, p0, Lgnu/xml/XMLPrinter;->prev:I

    goto :goto_79

    .line 750
    :cond_5a
    instance-of v0, p1, Lgnu/text/Char;

    if-eqz v0, :cond_69

    .line 751
    move-object v0, p1

    check-cast v0, Lgnu/text/Char;

    invoke-virtual {v0}, Lgnu/text/Char;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lgnu/text/Char;->print(ILgnu/lists/Consumer;)V

    goto :goto_79

    .line 754
    :cond_69
    invoke-direct {p0}, Lgnu/xml/XMLPrinter;->startWord()V

    .line 755
    const/16 v0, 0x20

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 756
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/Object;)V

    .line 757
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->writeWordEnd()V

    .line 758
    const/4 v0, -0x2

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 760
    :goto_79
    return-void
.end method

.method public writePosition(Lgnu/lists/AbstractSequence;I)V
    .registers 3
    .param p1, "seq"    # Lgnu/lists/AbstractSequence;
    .param p2, "ipos"    # I

    .line 833
    invoke-virtual {p1, p2, p0}, Lgnu/lists/AbstractSequence;->consumeNext(ILgnu/lists/Consumer;)Z

    .line 834
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;[CII)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "content"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 906
    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/xml/XMLPrinter;->needXMLdecl:Z

    .line 908
    :cond_b
    invoke-virtual {p0}, Lgnu/xml/XMLPrinter;->closeTag()V

    .line 909
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "<?"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0, p1}, Lgnu/xml/XMLPrinter;->print(Ljava/lang/String;)V

    .line 911
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lgnu/xml/XMLPrinter;->print(C)V

    .line 912
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0, p2, p3, p4}, Lgnu/text/PrettyWriter;->write([CII)V

    .line 913
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 914
    const/4 v0, -0x7

    iput v0, p0, Lgnu/xml/XMLPrinter;->prev:I

    .line 915
    return-void
.end method

.method protected writeQName(Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/Object;

    .line 331
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_29

    .line 333
    move-object v0, p1

    check-cast v0, Lgnu/mapping/Symbol;

    .line 334
    .local v0, "sname":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "prefix":Ljava/lang/String;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 337
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v2, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(I)V

    .line 340
    :cond_1f
    iget-object v2, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 341
    .end local v0    # "sname":Lgnu/mapping/Symbol;
    .end local v1    # "prefix":Ljava/lang/String;
    goto :goto_36

    .line 343
    :cond_29
    iget-object v0, p0, Lgnu/xml/XMLPrinter;->bout:Lgnu/text/PrettyWriter;

    if-nez p1, :cond_30

    const-string v1, "{null name}"

    goto :goto_33

    :cond_30
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    :goto_33
    invoke-virtual {v0, v1}, Lgnu/text/PrettyWriter;->write(Ljava/lang/String;)V

    .line 344
    :goto_36
    return-void
.end method

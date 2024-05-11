.class public Lgnu/kawa/xslt/XSLT;
.super Lgnu/xquery/lang/XQuery;
.source "XSLT.java"


# static fields
.field public static instance:Lgnu/kawa/xslt/XSLT;

.field public static nullMode:Lgnu/mapping/Symbol;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 71
    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {v0, v1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lgnu/xquery/lang/XQuery;-><init>()V

    .line 27
    sput-object p0, Lgnu/kawa/xslt/XSLT;->instance:Lgnu/kawa/xslt/XSLT;

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Lgnu/expr/ModuleBody;->setMainPrintValues(Z)V

    .line 29
    return-void
.end method

.method public static applyTemplates(Ljava/lang/String;Lgnu/mapping/Symbol;)V
    .registers 7
    .param p0, "select"    # Ljava/lang/String;
    .param p1, "mode"    # Lgnu/mapping/Symbol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 184
    if-nez p1, :cond_4

    .line 185
    sget-object p1, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    .line 186
    :cond_4
    invoke-static {p1}, Lgnu/kawa/xslt/TemplateTable;->getTemplateTable(Lgnu/mapping/Symbol;)Lgnu/kawa/xslt/TemplateTable;

    move-result-object v0

    .line 187
    .local v0, "table":Lgnu/kawa/xslt/TemplateTable;
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v1

    .line 188
    .local v1, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/kawa/xml/Focus;->getCurrent()Lgnu/kawa/xml/Focus;

    move-result-object v2

    .line 189
    .local v2, "pos":Lgnu/kawa/xml/Focus;
    iget-object v3, v2, Lgnu/kawa/xml/Focus;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v3, Lgnu/lists/TreeList;

    .line 190
    .local v3, "doc":Lgnu/lists/TreeList;
    iget v4, v2, Lgnu/kawa/xml/Focus;->ipos:I

    invoke-virtual {v3, v4}, Lgnu/lists/TreeList;->firstChildPos(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lgnu/kawa/xml/Focus;->push(Lgnu/lists/AbstractSequence;I)V

    .line 191
    invoke-static {v3, v2, v1}, Lgnu/kawa/xslt/XSLT;->process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V

    .line 192
    invoke-virtual {v2}, Lgnu/kawa/xml/Focus;->pop()V

    .line 193
    return-void
.end method

.method public static defineApplyTemplate(Ljava/lang/String;DLgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .registers 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "priority"    # D
    .param p3, "mode"    # Lgnu/mapping/Symbol;
    .param p4, "template"    # Lgnu/mapping/Procedure;

    .line 78
    if-nez p3, :cond_4

    .line 79
    sget-object p3, Lgnu/kawa/xslt/XSLT;->nullMode:Lgnu/mapping/Symbol;

    .line 80
    :cond_4
    invoke-static {p3}, Lgnu/kawa/xslt/TemplateTable;->getTemplateTable(Lgnu/mapping/Symbol;)Lgnu/kawa/xslt/TemplateTable;

    move-result-object v0

    .line 81
    .local v0, "table":Lgnu/kawa/xslt/TemplateTable;
    invoke-virtual {v0, p0, p1, p2, p4}, Lgnu/kawa/xslt/TemplateTable;->enter(Ljava/lang/String;DLgnu/mapping/Procedure;)V

    .line 82
    return-void
.end method

.method public static defineCallTemplate(Lgnu/mapping/Symbol;DLgnu/mapping/Procedure;)V
    .registers 4
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "priority"    # D
    .param p3, "template"    # Lgnu/mapping/Procedure;

    .line 69
    return-void
.end method

.method public static defineTemplate(Lgnu/mapping/Symbol;Ljava/lang/String;DLgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V
    .registers 6
    .param p0, "name"    # Lgnu/mapping/Symbol;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "priority"    # D
    .param p4, "mode"    # Lgnu/mapping/Symbol;
    .param p5, "template"    # Lgnu/mapping/Procedure;

    .line 88
    if-eqz p0, :cond_5

    .line 89
    invoke-static {p0, p2, p3, p5}, Lgnu/kawa/xslt/XSLT;->defineCallTemplate(Lgnu/mapping/Symbol;DLgnu/mapping/Procedure;)V

    .line 90
    :cond_5
    if-eqz p1, :cond_a

    .line 91
    invoke-static {p1, p2, p3, p4, p5}, Lgnu/kawa/xslt/XSLT;->defineApplyTemplate(Ljava/lang/String;DLgnu/mapping/Symbol;Lgnu/mapping/Procedure;)V

    .line 92
    :cond_a
    return-void
.end method

.method public static getXsltInstance()Lgnu/kawa/xslt/XSLT;
    .registers 1

    .line 33
    sget-object v0, Lgnu/kawa/xslt/XSLT;->instance:Lgnu/kawa/xslt/XSLT;

    if-nez v0, :cond_9

    .line 34
    new-instance v0, Lgnu/kawa/xslt/XSLT;

    invoke-direct {v0}, Lgnu/kawa/xslt/XSLT;-><init>()V

    .line 35
    :cond_9
    sget-object v0, Lgnu/kawa/xslt/XSLT;->instance:Lgnu/kawa/xslt/XSLT;

    return-object v0
.end method

.method public static process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 97
    iget-object v0, p2, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 100
    :goto_2
    iget v1, p1, Lgnu/kawa/xml/Focus;->ipos:I

    .line 101
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->getNextKind(I)I

    move-result v2

    .line 105
    packed-switch v2, :pswitch_data_9a

    .line 159
    :pswitch_b
    return-void

    .line 154
    :pswitch_c
    ushr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    .line 155
    goto/16 :goto_95

    .line 134
    :pswitch_16
    invoke-virtual {p1}, Lgnu/kawa/xml/Focus;->getNextTypeObject()Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lgnu/kawa/xml/Focus;->getNextTypeName()Ljava/lang/String;

    move-result-object v2

    .line 136
    sget-object v3, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lgnu/kawa/xslt/TemplateTable;->find(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_80

    .line 139
    invoke-virtual {v2, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 140
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->runUntilDone()V

    .line 141
    goto :goto_95

    .line 108
    :pswitch_3f
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->firstChildPos(I)I

    move-result v1

    .line 109
    goto :goto_95

    .line 111
    :pswitch_44
    invoke-virtual {p1}, Lgnu/kawa/xml/Focus;->getNextTypeObject()Ljava/lang/Object;

    move-result-object v2

    .line 112
    invoke-virtual {p1}, Lgnu/kawa/xml/Focus;->getNextTypeName()Ljava/lang/String;

    move-result-object v3

    .line 113
    sget-object v4, Lgnu/kawa/xslt/TemplateTable;->nullModeTable:Lgnu/kawa/xslt/TemplateTable;

    invoke-virtual {v4, v3}, Lgnu/kawa/xslt/TemplateTable;->find(Ljava/lang/String;)Lgnu/mapping/Procedure;

    move-result-object v3

    .line 114
    if-eqz v3, :cond_5b

    .line 116
    invoke-virtual {v3, p2}, Lgnu/mapping/Procedure;->check0(Lgnu/mapping/CallContext;)V

    .line 117
    invoke-virtual {p2}, Lgnu/mapping/CallContext;->runUntilDone()V

    goto :goto_74

    .line 121
    :cond_5b
    invoke-interface {v0, v2}, Lgnu/lists/Consumer;->startElement(Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->firstAttributePos(I)I

    move-result v2

    .line 123
    if-nez v2, :cond_68

    .line 124
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->firstChildPos(I)I

    move-result v2

    .line 125
    :cond_68
    invoke-virtual {p1, p0, v2}, Lgnu/kawa/xml/Focus;->push(Lgnu/lists/AbstractSequence;I)V

    .line 126
    invoke-static {p0, p1, p2}, Lgnu/kawa/xslt/XSLT;->process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V

    .line 127
    invoke-virtual {p1}, Lgnu/kawa/xml/Focus;->pop()V

    .line 128
    invoke-interface {v0}, Lgnu/lists/Consumer;->endElement()V

    .line 130
    :goto_74
    ushr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    .line 131
    invoke-virtual {p1}, Lgnu/kawa/xml/Focus;->gotoNext()Z

    .line 132
    goto :goto_95

    .line 145
    :cond_80
    :pswitch_80
    ushr-int/lit8 v1, v1, 0x1

    .line 146
    const v2, 0x7fffffff

    invoke-virtual {p0, v1, v2}, Lgnu/lists/TreeList;->nextNodeIndex(II)I

    move-result v2

    .line 147
    if-ne v1, v2, :cond_8f

    .line 148
    invoke-virtual {p0, v1}, Lgnu/lists/TreeList;->nextDataIndex(I)I

    move-result v2

    .line 149
    :cond_8f
    invoke-virtual {p0, v1, v2, v0}, Lgnu/lists/TreeList;->consumeIRange(IILgnu/lists/Consumer;)I

    .line 150
    shl-int/lit8 v1, v2, 0x1

    .line 151
    nop

    .line 161
    :goto_95
    iput v1, p1, Lgnu/kawa/xml/Focus;->ipos:I

    .line 162
    goto/16 :goto_2

    nop

    :pswitch_data_9a
    .packed-switch 0x1d
        :pswitch_80
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_44
        :pswitch_3f
        :pswitch_16
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public static registerEnvironment()V
    .registers 1

    .line 62
    new-instance v0, Lgnu/kawa/xslt/XSLT;

    invoke-direct {v0}, Lgnu/kawa/xslt/XSLT;-><init>()V

    invoke-static {v0}, Lgnu/expr/Language;->setDefaults(Lgnu/expr/Language;)V

    .line 63
    return-void
.end method

.method public static runStylesheet()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 168
    invoke-static {}, Lgnu/mapping/CallContext;->getInstance()Lgnu/mapping/CallContext;

    move-result-object v0

    .line 169
    .local v0, "ctx":Lgnu/mapping/CallContext;
    invoke-static {}, Lgnu/expr/ApplicationMainSupport;->processSetProperties()V

    .line 170
    sget-object v1, Lgnu/expr/ApplicationMainSupport;->commandLineArgArray:[Ljava/lang/String;

    .line 171
    .local v1, "args":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v1

    if-ge v2, v3, :cond_28

    .line 173
    aget-object v3, v1, v2

    .line 174
    .local v3, "arg":Ljava/lang/String;
    invoke-static {v3}, Lgnu/kawa/xml/Document;->parse(Ljava/lang/Object;)Lgnu/kawa/xml/KDocument;

    move-result-object v4

    .line 175
    .local v4, "doc":Lgnu/kawa/xml/KDocument;
    invoke-static {}, Lgnu/kawa/xml/Focus;->getCurrent()Lgnu/kawa/xml/Focus;

    move-result-object v5

    .line 176
    .local v5, "pos":Lgnu/kawa/xml/Focus;
    iget-object v6, v4, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    iget v7, v4, Lgnu/kawa/xml/KDocument;->ipos:I

    invoke-virtual {v5, v6, v7}, Lgnu/kawa/xml/Focus;->push(Lgnu/lists/AbstractSequence;I)V

    .line 177
    iget-object v6, v4, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v6, Lgnu/lists/TreeList;

    invoke-static {v6, v5, v0}, Lgnu/kawa/xslt/XSLT;->process(Lgnu/lists/TreeList;Lgnu/kawa/xml/Focus;Lgnu/mapping/CallContext;)V

    .line 171
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "doc":Lgnu/kawa/xml/KDocument;
    .end local v5    # "pos":Lgnu/kawa/xml/Focus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 179
    .end local v2    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method public getLexer(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;)Lgnu/text/Lexer;
    .registers 4
    .param p1, "inp"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;

    .line 40
    new-instance v0, Lgnu/kawa/xslt/XslTranslator;

    invoke-direct {v0, p1, p2, p0}, Lgnu/kawa/xslt/XslTranslator;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/kawa/xslt/XSLT;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 22
    const-string v0, "XSLT"

    return-object v0
.end method

.method public parse(Lgnu/expr/Compilation;I)Z
    .registers 6
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .param p2, "options"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x2

    sput v0, Lgnu/expr/Compilation;->defaultCallConvention:I

    .line 47
    iget-object v0, p1, Lgnu/expr/Compilation;->lexer:Lgnu/text/Lexer;

    check-cast v0, Lgnu/kawa/xslt/XslTranslator;

    invoke-virtual {v0, p1}, Lgnu/kawa/xslt/XslTranslator;->parse(Lgnu/expr/Compilation;)V

    .line 48
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->setState(I)V

    .line 50
    new-instance v0, Lgnu/xquery/lang/XQParser;

    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    .line 51
    .local v0, "xqparser":Lgnu/xquery/lang/XQParser;
    new-instance v1, Lgnu/xquery/lang/XQResolveNames;

    invoke-direct {v1, p1}, Lgnu/xquery/lang/XQResolveNames;-><init>(Lgnu/expr/Compilation;)V

    .line 52
    .local v1, "resolver":Lgnu/xquery/lang/XQResolveNames;
    iget-object v2, v0, Lgnu/xquery/lang/XQParser;->functionNamespacePath:[Lgnu/mapping/Namespace;

    iput-object v2, v1, Lgnu/xquery/lang/XQResolveNames;->functionNamespacePath:[Lgnu/mapping/Namespace;

    .line 53
    iput-object v0, v1, Lgnu/xquery/lang/XQResolveNames;->parser:Lgnu/xquery/lang/XQParser;

    .line 54
    iget-object v2, p1, Lgnu/expr/Compilation;->mainLambda:Lgnu/expr/ModuleExp;

    invoke-virtual {v1, v2}, Lgnu/xquery/lang/XQResolveNames;->resolveModule(Lgnu/expr/ModuleExp;)V

    .line 56
    const/4 v2, 0x1

    return v2
.end method

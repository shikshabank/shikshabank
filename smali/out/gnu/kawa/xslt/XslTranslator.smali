.class public Lgnu/kawa/xslt/XslTranslator;
.super Lgnu/text/Lexer;
.source "XslTranslator.java"

# interfaces
.implements Lgnu/lists/Consumer;


# static fields
.field static final XSL_TRANSFORM_URI:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"

.field static final applyTemplatesMethod:Lgnu/bytecode/Method;

.field static final applyTemplatesProc:Lgnu/expr/PrimProcedure;

.field static final defineTemplateMethod:Lgnu/bytecode/Method;

.field static final defineTemplateProc:Lgnu/expr/PrimProcedure;

.field static final runStylesheetMethod:Lgnu/bytecode/Method;

.field static final runStylesheetProc:Lgnu/expr/PrimProcedure;

.field static final typeTemplateTable:Lgnu/bytecode/ClassType;

.field static final typeXSLT:Lgnu/bytecode/ClassType;


# instance fields
.field attributeType:Ljava/lang/Object;

.field attributeValue:Ljava/lang/StringBuffer;

.field comp:Lgnu/expr/Compilation;

.field consumerDecl:Lgnu/expr/Declaration;

.field in:Lgnu/mapping/InPort;

.field inAttribute:Z

.field inTemplate:Z

.field interpreter:Lgnu/kawa/xslt/XSLT;

.field mexp:Lgnu/expr/ModuleExp;

.field nesting:Ljava/lang/StringBuffer;

.field preserveSpace:Z

.field templateLambda:Lgnu/expr/LambdaExp;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 519
    const-string v0, "gnu.kawa.xslt.XSLT"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->typeXSLT:Lgnu/bytecode/ClassType;

    .line 521
    const-string v1, "gnu.kawa.xslt.TemplateTable"

    invoke-static {v1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->typeTemplateTable:Lgnu/bytecode/ClassType;

    .line 523
    const-string v1, "defineTemplate"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->defineTemplateMethod:Lgnu/bytecode/Method;

    .line 525
    const-string v2, "runStylesheet"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    sput-object v2, Lgnu/kawa/xslt/XslTranslator;->runStylesheetMethod:Lgnu/bytecode/Method;

    .line 527
    new-instance v3, Lgnu/expr/PrimProcedure;

    invoke-direct {v3, v1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v3, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    .line 529
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v2}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    .line 531
    const-string v1, "applyTemplates"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesMethod:Lgnu/bytecode/Method;

    .line 533
    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, v0}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    sput-object v1, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    return-void
.end method

.method constructor <init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/kawa/xslt/XSLT;)V
    .registers 6
    .param p1, "inp"    # Lgnu/mapping/InPort;
    .param p2, "messages"    # Lgnu/text/SourceMessages;
    .param p3, "interpreter"    # Lgnu/kawa/xslt/XSLT;

    .line 45
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    .line 32
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    .line 46
    iput-object p3, p0, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    .line 47
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    .line 48
    return-void
.end method

.method public static isXslTag(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "type"    # Ljava/lang/Object;

    .line 122
    instance-of v0, p0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_b

    .line 123
    move-object v0, p0

    check-cast v0, Lgnu/expr/QuoteExp;

    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 124
    :cond_b
    instance-of v0, p0, Lgnu/mapping/Symbol;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 125
    return-object v1

    .line 126
    :cond_11
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    .line 127
    .local v0, "qname":Lgnu/mapping/Symbol;
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    if-eq v2, v3, :cond_1d

    .line 128
    return-object v1

    .line 129
    :cond_1d
    invoke-virtual {v0}, Lgnu/mapping/Symbol;->getLocalName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public append(C)Lgnu/lists/Consumer;
    .registers 3
    .param p1, "v"    # C

    .line 342
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 343
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 345
    :cond_a
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 346
    :goto_11
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;
    .registers 3
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 351
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 352
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 354
    :cond_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 355
    :goto_11
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;
    .registers 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 360
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(C)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5
    .param p1, "x0"    # Ljava/lang/CharSequence;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/xslt/XslTranslator;->append(Ljava/lang/CharSequence;II)Lgnu/lists/Consumer;

    move-result-object v0

    return-object v0
.end method

.method append(Lgnu/expr/Expression;)V
    .registers 2
    .param p1, "expr"    # Lgnu/expr/Expression;

    .line 135
    return-void
.end method

.method public endAttribute()V
    .registers 6

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [Lgnu/expr/Expression;

    .line 176
    .local v0, "args":[Lgnu/expr/Expression;
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    invoke-direct {v1, v2}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 177
    new-instance v1, Lgnu/expr/QuoteExp;

    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 178
    new-instance v1, Lgnu/expr/ApplyExp;

    sget-object v4, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    invoke-direct {v1, v4, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 179
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 180
    iput-boolean v2, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    .line 181
    return-void
.end method

.method public endDocument()V
    .registers 1

    .line 436
    return-void
.end method

.method public endElement()V
    .registers 16

    .line 185
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 186
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 187
    .local v0, "nlen":I
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    .line 188
    .local v2, "start":I
    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 189
    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v3, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgnu/expr/Expression;

    .line 190
    .local v3, "startTag":Lgnu/expr/Expression;
    invoke-static {v3}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "xslTag":Ljava/lang/String;
    const-string v5, "select"

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, "value-of"

    if-ne v4, v8, :cond_52

    .line 193
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v7, v5, v8}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "select":Ljava/lang/String;
    if-eqz v5, :cond_50

    .line 196
    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v7

    .line 197
    .local v7, "exp":Lgnu/expr/Expression;
    new-instance v8, Lgnu/expr/ApplyExp;

    sget-object v9, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    new-array v1, v1, [Lgnu/expr/Expression;

    aput-object v7, v1, v6

    invoke-direct {v8, v9, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    move-object v1, v8

    .line 198
    .end local v7    # "exp":Lgnu/expr/Expression;
    .local v1, "exp":Lgnu/expr/Expression;
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 199
    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 200
    return-void

    .line 202
    .end local v1    # "exp":Lgnu/expr/Expression;
    .end local v5    # "select":Ljava/lang/String;
    :cond_50
    goto/16 :goto_1e6

    .line 203
    :cond_52
    const-string v8, "copy-of"

    if-ne v4, v8, :cond_6f

    .line 205
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v7, v5, v1}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "select":Ljava/lang/String;
    if-eqz v1, :cond_6d

    .line 208
    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 209
    .local v5, "exp":Lgnu/expr/Expression;
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 211
    return-void

    .line 213
    .end local v1    # "select":Ljava/lang/String;
    .end local v5    # "exp":Lgnu/expr/Expression;
    :cond_6d
    goto/16 :goto_1e6

    .line 214
    :cond_6f
    const/4 v8, 0x2

    const-string v9, "mode"

    const-string v10, "apply-templates"

    if-ne v4, v10, :cond_aa

    .line 216
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v7, v5, v10}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "select":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v7, v9, v10}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "mode":Ljava/lang/String;
    new-array v8, v8, [Lgnu/expr/Expression;

    new-instance v9, Lgnu/expr/QuoteExp;

    invoke-direct {v9, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v6

    invoke-virtual {p0, v7}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v8, v1

    move-object v1, v8

    .line 220
    .local v1, "args":[Lgnu/expr/Expression;
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 221
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v8, Lgnu/expr/QuoteExp;

    sget-object v9, Lgnu/kawa/xslt/XslTranslator;->applyTemplatesProc:Lgnu/expr/PrimProcedure;

    invoke-direct {v8, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v6, v8, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v6}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 222
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v5    # "select":Ljava/lang/String;
    .end local v7    # "mode":Ljava/lang/String;
    goto/16 :goto_1e6

    .line 223
    :cond_aa
    const-string v5, "if"

    if-ne v4, v5, :cond_d7

    .line 225
    add-int/lit8 v1, v2, 0x1

    const-string v5, "test"

    invoke-virtual {p0, v7, v5, v1}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "select":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    .line 227
    .local v5, "test":Lgnu/expr/Expression;
    invoke-static {v5}, Lgnu/xquery/lang/XQParser;->booleanValue(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v5

    .line 228
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v6

    .line 229
    .local v6, "clause":Lgnu/expr/Expression;
    iget-object v7, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v7, v7, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 230
    new-instance v7, Lgnu/expr/IfExp;

    sget-object v8, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    invoke-direct {v7, v5, v6, v8}, Lgnu/expr/IfExp;-><init>(Lgnu/expr/Expression;Lgnu/expr/Expression;Lgnu/expr/Expression;)V

    invoke-virtual {p0, v7}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 231
    .end local v1    # "select":Ljava/lang/String;
    .end local v5    # "test":Lgnu/expr/Expression;
    .end local v6    # "clause":Lgnu/expr/Expression;
    goto/16 :goto_1e6

    .line 232
    :cond_d7
    const-string v5, "stylesheet"

    if-eq v4, v5, :cond_1bf

    const-string v5, "transform"

    if-ne v4, v5, :cond_e1

    goto/16 :goto_1bf

    .line 241
    :cond_e1
    const-string v5, "template"

    if-ne v4, v5, :cond_151

    .line 243
    add-int/lit8 v5, v2, 0x1

    const-string v10, "match"

    invoke-virtual {p0, v7, v10, v5}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "match":Ljava/lang/String;
    add-int/lit8 v10, v2, 0x1

    const-string v11, "name"

    invoke-virtual {p0, v7, v11, v10}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, "name":Ljava/lang/String;
    add-int/lit8 v11, v2, 0x1

    const-string v12, "priority"

    invoke-virtual {p0, v7, v12, v11}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 246
    .local v11, "priority":Ljava/lang/String;
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v7, v9, v12}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 247
    .restart local v7    # "mode":Ljava/lang/String;
    iget-object v9, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {p0, v12}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v12

    iput-object v12, v9, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    .line 248
    iget-object v9, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v9, v9, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 249
    const/4 v9, 0x5

    new-array v9, v9, [Lgnu/expr/Expression;

    .line 250
    .local v9, "args":[Lgnu/expr/Expression;
    const-wide/16 v12, 0x0

    .line 251
    .local v12, "prio":D
    invoke-virtual {p0, v10}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v14

    aput-object v14, v9, v6

    .line 252
    new-instance v6, Lgnu/expr/QuoteExp;

    invoke-direct {v6, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v6, v9, v1

    .line 253
    new-instance v1, Lgnu/expr/QuoteExp;

    invoke-static {v12, v13}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v6

    invoke-direct {v1, v6}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    aput-object v1, v9, v8

    .line 254
    const/4 v1, 0x3

    invoke-virtual {p0, v7}, Lgnu/kawa/xslt/XslTranslator;->resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    aput-object v6, v9, v1

    .line 255
    const/4 v1, 0x4

    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    aput-object v6, v9, v1

    .line 256
    new-instance v1, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/QuoteExp;

    sget-object v8, Lgnu/kawa/xslt/XslTranslator;->defineTemplateProc:Lgnu/expr/PrimProcedure;

    invoke-direct {v6, v8}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v6, v9}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    .line 258
    .end local v5    # "match":Ljava/lang/String;
    .end local v7    # "mode":Ljava/lang/String;
    .end local v9    # "args":[Lgnu/expr/Expression;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "priority":Ljava/lang/String;
    .end local v12    # "prio":D
    goto/16 :goto_1e6

    .line 259
    :cond_151
    const-string v5, "text"

    if-ne v4, v5, :cond_18b

    .line 261
    iput-boolean v6, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    .line 262
    iget-object v5, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    new-array v1, v5, [Lgnu/expr/Expression;

    .line 263
    .local v1, "args":[Lgnu/expr/Expression;
    array-length v5, v1

    .local v5, "i":I
    :goto_164
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_175

    .line 264
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    aput-object v6, v1, v5

    goto :goto_164

    .line 265
    .end local v5    # "i":I
    :cond_175
    iget-object v5, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v5, v5, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 266
    new-instance v5, Lgnu/expr/ApplyExp;

    sget-object v6, Lgnu/xquery/lang/XQParser;->makeText:Lgnu/expr/Expression;

    invoke-direct {v5, v6, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 267
    .local v5, "exp":Lgnu/expr/Expression;
    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 268
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    iput-object v5, v6, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 269
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v5    # "exp":Lgnu/expr/Expression;
    goto :goto_1e6

    .line 272
    :cond_18b
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Lgnu/expr/Expression;

    .line 273
    .restart local v1    # "args":[Lgnu/expr/Expression;
    array-length v5, v1

    .local v5, "i":I
    :goto_197
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_1a8

    .line 274
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v6, v6, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgnu/expr/Expression;

    aput-object v6, v1, v5

    goto :goto_197

    .line 275
    .end local v5    # "i":I
    :cond_1a8
    new-instance v5, Lgnu/kawa/xml/MakeElement;

    invoke-direct {v5}, Lgnu/kawa/xml/MakeElement;-><init>()V

    .line 277
    .local v5, "mkElement":Lgnu/kawa/xml/MakeElement;
    new-instance v6, Lgnu/expr/ApplyExp;

    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-direct {v7, v5}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-direct {v6, v7, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 278
    .local v6, "exp":Lgnu/expr/Expression;
    invoke-virtual {p0, v6}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 279
    iget-object v7, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    iput-object v6, v7, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    goto :goto_1e6

    .line 234
    .end local v1    # "args":[Lgnu/expr/Expression;
    .end local v5    # "mkElement":Lgnu/kawa/xml/MakeElement;
    .end local v6    # "exp":Lgnu/expr/Expression;
    :cond_1bf
    :goto_1bf
    add-int/lit8 v1, v2, 0x1

    const-string v5, "version"

    invoke-virtual {p0, v7, v5, v1}, Lgnu/kawa/xslt/XslTranslator;->popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "version":Ljava/lang/String;
    new-instance v5, Lgnu/expr/ApplyExp;

    new-instance v6, Lgnu/expr/QuoteExp;

    sget-object v7, Lgnu/kawa/xslt/XslTranslator;->runStylesheetProc:Lgnu/expr/PrimProcedure;

    invoke-direct {v6, v7}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sget-object v7, Lgnu/expr/Expression;->noExpressions:[Lgnu/expr/Expression;

    invoke-direct {v5, v6, v7}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 237
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->popTemplateBody(I)Lgnu/expr/Expression;

    move-result-object v5

    .line 238
    .local v5, "body":Lgnu/expr/Expression;
    invoke-virtual {p0, v5}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 239
    iget-object v6, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    iput-object v5, v6, Lgnu/expr/ModuleExp;->body:Lgnu/expr/Expression;

    .line 240
    .end local v1    # "version":Ljava/lang/String;
    .end local v5    # "body":Lgnu/expr/Expression;
    nop

    .line 281
    :goto_1e6
    return-void
.end method

.method public error(CLjava/lang/String;)V
    .registers 4
    .param p1, "kind"    # C
    .param p2, "message"    # Ljava/lang/String;

    .line 486
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    .line 487
    return-void
.end method

.method public getExpression()Lgnu/expr/Expression;
    .registers 2

    .line 481
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/expr/Expression;

    return-object v0
.end method

.method public ignoring()Z
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method maybeSkipWhitespace()V
    .registers 8

    .line 55
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    if-eqz v0, :cond_5

    .line 56
    return-void

    .line 57
    :cond_5
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 58
    .local v0, "size":I
    :goto_d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_4e

    .line 60
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/expr/Expression;

    .line 61
    .local v1, "expr":Ljava/lang/Object;
    instance-of v2, v1, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_4e

    .line 63
    move-object v2, v1

    check-cast v2, Lgnu/expr/QuoteExp;

    invoke-virtual {v2}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 64
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2b

    const-string v3, ""

    goto :goto_2f

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "str":Ljava/lang/String;
    :goto_2f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "j":I
    :goto_33
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_4d

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 68
    .local v5, "ch":C
    const/16 v6, 0x20

    if-eq v5, v6, :cond_4c

    const/16 v6, 0x9

    if-eq v5, v6, :cond_4c

    const/16 v6, 0xd

    if-eq v5, v6, :cond_4c

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4c

    .line 69
    return-void

    .line 70
    .end local v5    # "ch":C
    :cond_4c
    goto :goto_33

    .line 74
    .end local v1    # "expr":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_4d
    goto :goto_d

    .line 75
    :cond_4e
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Stack;->setSize(I)V

    .line 76
    return-void
.end method

.method public parse(Lgnu/expr/Compilation;)V
    .registers 5
    .param p1, "comp"    # Lgnu/expr/Compilation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    .line 509
    iget-object v0, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    if-nez v0, :cond_d

    .line 510
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    .line 511
    :cond_d
    invoke-virtual {p1, p0}, Lgnu/expr/Compilation;->pushNewModule(Lgnu/text/Lexer;)Lgnu/expr/ModuleExp;

    move-result-object v0

    .line 512
    .local v0, "mexp":Lgnu/expr/ModuleExp;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->mustCompileHere()V

    .line 513
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->startDocument(Lgnu/expr/ModuleExp;)V

    .line 514
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->in:Lgnu/mapping/InPort;

    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v2

    invoke-static {v1, v2, p0}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/lists/Consumer;)V

    .line 515
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->endDocument()V

    .line 516
    invoke-virtual {p1, v0}, Lgnu/expr/Compilation;->pop(Lgnu/expr/ScopeExp;)V

    .line 517
    return-void
.end method

.method parseXPath(Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 8
    .param p1, "string"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v0}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    .line 288
    .local v0, "messages":Lgnu/text/SourceMessages;
    :try_start_6
    new-instance v1, Lgnu/xquery/lang/XQParser;

    new-instance v2, Lgnu/mapping/CharArrayInPort;

    invoke-direct {v2, p1}, Lgnu/mapping/CharArrayInPort;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->interpreter:Lgnu/kawa/xslt/XSLT;

    invoke-direct {v1, v2, v0, v3}, Lgnu/xquery/lang/XQParser;-><init>(Lgnu/mapping/InPort;Lgnu/text/SourceMessages;Lgnu/xquery/lang/XQuery;)V

    .line 290
    .local v1, "parser":Lgnu/xquery/lang/XQParser;
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    .line 294
    .local v2, "exps":Ljava/util/Vector;
    :goto_19
    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    invoke-virtual {v1, v3}, Lgnu/xquery/lang/XQParser;->parse(Lgnu/expr/Compilation;)Lgnu/expr/Expression;

    move-result-object v3

    .line 295
    .local v3, "sexp":Lgnu/expr/Expression;
    if-nez v3, :cond_3e

    .line 296
    nop

    .line 299
    .end local v3    # "sexp":Lgnu/expr/Expression;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 300
    .local v3, "nexps":I
    if-nez v3, :cond_2b

    .line 301
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    return-object v4

    .line 302
    :cond_2b
    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    .line 303
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgnu/expr/Expression;

    return-object v4

    .line 305
    :cond_36
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "too many xpath expressions"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .end local v0    # "messages":Lgnu/text/SourceMessages;
    .end local p1    # "string":Ljava/lang/String;
    throw v4

    .line 297
    .restart local v0    # "messages":Lgnu/text/SourceMessages;
    .local v3, "sexp":Lgnu/expr/Expression;
    .restart local p1    # "string":Ljava/lang/String;
    :cond_3e
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_42

    .line 298
    .end local v3    # "sexp":Lgnu/expr/Expression;
    goto :goto_19

    .line 307
    .end local v1    # "parser":Lgnu/xquery/lang/XQParser;
    .end local v2    # "exps":Ljava/util/Vector;
    :catchall_42
    move-exception v1

    .line 309
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    goto :goto_60

    :goto_5f
    throw v2

    :goto_60
    goto :goto_5f
.end method

.method public popMatchingAttribute(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "start"    # I

    .line 80
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 81
    .local v0, "size":I
    move v1, p3

    .local v1, "i":I
    :goto_9
    const/4 v2, 0x0

    if-ge v1, v0, :cond_6b

    .line 83
    iget-object v3, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v3, v3, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v3, p3}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "el":Ljava/lang/Object;
    instance-of v4, v3, Lgnu/expr/ApplyExp;

    if-nez v4, :cond_19

    .line 85
    return-object v2

    .line 86
    :cond_19
    move-object v4, v3

    check-cast v4, Lgnu/expr/ApplyExp;

    .line 87
    .local v4, "aexp":Lgnu/expr/ApplyExp;
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v5

    .line 88
    .local v5, "function":Lgnu/expr/Expression;
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v6

    sget-object v7, Lgnu/kawa/xml/MakeAttribute;->makeAttributeExp:Lgnu/expr/QuoteExp;

    if-eq v6, v7, :cond_29

    .line 89
    return-object v2

    .line 90
    :cond_29
    invoke-virtual {v4}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v6

    .line 91
    .local v6, "args":[Lgnu/expr/Expression;
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_32

    .line 92
    return-object v2

    .line 93
    :cond_32
    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 94
    .local v7, "arg0":Lgnu/expr/Expression;
    instance-of v8, v7, Lgnu/expr/QuoteExp;

    if-nez v8, :cond_3a

    .line 95
    return-object v2

    .line 96
    :cond_3a
    move-object v8, v7

    check-cast v8, Lgnu/expr/QuoteExp;

    invoke-virtual {v8}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 97
    .local v8, "tag":Ljava/lang/Object;
    instance-of v9, v8, Lgnu/mapping/Symbol;

    if-nez v9, :cond_46

    .line 98
    return-object v2

    .line 99
    :cond_46
    move-object v2, v8

    check-cast v2, Lgnu/mapping/Symbol;

    .line 100
    .local v2, "stag":Lgnu/mapping/Symbol;
    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getLocalPart()Ljava/lang/String;

    move-result-object v9

    if-ne v9, p2, :cond_68

    invoke-virtual {v2}, Lgnu/mapping/Symbol;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    if-ne v9, p1, :cond_68

    .line 102
    iget-object v9, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v9, v9, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v9, v1}, Ljava/util/Stack;->removeElementAt(I)V

    .line 103
    const/4 v9, 0x1

    aget-object v9, v6, v9

    check-cast v9, Lgnu/expr/QuoteExp;

    invoke-virtual {v9}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    return-object v9

    .line 81
    .end local v2    # "stag":Lgnu/mapping/Symbol;
    .end local v3    # "el":Ljava/lang/Object;
    .end local v4    # "aexp":Lgnu/expr/ApplyExp;
    .end local v5    # "function":Lgnu/expr/Expression;
    .end local v6    # "args":[Lgnu/expr/Expression;
    .end local v7    # "arg0":Lgnu/expr/Expression;
    .end local v8    # "tag":Ljava/lang/Object;
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 106
    .end local v1    # "i":I
    :cond_6b
    return-object v2
.end method

.method popTemplateBody(I)Lgnu/expr/Expression;
    .registers 6
    .param p1, "start"    # I

    .line 112
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int/2addr v0, p1

    .line 114
    .local v0, "i":I
    new-array v1, v0, [Lgnu/expr/Expression;

    .line 115
    .local v1, "args":[Lgnu/expr/Expression;
    :goto_b
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 116
    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgnu/expr/Expression;

    aput-object v2, v1, v0

    goto :goto_b

    .line 117
    :cond_1c
    new-instance v2, Lgnu/expr/ApplyExp;

    sget-object v3, Lgnu/kawa/functions/AppendValues;->appendValues:Lgnu/kawa/functions/AppendValues;

    invoke-direct {v2, v3, v1}, Lgnu/expr/ApplyExp;-><init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V

    return-object v2
.end method

.method push(Lgnu/expr/Expression;)V
    .registers 3
    .param p1, "exp"    # Lgnu/expr/Expression;

    .line 375
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v0, v0, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    return-void
.end method

.method push(Ljava/lang/Object;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 380
    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 381
    return-void
.end method

.method resolveQNameExpression(Ljava/lang/String;)Lgnu/expr/Expression;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 499
    if-nez p1, :cond_5

    .line 500
    sget-object v0, Lgnu/expr/QuoteExp;->nullExp:Lgnu/expr/QuoteExp;

    return-object v0

    .line 502
    :cond_5
    new-instance v0, Lgnu/expr/QuoteExp;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lgnu/mapping/Symbol;->make(Ljava/lang/Object;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public startAttribute(Ljava/lang/Object;)V
    .registers 4
    .param p1, "attrType"    # Ljava/lang/Object;

    .line 165
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_b

    .line 166
    const/16 v0, 0x66

    const-string v1, "internal error - attribute inside attribute"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/xslt/XslTranslator;->error(CLjava/lang/String;)V

    .line 167
    :cond_b
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->attributeType:Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 169
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v1, v1, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    .line 171
    return-void
.end method

.method public startDocument()V
    .registers 1

    .line 426
    return-void
.end method

.method public startDocument(Lgnu/expr/ModuleExp;)V
    .registers 2
    .param p1, "mexp"    # Lgnu/expr/ModuleExp;

    .line 430
    iput-object p1, p0, Lgnu/kawa/xslt/XslTranslator;->mexp:Lgnu/expr/ModuleExp;

    .line 431
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->startDocument()V

    .line 432
    return-void
.end method

.method public startElement(Ljava/lang/Object;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lgnu/kawa/xslt/XslTranslator;->maybeSkipWhitespace()V

    .line 140
    invoke-static {p1}, Lgnu/kawa/xslt/XslTranslator;->isXslTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "xslTag":Ljava/lang/String;
    const-string v1, "template"

    if-ne v0, v1, :cond_1c

    .line 143
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    if-eqz v1, :cond_14

    .line 144
    const-string v1, "nested xsl:template"

    invoke-virtual {p0, v1}, Lgnu/kawa/xslt/XslTranslator;->error(Ljava/lang/String;)V

    .line 145
    :cond_14
    new-instance v1, Lgnu/expr/LambdaExp;

    invoke-direct {v1}, Lgnu/expr/LambdaExp;-><init>()V

    iput-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->templateLambda:Lgnu/expr/LambdaExp;

    goto :goto_23

    .line 149
    :cond_1c
    const-string v1, "text"

    if-ne v0, v1, :cond_23

    .line 150
    const/4 v1, 0x0

    iput-boolean v1, p0, Lgnu/kawa/xslt/XslTranslator;->preserveSpace:Z

    .line 151
    :cond_23
    :goto_23
    instance-of v1, p1, Lgnu/xml/XName;

    if-eqz v1, :cond_3a

    .line 155
    move-object v1, p1

    check-cast v1, Lgnu/xml/XName;

    .line 156
    .local v1, "xn":Lgnu/xml/XName;
    invoke-virtual {v1}, Lgnu/xml/XName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lgnu/xml/XName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lgnu/xml/XName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lgnu/mapping/Symbol;->make(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object p1

    .line 159
    .end local v1    # "xn":Lgnu/xml/XName;
    :cond_3a
    iget-object v1, p0, Lgnu/kawa/xslt/XslTranslator;->nesting:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lgnu/kawa/xslt/XslTranslator;->comp:Lgnu/expr/Compilation;

    iget-object v2, v2, Lgnu/expr/Compilation;->exprStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public write(I)V
    .registers 6
    .param p1, "v"    # I

    .line 316
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 319
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 327
    :cond_a
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_13

    .line 328
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    goto :goto_33

    .line 331
    .end local v0    # "str":Ljava/lang/String;
    :cond_13
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    sub-int v0, p1, v0

    shr-int/lit8 v0, v0, 0xa

    const v3, 0xd800

    add-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, v1, v2

    const/4 v0, 0x1

    and-int/lit16 v2, p1, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    move-object v0, v1

    .line 333
    .local v0, "c2":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    move-object v0, v1

    .line 335
    .local v0, "str":Ljava/lang/String;
    :goto_33
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 337
    .end local v0    # "str":Ljava/lang/String;
    :goto_36
    return-void
.end method

.method public write(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 465
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->write(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 456
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 457
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 459
    :cond_a
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 460
    :goto_d
    return-void
.end method

.method public write([CII)V
    .registers 5
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 448
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 449
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 451
    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 452
    :goto_12
    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .param p1, "v"    # Z

    .line 385
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 386
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 388
    :cond_a
    if-eqz p1, :cond_f

    sget-object v0, Lgnu/expr/QuoteExp;->trueExp:Lgnu/expr/QuoteExp;

    goto :goto_11

    :cond_f
    sget-object v0, Lgnu/expr/QuoteExp;->falseExp:Lgnu/expr/QuoteExp;

    :goto_11
    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Lgnu/expr/Expression;)V

    .line 389
    :goto_14
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "v"    # D

    .line 401
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 402
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 404
    :cond_a
    invoke-static {p1, p2}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 405
    :goto_11
    return-void
.end method

.method public writeFloat(F)V
    .registers 4
    .param p1, "v"    # F

    .line 393
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 394
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 396
    :cond_a
    float-to-double v0, p1

    invoke-static {v0, v1}, Lgnu/math/DFloNum;->make(D)Lgnu/math/DFloNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 397
    :goto_12
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "v"    # I

    .line 409
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 410
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 412
    :cond_a
    invoke-static {p1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 413
    :goto_11
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "v"    # J

    .line 417
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 418
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_11

    .line 420
    :cond_a
    invoke-static {p1, p2}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 421
    :goto_11
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .registers 3
    .param p1, "v"    # Ljava/lang/Object;

    .line 440
    iget-boolean v0, p0, Lgnu/kawa/xslt/XslTranslator;->inAttribute:Z

    if-eqz v0, :cond_a

    .line 441
    iget-object v0, p0, Lgnu/kawa/xslt/XslTranslator;->attributeValue:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 443
    :cond_a
    invoke-virtual {p0, p1}, Lgnu/kawa/xslt/XslTranslator;->push(Ljava/lang/Object;)V

    .line 444
    :goto_d
    return-void
.end method

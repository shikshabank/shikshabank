.class public Lgnu/kawa/xml/KDocument;
.super Lgnu/kawa/xml/KNode;
.source "KDocument.java"

# interfaces
.implements Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .registers 3
    .param p1, "seq"    # Lgnu/xml/NodeTree;
    .param p2, "ipos"    # I

    .line 18
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KNode;-><init>(Lgnu/xml/NodeTree;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .param p1, "source"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "adoptNode not implemented"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createAttribute not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createAttributeNS not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createCDATASection not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createComment not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createDocumentFragment not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createElement not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "qualifiedName"    # Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createElementNS not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createEntityReference implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 5
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createProcessingInstruction not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "createTextNode not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .registers 2

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocumentElement()Lgnu/kawa/xml/KElement;
    .registers 4

    .line 45
    iget-object v0, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v0, Lgnu/xml/NodeTree;

    iget v1, p0, Lgnu/kawa/xml/KDocument;->ipos:I

    invoke-virtual {v0, v1}, Lgnu/xml/NodeTree;->posFirstChild(I)I

    move-result v0

    .line 48
    .local v0, "child":I
    :goto_a
    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 49
    const/4 v1, 0x0

    return-object v1

    .line 50
    :cond_f
    iget-object v1, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->getNextKind(I)I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_25

    .line 51
    nop

    .line 54
    iget-object v1, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    check-cast v1, Lgnu/xml/NodeTree;

    invoke-static {v1, v0}, Lgnu/kawa/xml/KDocument;->make(Lgnu/xml/NodeTree;I)Lgnu/kawa/xml/KNode;

    move-result-object v1

    check-cast v1, Lgnu/kawa/xml/KElement;

    return-object v1

    .line 52
    :cond_25
    iget-object v1, p0, Lgnu/kawa/xml/KDocument;->sequence:Lgnu/lists/AbstractSequence;

    invoke-virtual {v1, v0}, Lgnu/lists/AbstractSequence;->nextPos(I)I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic getDocumentElement()Lorg/w3c/dom/Element;
    .registers 2

    .line 11
    invoke-virtual {p0}, Lgnu/kawa/xml/KDocument;->getDocumentElement()Lgnu/kawa/xml/KElement;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .registers 2

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .registers 4

    .line 231
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "getDomConfig not implemented"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 3
    .param p1, "elementId"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getElementsByTagNameNS not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .registers 3

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getImplementation not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "#document"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .line 58
    const/16 v0, 0x9

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .registers 2

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStrictErrorChecking()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .registers 2

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTextContent(Ljava/lang/StringBuffer;)V
    .registers 2
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;

    .line 74
    return-void
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .registers 2

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getXmlStandalone()Z
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .registers 2

    .line 183
    const-string v0, "1.1"

    return-object v0
.end method

.method public hasAttributes()Z
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .registers 5
    .param p1, "importedNode"    # Lorg/w3c/dom/Node;
    .param p2, "deep"    # Z

    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "importNode not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public normalizeDocument()V
    .registers 1

    .line 226
    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "qualifiedname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 212
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/16 v1, 0x9

    const-string v2, "renameNode not implemented"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "documentURI"    # Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .registers 2
    .param p1, "strictErrorChecking"    # Z

    .line 197
    return-void
.end method

.method public setXmlStandalone(Z)V
    .registers 2
    .param p1, "xmlStandalone"    # Z

    .line 179
    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "xmlVersion"    # Ljava/lang/String;

    .line 188
    return-void
.end method

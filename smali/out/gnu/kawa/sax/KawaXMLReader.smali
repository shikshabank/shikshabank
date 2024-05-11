.class public Lgnu/kawa/sax/KawaXMLReader;
.super Lgnu/kawa/sax/ContentConsumer;
.source "KawaXMLReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# instance fields
.field errorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lgnu/kawa/sax/ContentConsumer;-><init>()V

    return-void
.end method


# virtual methods
.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .line 62
    iget-object v0, p0, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemId"    # Ljava/lang/String;

    .line 84
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 8
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 69
    .local v0, "reader":Ljava/io/Reader;
    if-nez v0, :cond_e

    .line 70
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lgnu/xml/XMLParser;->XMLStreamReader(Ljava/io/InputStream;)Lgnu/text/LineInputStreamReader;

    move-result-object v0

    .line 71
    :cond_e
    new-instance v1, Lgnu/text/SourceMessages;

    invoke-direct {v1}, Lgnu/text/SourceMessages;-><init>()V

    .line 72
    .local v1, "messages":Lgnu/text/SourceMessages;
    new-instance v2, Lgnu/xml/XMLFilter;

    invoke-direct {v2, p0}, Lgnu/xml/XMLFilter;-><init>(Lgnu/lists/Consumer;)V

    .line 73
    .local v2, "filter":Lgnu/xml/XMLFilter;
    new-instance v3, Lgnu/text/LineBufferedReader;

    invoke-direct {v3, v0}, Lgnu/text/LineBufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v3, "lin":Lgnu/text/LineBufferedReader;
    invoke-virtual {v2, v3}, Lgnu/xml/XMLFilter;->setSourceLocator(Lgnu/text/LineBufferedReader;)V

    .line 75
    invoke-virtual {p0}, Lgnu/kawa/sax/KawaXMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 76
    invoke-static {v3, v1, v2}, Lgnu/xml/XMLParser;->parse(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;Lgnu/xml/XMLFilter;)V

    .line 77
    const/16 v4, 0x14

    invoke-virtual {v1, v4}, Lgnu/text/SourceMessages;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "err":Ljava/lang/String;
    if-nez v4, :cond_33

    .line 80
    return-void

    .line 79
    :cond_33
    new-instance v5, Lorg/xml/sax/SAXParseException;

    invoke-direct {v5, v4, v2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v5
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .line 45
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 36
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 57
    iput-object p1, p0, Lgnu/kawa/sax/KawaXMLReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 58
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 23
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 32
    return-void
.end method

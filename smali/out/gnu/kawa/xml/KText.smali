.class public Lgnu/kawa/xml/KText;
.super Lgnu/kawa/xml/KCharacterData;
.source "KText.java"

# interfaces
.implements Lorg/w3c/dom/Text;


# direct methods
.method public constructor <init>(Lgnu/xml/NodeTree;I)V
    .registers 3
    .param p1, "seq"    # Lgnu/xml/NodeTree;
    .param p2, "ipos"    # I

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/kawa/xml/KCharacterData;-><init>(Lgnu/xml/NodeTree;I)V

    .line 18
    return-void
.end method

.method public static make(Ljava/lang/String;)Lgnu/kawa/xml/KText;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .line 22
    new-instance v0, Lgnu/xml/NodeTree;

    invoke-direct {v0}, Lgnu/xml/NodeTree;-><init>()V

    .line 23
    .local v0, "tree":Lgnu/xml/NodeTree;
    invoke-virtual {v0, p0}, Lgnu/xml/NodeTree;->append(Ljava/lang/CharSequence;)Lgnu/lists/Consumer;

    .line 24
    new-instance v1, Lgnu/kawa/xml/KText;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lgnu/kawa/xml/KText;-><init>(Lgnu/xml/NodeTree;I)V

    return-object v1
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .registers 2

    .line 33
    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .line 28
    const/4 v0, 0x3

    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .registers 3

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getWholeText not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasAttributes()Z
    .registers 2

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public isElementContentWhitespace()Z
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .registers 5
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "splitText not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .registers 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/w3c/dom/DOMException;

    const/4 v1, 0x7

    const-string v2, "splitText not supported"

    invoke-direct {v0, v1, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

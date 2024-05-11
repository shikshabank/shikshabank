.class public Lgnu/kawa/models/Text;
.super Lgnu/kawa/models/Model;
.source "Text.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field public final buffer:Lgnu/lists/CharBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    const-string v0, ""

    invoke-direct {p0, v0}, Lgnu/kawa/models/Text;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 14
    new-instance v0, Lgnu/lists/CharBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lgnu/lists/CharBuffer;-><init>(I)V

    iput-object v0, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    .line 23
    const/16 v1, 0x63

    iput v1, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    .line 24
    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v1

    iget v0, v0, Lgnu/lists/CharBuffer;->gapEnd:I

    const/16 v2, 0xa

    aput-char v2, v1, v0

    .line 25
    invoke-virtual {p0, p1}, Lgnu/kawa/models/Text;->setText(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public getBuffer()Lgnu/lists/CharBuffer;
    .registers 2

    .line 51
    iget-object v0, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .line 35
    iget-object v0, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 36
    .local v0, "len":I
    iget-object v1, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    .line 37
    .local v1, "start":I
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v3}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .registers 3
    .param p1, "display"    # Lgnu/kawa/models/Display;
    .param p2, "where"    # Ljava/lang/Object;

    .line 30
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 43
    .local v0, "size":I
    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 44
    iget-object v2, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v2, v1, v0}, Lgnu/lists/CharBuffer;->delete(II)V

    .line 45
    :cond_10
    iget-object v2, p0, Lgnu/kawa/models/Text;->buffer:Lgnu/lists/CharBuffer;

    invoke-virtual {v2, v1, p1, v1}, Lgnu/lists/CharBuffer;->insert(ILjava/lang/String;Z)V

    .line 46
    const-string v1, "text"

    invoke-virtual {p0, v1}, Lgnu/kawa/models/Text;->notifyListeners(Ljava/lang/String;)V

    .line 47
    return-void
.end method

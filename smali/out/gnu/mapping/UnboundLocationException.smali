.class public Lgnu/mapping/UnboundLocationException;
.super Ljava/lang/RuntimeException;
.source "UnboundLocationException.java"


# instance fields
.field column:I

.field filename:Ljava/lang/String;

.field line:I

.field location:Lgnu/mapping/Location;

.field public symbol:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Location;)V
    .registers 2
    .param p1, "loc"    # Lgnu/mapping/Location;

    .line 43
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 44
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "symbol"    # Ljava/lang/Object;

    .line 18
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/text/SourceLocator;)V
    .registers 4
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "location"    # Lgnu/text/SourceLocator;

    .line 32
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 33
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 34
    if-eqz p2, :cond_19

    .line 36
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 37
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lgnu/mapping/UnboundLocationException;->line:I

    .line 38
    invoke-interface {p2}, Lgnu/text/SourceLocator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lgnu/mapping/UnboundLocationException;->column:I

    .line 40
    :cond_19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;II)V
    .registers 5
    .param p1, "symbol"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "line"    # I
    .param p4, "column"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 25
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 27
    iput p3, p0, Lgnu/mapping/UnboundLocationException;->line:I

    .line 28
    iput p4, p0, Lgnu/mapping/UnboundLocationException;->column:I

    .line 29
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 6

    .line 62
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 64
    return-object v0

    .line 65
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    if-nez v2, :cond_14

    iget v3, p0, Lgnu/mapping/UnboundLocationException;->line:I

    if-lez v3, :cond_38

    .line 68
    :cond_14
    if-eqz v2, :cond_19

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_19
    iget v2, p0, Lgnu/mapping/UnboundLocationException;->line:I

    if-ltz v2, :cond_33

    .line 72
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    iget v3, p0, Lgnu/mapping/UnboundLocationException;->line:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 74
    iget v3, p0, Lgnu/mapping/UnboundLocationException;->column:I

    if-lez v3, :cond_33

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 77
    iget v2, p0, Lgnu/mapping/UnboundLocationException;->column:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 80
    :cond_33
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_38
    iget-object v2, p0, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    if-nez v2, :cond_3e

    const/4 v2, 0x0

    goto :goto_42

    :cond_3e
    invoke-virtual {v2}, Lgnu/mapping/Location;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v2

    .line 83
    .local v2, "name":Lgnu/mapping/Symbol;
    :goto_42
    const-string v3, "unbound location "

    if-eqz v2, :cond_62

    .line 85
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v3, p0, Lgnu/mapping/UnboundLocationException;->location:Lgnu/mapping/Location;

    invoke-virtual {v3}, Lgnu/mapping/Location;->getKeyProperty()Ljava/lang/Object;

    move-result-object v3

    .line 88
    .local v3, "property":Ljava/lang/Object;
    if-eqz v3, :cond_61

    .line 90
    const-string v4, " (property "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 92
    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    .end local v3    # "property":Ljava/lang/Object;
    :cond_61
    goto :goto_74

    .line 95
    :cond_62
    iget-object v4, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    if-eqz v4, :cond_6f

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v3, p0, Lgnu/mapping/UnboundLocationException;->symbol:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_74

    .line 101
    :cond_6f
    const-string v3, "unbound location"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :goto_74
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setLine(Ljava/lang/String;II)V
    .registers 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "line"    # I
    .param p3, "column"    # I

    .line 55
    iput-object p1, p0, Lgnu/mapping/UnboundLocationException;->filename:Ljava/lang/String;

    .line 56
    iput p2, p0, Lgnu/mapping/UnboundLocationException;->line:I

    .line 57
    iput p3, p0, Lgnu/mapping/UnboundLocationException;->column:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lgnu/mapping/UnboundLocationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

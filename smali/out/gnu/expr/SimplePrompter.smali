.class Lgnu/expr/SimplePrompter;
.super Lgnu/mapping/Procedure1;
.source "Language.java"


# instance fields
.field public prefix:Ljava/lang/String;

.field public suffix:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 963
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 965
    const-string v0, "["

    iput-object v0, p0, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    .line 966
    const-string v0, "] "

    iput-object v0, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "arg"    # Ljava/lang/Object;

    .line 970
    instance-of v0, p1, Lgnu/mapping/InPort;

    if-eqz v0, :cond_29

    .line 972
    move-object v0, p1

    check-cast v0, Lgnu/mapping/InPort;

    .line 973
    .local v0, "port":Lgnu/mapping/InPort;
    invoke-virtual {v0}, Lgnu/mapping/InPort;->getLineNumber()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 974
    .local v1, "line":I
    if-ltz v1, :cond_29

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lgnu/expr/SimplePrompter;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 977
    .end local v0    # "port":Lgnu/mapping/InPort;
    .end local v1    # "line":I
    :cond_29
    iget-object v0, p0, Lgnu/expr/SimplePrompter;->suffix:Ljava/lang/String;

    return-object v0
.end method

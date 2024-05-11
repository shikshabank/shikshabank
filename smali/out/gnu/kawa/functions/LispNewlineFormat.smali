.class Lgnu/kawa/functions/LispNewlineFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# static fields
.field static final line_separator:Ljava/lang/String;


# instance fields
.field count:I

.field kind:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 664
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 662
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(II)Lgnu/kawa/functions/LispNewlineFormat;
    .registers 3
    .param p0, "count"    # I
    .param p1, "kind"    # I

    .line 676
    new-instance v0, Lgnu/kawa/functions/LispNewlineFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispNewlineFormat;-><init>()V

    .line 677
    .local v0, "fmt":Lgnu/kawa/functions/LispNewlineFormat;
    iput p0, v0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    .line 678
    iput p1, v0, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    .line 679
    return-object v0
.end method

.method public static printNewline(ILjava/io/Writer;)V
    .registers 3
    .param p0, "kind"    # I
    .param p1, "dst"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    instance-of v0, p1, Lgnu/mapping/OutPort;

    if-eqz v0, :cond_f

    const/16 v0, 0x4c

    if-eq p0, v0, :cond_f

    .line 697
    move-object v0, p1

    check-cast v0, Lgnu/mapping/OutPort;

    invoke-virtual {v0, p0}, Lgnu/mapping/OutPort;->writeBreak(I)V

    goto :goto_1f

    .line 698
    :cond_f
    instance-of v0, p1, Ljava/io/PrintWriter;

    if-eqz v0, :cond_1a

    .line 700
    move-object v0, p1

    check-cast v0, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_1f

    .line 702
    :cond_1a
    sget-object v0, Lgnu/kawa/functions/LispNewlineFormat;->line_separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 703
    :goto_1f
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 8
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 686
    iget v0, p0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispNewlineFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 687
    .local v0, "count":I
    iget v1, p0, Lgnu/kawa/functions/LispNewlineFormat;->count:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_f

    add-int/lit8 p2, p2, 0x1

    .line 688
    :cond_f
    :goto_f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    .line 689
    iget v1, p0, Lgnu/kawa/functions/LispNewlineFormat;->kind:I

    invoke-static {v1, p3}, Lgnu/kawa/functions/LispNewlineFormat;->printNewline(ILjava/io/Writer;)V

    goto :goto_f

    .line 690
    :cond_19
    return p2
.end method

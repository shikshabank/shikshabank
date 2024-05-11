.class Lgnu/kawa/functions/LispCharacterFormat;
.super Lgnu/text/ReportFormat;
.source "LispFormat.java"


# instance fields
.field charVal:I

.field count:I

.field seenAt:Z

.field seenColon:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 598
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance(IIZZ)Lgnu/kawa/functions/LispCharacterFormat;
    .registers 5
    .param p0, "charVal"    # I
    .param p1, "count"    # I
    .param p2, "seenAt"    # Z
    .param p3, "seenColon"    # Z

    .line 608
    new-instance v0, Lgnu/kawa/functions/LispCharacterFormat;

    invoke-direct {v0}, Lgnu/kawa/functions/LispCharacterFormat;-><init>()V

    .line 609
    .local v0, "fmt":Lgnu/kawa/functions/LispCharacterFormat;
    iput p1, v0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    .line 610
    iput p0, v0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    .line 611
    iput-boolean p2, v0, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    .line 612
    iput-boolean p3, v0, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    .line 613
    return-object v0
.end method

.method public static printChar(IZZLjava/io/Writer;)V
    .registers 5
    .param p0, "ch"    # I
    .param p1, "seenAt"    # Z
    .param p2, "seenColon"    # Z
    .param p3, "dst"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    if-eqz p1, :cond_a

    .line 635
    invoke-static {p0}, Lgnu/text/Char;->toScmReadableString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_35

    .line 637
    :cond_a
    if-eqz p2, :cond_32

    .line 639
    const/16 v0, 0x20

    if-ge p0, v0, :cond_1b

    .line 641
    const/16 v0, 0x5e

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    .line 642
    add-int/lit8 v0, p0, 0x40

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(I)V

    goto :goto_35

    .line 644
    :cond_1b
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_2e

    .line 646
    const-string v0, "#\\x"

    invoke-static {p3, v0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    .line 647
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lgnu/kawa/functions/LispCharacterFormat;->print(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_35

    .line 650
    :cond_2e
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_35

    .line 655
    :cond_32
    invoke-virtual {p3, p0}, Ljava/io/Writer;->write(I)V

    .line 657
    :goto_35
    return-void
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 9
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    iget v0, p0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(II[Ljava/lang/Object;I)I

    move-result v0

    .line 621
    .local v0, "count":I
    iget v1, p0, Lgnu/kawa/functions/LispCharacterFormat;->count:I

    const/high16 v2, -0x60000000

    if-ne v1, v2, :cond_f

    add-int/lit8 p2, p2, 0x1

    .line 622
    :cond_f
    iget v1, p0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    const/16 v3, 0x3f

    invoke-static {v1, v3, p1, p2}, Lgnu/kawa/functions/LispCharacterFormat;->getParam(IC[Ljava/lang/Object;I)C

    move-result v1

    .line 623
    .local v1, "charVal":I
    iget v3, p0, Lgnu/kawa/functions/LispCharacterFormat;->charVal:I

    if-ne v3, v2, :cond_1d

    add-int/lit8 p2, p2, 0x1

    .line 624
    :cond_1d
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_29

    .line 625
    iget-boolean v2, p0, Lgnu/kawa/functions/LispCharacterFormat;->seenAt:Z

    iget-boolean v3, p0, Lgnu/kawa/functions/LispCharacterFormat;->seenColon:Z

    invoke-static {v1, v2, v3, p3}, Lgnu/kawa/functions/LispCharacterFormat;->printChar(IZZLjava/io/Writer;)V

    goto :goto_1d

    .line 626
    :cond_29
    return p2
.end method

.class Lgnu/kawa/swingviews/GapPosition;
.super Lgnu/lists/SeqPosition;
.source "SwingContent.java"

# interfaces
.implements Ljavax/swing/text/Position;


# direct methods
.method public constructor <init>(Lgnu/lists/CharBuffer;I)V
    .registers 4
    .param p1, "content"    # Lgnu/lists/CharBuffer;
    .param p2, "offset"    # I

    .line 116
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, p2, v0}, Lgnu/lists/SeqPosition;-><init>(Lgnu/lists/AbstractSequence;IZ)V

    .line 117
    return-void
.end method


# virtual methods
.method public getOffset()I
    .registers 2

    .line 119
    invoke-virtual {p0}, Lgnu/kawa/swingviews/GapPosition;->nextIndex()I

    move-result v0

    return v0
.end method

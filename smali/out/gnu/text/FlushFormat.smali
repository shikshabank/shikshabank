.class public Lgnu/text/FlushFormat;
.super Lgnu/text/ReportFormat;
.source "FlushFormat.java"


# static fields
.field private static flush:Lgnu/text/FlushFormat;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lgnu/text/ReportFormat;-><init>()V

    return-void
.end method

.method public static getInstance()Lgnu/text/FlushFormat;
    .registers 1

    .line 13
    sget-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    if-nez v0, :cond_b

    .line 14
    new-instance v0, Lgnu/text/FlushFormat;

    invoke-direct {v0}, Lgnu/text/FlushFormat;-><init>()V

    sput-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    .line 15
    :cond_b
    sget-object v0, Lgnu/text/FlushFormat;->flush:Lgnu/text/FlushFormat;

    return-object v0
.end method


# virtual methods
.method public format([Ljava/lang/Object;ILjava/io/Writer;Ljava/text/FieldPosition;)I
    .registers 5
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "dst"    # Ljava/io/Writer;
    .param p4, "fpos"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p3}, Ljava/io/Writer;->flush()V

    .line 22
    return p2
.end method

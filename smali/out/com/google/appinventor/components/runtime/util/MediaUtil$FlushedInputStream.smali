.class Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 623
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 624
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    const-wide/16 v0, 0x0

    .line 629
    .local v0, "totalBytesSkipped":J
    :goto_2
    cmp-long v2, v0, p1

    if-gez v2, :cond_1f

    .line 630
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 631
    .local v2, "bytesSkipped":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1d

    .line 632
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/MediaUtil$FlushedInputStream;->read()I

    move-result v4

    if-gez v4, :cond_1b

    .line 633
    goto :goto_1f

    .line 635
    :cond_1b
    const-wide/16 v2, 0x1

    .line 638
    :cond_1d
    add-long/2addr v0, v2

    .line 639
    .end local v2    # "bytesSkipped":J
    goto :goto_2

    .line 640
    :cond_1f
    :goto_1f
    return-wide v0
.end method

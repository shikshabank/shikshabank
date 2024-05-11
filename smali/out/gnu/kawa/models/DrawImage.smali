.class public Lgnu/kawa/models/DrawImage;
.super Lgnu/kawa/models/Model;
.source "DrawImage.java"

# interfaces
.implements Lgnu/kawa/models/Paintable;
.implements Ljava/io/Serializable;


# instance fields
.field description:Ljava/lang/String;

.field image:Ljava/awt/image/BufferedImage;

.field src:Lgnu/text/Path;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .registers 2
    .param p1, "image"    # Ljava/awt/image/BufferedImage;

    .line 41
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 42
    iput-object p1, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    .line 43
    return-void
.end method


# virtual methods
.method public getBounds2D()Ljava/awt/geom/Rectangle2D;
    .registers 7

    .line 53
    invoke-virtual {p0}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 54
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 55
    .local v0, "w":I
    iget-object v1, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    .line 56
    .local v1, "h":I
    new-instance v2, Ljava/awt/geom/Rectangle2D$Float;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v2
.end method

.method public getImage()Ljava/awt/Image;
    .registers 2

    .line 66
    invoke-virtual {p0}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 67
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method public getSrc()Lgnu/text/Path;
    .registers 2

    .line 70
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    return-object v0
.end method

.method loadImage()V
    .registers 3

    .line 27
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_17

    .line 31
    :try_start_4
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    invoke-virtual {v0}, Lgnu/text/Path;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/imageio/ImageIO;->read(Ljava/io/InputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    .line 36
    goto :goto_17

    .line 33
    :catchall_11
    move-exception v0

    .line 35
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 38
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_17
    :goto_17
    return-void
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .registers 3
    .param p1, "display"    # Lgnu/kawa/models/Display;
    .param p2, "where"    # Ljava/lang/Object;

    .line 22
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public paint(Ljava/awt/Graphics2D;)V
    .registers 4
    .param p1, "graphics"    # Ljava/awt/Graphics2D;

    .line 47
    invoke-virtual {p0}, Lgnu/kawa/models/DrawImage;->loadImage()V

    .line 48
    iget-object v0, p0, Lgnu/kawa/models/DrawImage;->image:Ljava/awt/image/BufferedImage;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;Ljava/awt/geom/AffineTransform;Ljava/awt/image/ImageObserver;)Z

    .line 49
    return-void
.end method

.method public setSrc(Lgnu/text/Path;)V
    .registers 2
    .param p1, "src"    # Lgnu/text/Path;

    .line 74
    iput-object p1, p0, Lgnu/kawa/models/DrawImage;->src:Lgnu/text/Path;

    .line 75
    return-void
.end method

.method public transform(Ljava/awt/geom/AffineTransform;)Lgnu/kawa/models/Paintable;
    .registers 3
    .param p1, "tr"    # Ljava/awt/geom/AffineTransform;

    .line 61
    new-instance v0, Lgnu/kawa/models/WithTransform;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/models/WithTransform;-><init>(Lgnu/kawa/models/Paintable;Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.class public Lgnu/text/NullReader;
.super Ljava/io/Reader;
.source "NullReader.java"


# static fields
.field public static final nullReader:Lgnu/text/NullReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lgnu/text/NullReader;

    invoke-direct {v0}, Lgnu/text/NullReader;-><init>()V

    sput-object v0, Lgnu/text/NullReader;->nullReader:Lgnu/text/NullReader;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 13
    return-void
.end method

.method public read([CII)I
    .registers 5
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 9
    const/4 v0, -0x1

    return v0
.end method

.method public ready()Z
    .registers 2

    .line 11
    const/4 v0, 0x1

    return v0
.end method

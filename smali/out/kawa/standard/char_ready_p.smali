.class public Lkawa/standard/char_ready_p;
.super Ljava/lang/Object;
.source "char_ready_p.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ready(Ljava/lang/Object;)Z
    .registers 4
    .param p0, "arg1"    # Ljava/lang/Object;

    .line 8
    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p0, Ljava/io/InputStream;

    if-eqz v1, :cond_10

    .line 9
    move-object v1, p0

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    .line 10
    :cond_10
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_1c

    .line 11
    move-object v1, p0

    check-cast v1, Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0

    .line 13
    :cond_1c
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "invalid argument to char-ready?"

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .end local p0    # "arg1":Ljava/lang/Object;
    throw v1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_24} :catch_24

    .line 15
    .restart local p0    # "arg1":Ljava/lang/Object;
    :catch_24
    move-exception v1

    .line 17
    .local v1, "ex":Ljava/io/IOException;
    return v0
.end method

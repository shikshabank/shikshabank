.class public abstract Lgnu/kawa/xml/BinaryObject;
.super Ljava/lang/Object;
.source "BinaryObject.java"


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .registers 2

    .line 11
    iget-object v0, p0, Lgnu/kawa/xml/BinaryObject;->data:[B

    return-object v0
.end method

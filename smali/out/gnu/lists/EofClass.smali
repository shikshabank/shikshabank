.class public Lgnu/lists/EofClass;
.super Ljava/lang/Object;
.source "EofClass.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final eofValue:Lgnu/lists/EofClass;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    new-instance v0, Lgnu/lists/EofClass;

    invoke-direct {v0}, Lgnu/lists/EofClass;-><init>()V

    sput-object v0, Lgnu/lists/EofClass;->eofValue:Lgnu/lists/EofClass;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 28
    sget-object v0, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 14
    const-string v0, "#!eof"

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    return-void
.end method

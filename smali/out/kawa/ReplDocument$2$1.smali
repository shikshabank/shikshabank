.class Lkawa/ReplDocument$2$1;
.super Ljava/lang/Object;
.source "ReplDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkawa/ReplDocument$2;->apply0()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkawa/ReplDocument$2;


# direct methods
.method constructor <init>(Lkawa/ReplDocument$2;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lkawa/ReplDocument$2$1;->this$1:Lkawa/ReplDocument$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 92
    iget-object v0, p0, Lkawa/ReplDocument$2$1;->this$1:Lkawa/ReplDocument$2;

    iget-object v0, v0, Lkawa/ReplDocument$2;->this$0:Lkawa/ReplDocument;

    invoke-virtual {v0}, Lkawa/ReplDocument;->fireDocumentClosed()V

    return-void
.end method

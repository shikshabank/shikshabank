.class public Lgnu/kawa/models/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# instance fields
.field next:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "referent"    # Ljava/lang/Object;

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V
    .registers 3
    .param p1, "referent"    # Ljava/lang/Object;
    .param p2, "next"    # Lgnu/kawa/models/WeakListener;

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 15
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .registers 5
    .param p1, "view"    # Ljava/lang/Object;
    .param p2, "model"    # Lgnu/kawa/models/Model;
    .param p3, "key"    # Ljava/lang/Object;

    .line 20
    move-object v0, p1

    check-cast v0, Lgnu/kawa/models/ModelListener;

    invoke-interface {v0, p2, p3}, Lgnu/kawa/models/ModelListener;->modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

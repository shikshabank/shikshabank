.class public Lcom/google/appinventor/components/runtime/util/GameInstance;
.super Ljava/lang/Object;
.source "GameInstance.java"


# instance fields
.field private instanceId:Ljava/lang/String;

.field private leader:Ljava/lang/String;

.field private messageTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private players:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "instanceId"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->instanceId:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->leader:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getInstanceId()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeader()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->leader:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 127
    :cond_11
    const-string v0, ""

    return-object v0
.end method

.method public getPlayers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    return-object v0
.end method

.method public putMessageTime(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->messageTimes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public setLeader(Ljava/lang/String;)V
    .registers 2
    .param p1, "leader"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->leader:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPlayers(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/PlayerListDelta;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/PlayerListDelta;"
        }
    .end annotation

    .line 85
    .local p1, "newPlayersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 86
    sget-object v0, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    return-object v0

    .line 88
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    .line 89
    .local v0, "removed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .local v1, "added":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/util/GameInstance;->players:Ljava/util/List;

    .line 92
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2e

    .line 97
    sget-object v2, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;->NO_CHANGE:Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    return-object v2

    .line 100
    :cond_2e
    new-instance v2, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;

    invoke-direct {v2, v0, v1}, Lcom/google/appinventor/components/runtime/util/PlayerListDelta;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.class Lcom/google/appinventor/components/runtime/DataCollection$9;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ImportFromTinyDB(Lcom/google/appinventor/components/runtime/TinyDB;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 644
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$9;, "Lcom/google/appinventor/components/runtime/DataCollection$9;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 647
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$9;, "Lcom/google/appinventor/components/runtime/DataCollection$9;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    .line 648
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$9;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 649
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/DataCollection$5;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->RemoveDataSource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 519
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$5;, "Lcom/google/appinventor/components/runtime/DataCollection$5;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 523
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$5;, "Lcom/google/appinventor/components/runtime/DataCollection$5;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    .line 526
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    const-string v2, ""

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fputlastDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/Object;)V

    .line 531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 532
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 533
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$5;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 536
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

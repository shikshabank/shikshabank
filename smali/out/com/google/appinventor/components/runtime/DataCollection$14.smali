.class Lcom/google/appinventor/components/runtime/DataCollection$14;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->onDataSourceValueChange(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$component:Lcom/google/appinventor/components/runtime/DataSource;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$newValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 930
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$14;, "Lcom/google/appinventor/components/runtime/DataCollection$14;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->val$component:Lcom/google/appinventor/components/runtime/DataSource;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->val$newValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 934
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$14;, "Lcom/google/appinventor/components/runtime/DataCollection$14;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetlastDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_19

    .line 936
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetlastDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->removeValues(Ljava/util/List;)V

    .line 939
    :cond_19
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->val$component:Lcom/google/appinventor/components/runtime/DataSource;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->val$newValue:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$mupdateCurrentDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetlastDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_3d

    .line 943
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fgetlastDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataModel;->importFromList(Ljava/util/List;)V

    .line 945
    :cond_3d
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$14;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/DataCollection;->onDataChange()V

    .line 946
    return-void
.end method

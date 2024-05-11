.class Lcom/google/appinventor/components/runtime/DataCollection$4;
.super Ljava/lang/Object;
.source "DataCollection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/DataCollection;->ChangeDataSource(Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/DataCollection;

.field final synthetic val$keyValue:Ljava/lang/String;

.field final synthetic val$source:Lcom/google/appinventor/components/runtime/DataSource;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/DataCollection;Lcom/google/appinventor/components/runtime/DataSource;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/DataCollection;

    .line 451
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$4;, "Lcom/google/appinventor/components/runtime/DataCollection$4;"
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$keyValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 456
    .local p0, "this":Lcom/google/appinventor/components/runtime/DataCollection$4;, "Lcom/google/appinventor/components/runtime/DataCollection$4;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/DataFile;

    if-nez v1, :cond_12

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v0, :cond_b

    goto :goto_12

    .line 497
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$keyValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/DataCollection;->dataSourceKey:Ljava/lang/String;

    goto :goto_65

    .line 457
    :cond_12
    :goto_12
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 461
    .local v0, "keyValues":Lcom/google/appinventor/components/runtime/util/YailList;
    :try_start_17
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$keyValue:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_1f

    move-object v0, v1

    .line 464
    goto :goto_2f

    .line 462
    :catch_1f
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/DataFile;

    if-eqz v2, :cond_3a

    .line 470
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->dataFileColumns:Ljava/util/List;

    .local v1, "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4b

    .line 471
    .end local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    instance-of v2, v1, Lcom/google/appinventor/components/runtime/Spreadsheet;

    if-eqz v2, :cond_43

    .line 472
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->sheetsColumns:Ljava/util/List;

    .restart local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4b

    .line 473
    .end local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_43
    instance-of v1, v1, Lcom/google/appinventor/components/runtime/Web;

    if-eqz v1, :cond_73

    .line 474
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/DataCollection;->webColumns:Ljava/util/List;

    .line 480
    .restart local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_64

    .line 482
    const-string v3, ""

    .line 485
    .local v3, "columnValue":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-le v4, v2, :cond_5e

    .line 488
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 492
    :cond_5e
    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v3    # "columnValue":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 494
    .end local v0    # "keyValues":Lcom/google/appinventor/components/runtime/util/YailList;
    .end local v1    # "columnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :cond_64
    nop

    .line 501
    :goto_65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->-$$Nest$fputlastDataSourceValue(Lcom/google/appinventor/components/runtime/DataCollection;Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->this$0:Lcom/google/appinventor/components/runtime/DataCollection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/DataCollection;->Source(Lcom/google/appinventor/components/runtime/DataSource;)V

    .line 505
    return-void

    .line 476
    .restart local v0    # "keyValues":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/DataCollection$4;->val$source:Lcom/google/appinventor/components/runtime/DataSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not an expected DataSource"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    :goto_8e
    throw v1

    :goto_8f
    goto :goto_8e
.end method

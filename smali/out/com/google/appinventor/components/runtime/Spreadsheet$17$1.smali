.class Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

.field final synthetic val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$17;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    .line 1834
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1837
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mupdateColumns(Lcom/google/appinventor/components/runtime/Spreadsheet;Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 1838
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->notifyDataObservers(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/Object;)V

    .line 1839
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-boolean v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$fireEvent:Z

    if-eqz v0, :cond_c7

    .line 1840
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$colID:I

    if-ltz v0, :cond_be

    .line 1842
    :try_start_1d
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 1843
    .local v0, "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-direct {v1}, Lcom/google/appinventor/components/runtime/util/YailList;-><init>()V

    .line 1844
    .local v1, "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 1845
    .local v2, "rowNum":I
    :goto_28
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8d

    .line 1846
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 1847
    .local v3, "sheet_row":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$colID:I

    if-lt v4, v5, :cond_8c

    .line 1848
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$exact:Z

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget v4, v4, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$colID:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_80

    :cond_62
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$exact:Z

    if-nez v4, :cond_8a

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget v4, v4, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$colID:I

    add-int/lit8 v4, v4, -0x1

    .line 1849
    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->val$value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1850
    :cond_80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1853
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    .line 1855
    .end local v3    # "sheet_row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_8c
    goto :goto_28

    .line 1856
    :cond_8d
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotFilterResult(Ljava/util/List;Ljava/util/List;)V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_94} :catch_95

    .end local v0    # "return_rows":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "return_data":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "rowNum":I
    goto :goto_bd

    .line 1857
    :catch_95
    move-exception v0

    .line 1858
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadWithFilter (no creds) Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPREADSHEET"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1860
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_bd
    goto :goto_c7

    .line 1862
    :cond_be
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$17;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$17;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$17$1;->val$parsedCsv:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotSheetData(Ljava/util/List;)V

    .line 1865
    :cond_c7
    :goto_c7
    return-void
.end method

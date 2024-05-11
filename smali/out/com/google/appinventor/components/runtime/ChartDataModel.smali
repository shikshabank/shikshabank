.class public abstract Lcom/google/appinventor/components/runtime/ChartDataModel;
.super Lcom/google/appinventor/components/runtime/DataModel;
.source "ChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IDataSet<",
        "TE;>;D:",
        "Lcom/github/mikephil/charting/data/ChartData<",
        "TT;>;C:",
        "Lcom/github/mikephil/charting/charts/Chart<",
        "TD;>;V:",
        "Lcom/google/appinventor/components/runtime/ChartView<",
        "TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/DataModel<",
        "TE;>;"
    }
.end annotation


# instance fields
.field protected data:Lcom/github/mikephil/charting/data/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected view:Lcom/google/appinventor/components/runtime/ChartView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/ChartData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/ChartView;, "TV;"
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/DataModel;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    .line 51
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    .line 54
    return-void
.end method


# virtual methods
.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 342
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_10

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 350
    return-void
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .registers 4
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .line 399
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p1, p2}, Lcom/github/mikephil/charting/data/Entry;->equalTo(Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v0

    return v0
.end method

.method public clearEntries()V
    .registers 2

    .line 328
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 329
    return-void
.end method

.method public doesEntryExist(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .registers 5
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 190
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 193
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 196
    .local v1, "index":I
    if-ltz v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "criterion"    # Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    .line 209
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 214
    .local v2, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v2, p2, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 216
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v2    # "entry":Lcom/github/mikephil/charting/data/Entry;
    :cond_24
    goto :goto_b

    .line 220
    :cond_25
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I
    .registers 5
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .line 309
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 310
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/Entry;

    .line 315
    .local v1, "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 317
    return v0

    .line 309
    .end local v1    # "currentEntry":Lcom/github/mikephil/charting/data/Entry;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public getData()Lcom/github/mikephil/charting/data/ChartData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    return-object v0
.end method

.method public getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    return-object v0
.end method

.method protected getDefaultValue(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 382
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 408
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntriesAsTuples()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 3

    .line 230
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    sget-object v0, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->All:Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;

    const-string v1, "0"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntriesByCriterion(Ljava/lang/String;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getTupleSize()I
.end method

.method protected isEntryCriterionSatisfied(Lcom/github/mikephil/charting/data/Entry;Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;Ljava/lang/String;)Z
    .registers 11
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "criterion"    # Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;
    .param p3, "value"    # Ljava/lang/String;

    .line 243
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    const/4 v0, 0x0

    .line 245
    .local v0, "criterionSatisfied":Z
    sget-object v1, Lcom/google/appinventor/components/runtime/ChartDataModel$1;->$SwitchMap$com$google$appinventor$components$runtime$DataModel$EntryCriterion:[I

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/DataModel$EntryCriterion;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_68

    .line 292
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown criterion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :pswitch_27
    :try_start_27
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 285
    .local v1, "yValue":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v4
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2f} :catch_37

    cmpl-float v4, v4, v1

    if-nez v4, :cond_34

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    move v0, v2

    .line 288
    .end local v1    # "yValue":F
    goto :goto_67

    .line 286
    :catch_37
    move-exception v1

    .line 289
    goto :goto_67

    .line 253
    :pswitch_39
    instance-of v1, p1, Lcom/github/mikephil/charting/data/PieEntry;

    if-eqz v1, :cond_49

    .line 256
    move-object v1, p1

    check-cast v1, Lcom/github/mikephil/charting/data/PieEntry;

    .line 257
    .local v1, "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 258
    .end local v1    # "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    goto :goto_67

    .line 263
    :cond_49
    :try_start_49
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 264
    .local v1, "xValue":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v4

    .line 269
    .local v4, "compareValue":F
    instance-of v5, p1, Lcom/github/mikephil/charting/data/BarEntry;

    if-eqz v5, :cond_5b

    .line 270
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_5a} :catch_63

    double-to-float v4, v5

    .line 273
    :cond_5b
    cmpl-float v5, v4, v1

    if-nez v5, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :goto_61
    move v0, v2

    .line 276
    .end local v1    # "xValue":F
    .end local v4    # "compareValue":F
    goto :goto_67

    .line 274
    :catch_63
    move-exception v1

    .line 278
    goto :goto_67

    .line 247
    :pswitch_65
    const/4 v0, 0x1

    .line 248
    nop

    .line 295
    :goto_67
    return v0

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_65
        :pswitch_39
        :pswitch_27
    .end packed-switch
.end method

.method public removeEntry(I)V
    .registers 3
    .param p1, "index"    # I

    .line 177
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    if-ltz p1, :cond_7

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    :cond_7
    return-void
.end method

.method public removeEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 155
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    .line 157
    .local v0, "entry":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v0, :cond_d

    .line 163
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->findEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    .line 165
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->removeEntry(I)V

    .line 167
    .end local v1    # "index":I
    :cond_d
    return-void
.end method

.method public setColor(I)V
    .registers 4
    .param p1, "argb"    # I

    .line 87
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v1, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v1, :cond_b

    .line 88
    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColor(I)V

    .line 90
    :cond_b
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v1, v0, Lcom/github/mikephil/charting/data/DataSet;

    if-eqz v1, :cond_b

    .line 103
    check-cast v0, Lcom/github/mikephil/charting/data/DataSet;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/data/DataSet;->setColors(Ljava/util/List;)V

    .line 105
    :cond_b
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .registers 1

    .line 370
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    return-void
.end method

.method public setElements(Ljava/lang/String;)V
    .registers 9
    .param p1, "elements"    # Ljava/lang/String;

    .line 123
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getTupleSize()I

    move-result v0

    .line 126
    .local v0, "tupleSize":I
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "entries":[Ljava/lang/String;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_2b

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v3, "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_16
    if-ltz v4, :cond_22

    .line 139
    sub-int v5, v2, v4

    .line 140
    .local v5, "index":I
    aget-object v6, v1, v5

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v5    # "index":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_16

    .line 144
    .end local v4    # "j":I
    :cond_22
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 133
    .end local v3    # "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/2addr v2, v0

    goto :goto_c

    .line 146
    .end local v2    # "i":I
    :cond_2b
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 113
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->setLabel(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setMaximumTimeEntries(I)V
    .registers 2
    .param p1, "entries"    # I

    .line 358
    .local p0, "this":Lcom/google/appinventor/components/runtime/ChartDataModel;, "Lcom/google/appinventor/components/runtime/ChartDataModel<TE;TT;TD;TC;TV;>;"
    iput p1, p0, Lcom/google/appinventor/components/runtime/ChartDataModel;->maximumTimeEntries:I

    .line 359
    return-void
.end method

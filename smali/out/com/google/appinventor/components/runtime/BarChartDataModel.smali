.class public Lcom/google/appinventor/components/runtime/BarChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "BarChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "Lcom/github/mikephil/charting/data/BarEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        "Lcom/github/mikephil/charting/data/BarData;",
        "Lcom/github/mikephil/charting/charts/BarChart;",
        "Lcom/google/appinventor/components/runtime/BarChartView;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/BarData;Lcom/google/appinventor/components/runtime/BarChartView;)V
    .registers 6
    .param p1, "data"    # Lcom/github/mikephil/charting/data/BarData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/BarChartView;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 40
    new-instance v0, Lcom/github/mikephil/charting/data/BarDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 41
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->setDefaultStylingProperties()V

    .line 43
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 8
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 51
    .local v0, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v0, :cond_3e

    .line 54
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarEntry;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 65
    .local v1, "x":I
    if-gez v1, :cond_10

    .line 66
    return-void

    .line 71
    :cond_10
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 73
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 78
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v1, :cond_39

    .line 79
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    new-instance v3, Lcom/github/mikephil/charting/data/BarEntry;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 86
    :cond_39
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v1    # "x":I
    :cond_3e
    :goto_3e
    return-void
.end method

.method public addTimeEntry(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 4
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->maximumTimeEntries:I

    if-lt v0, v1, :cond_10

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    :cond_10
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .registers 9
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .line 171
    instance-of v0, p1, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    instance-of v0, p2, Lcom/github/mikephil/charting/data/BarEntry;

    if-nez v0, :cond_a

    goto :goto_30

    .line 180
    :cond_a
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2e

    .line 181
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    nop

    .line 180
    :goto_2f
    return v1

    .line 172
    :cond_30
    :goto_30
    return v1
.end method

.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .registers 13
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 97
    const-string v0, "GetEntryFromTuple"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "rawX":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_d} :catch_68
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_d} :catch_3d

    .line 105
    .local v5, "rawY":Ljava/lang/String;
    :try_start_d
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 106
    .local v6, "x":I
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 108
    .local v7, "y":F
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    int-to-float v9, v6

    invoke-direct {v8, v9, v7}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FF)V
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_21} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_21} :catch_68
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_21} :catch_3d

    return-object v8

    .line 109
    .end local v6    # "x":I
    .end local v7    # "y":F
    :catch_22
    move-exception v6

    .line 111
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_23
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/BarChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v8, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/BarChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v9, 0x1005

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v4, v10, v3

    aput-object v5, v10, v2

    invoke-virtual {v7, v8, v0, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3c
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_3c} :catch_68
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_23 .. :try_end_3c} :catch_3d

    .end local v4    # "rawX":Ljava/lang/String;
    .end local v5    # "rawY":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_7e

    .line 120
    :catch_3d
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/BarChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/BarChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v7, 0x1007

    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/BarChartDataModel;->getTupleSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 121
    invoke-virtual {v5, v6, v0, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_7f

    .line 116
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_68
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v2, Lcom/google/appinventor/components/runtime/BarChartView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/BarChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/BarChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/BarChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v5, 0x1006

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 125
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_7e
    nop

    .line 127
    :goto_7f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Float;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "tupleEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    return-object v1
.end method

.method public removeEntry(I)V
    .registers 4
    .param p1, "index"    # I

    .line 133
    if-ltz p1, :cond_1e

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_12

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 143
    :cond_12
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BarChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarEntry;->setY(F)V

    .line 146
    :cond_1e
    :goto_1e
    return-void
.end method

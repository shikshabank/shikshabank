.class public Lcom/google/appinventor/components/runtime/PieChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "PieChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;",
        "Lcom/github/mikephil/charting/data/PieData;",
        "Lcom/github/mikephil/charting/charts/PieChart;",
        "Lcom/google/appinventor/components/runtime/PieChartView;",
        ">;"
    }
.end annotation


# instance fields
.field private final legendEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mikephil/charting/components/LegendEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/data/PieData;Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/charts/PieChart;)V
    .registers 7
    .param p1, "data"    # Lcom/github/mikephil/charting/data/PieData;
    .param p2, "view"    # Lcom/google/appinventor/components/runtime/PieChartView;
    .param p3, "chart"    # Lcom/github/mikephil/charting/charts/PieChart;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    .line 52
    new-instance v0, Lcom/github/mikephil/charting/data/PieDataSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/PieDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieData;->addDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 57
    invoke-virtual {p3, p1}, Lcom/github/mikephil/charting/charts/PieChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 59
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->setDefaultStylingProperties()V

    .line 60
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    .line 61
    return-void
.end method

.method private updateLegendColors()V
    .registers 5

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 228
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v0, v1

    .line 234
    .local v1, "index":I
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 225
    .end local v1    # "index":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method


# virtual methods
.method public addEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 8
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    .line 69
    .local v0, "entry":Lcom/github/mikephil/charting/data/PieEntry;
    if-eqz v0, :cond_48

    .line 70
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v1, Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {v1}, Lcom/github/mikephil/charting/components/LegendEntry;-><init>()V

    .line 76
    .local v1, "legendEntry":Lcom/github/mikephil/charting/components/LegendEntry;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/github/mikephil/charting/components/LegendEntry;->label:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "entriesCount":I
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getColors()Ljava/util/List;

    move-result-object v3

    .line 87
    .local v3, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v4, v5

    .line 90
    .local v4, "index":I
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/github/mikephil/charting/components/LegendEntry;->formColor:I

    .line 94
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v5, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->addLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V

    .line 97
    .end local v1    # "legendEntry":Lcom/github/mikephil/charting/components/LegendEntry;
    .end local v2    # "entriesCount":I
    .end local v3    # "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "index":I
    :cond_48
    return-void
.end method

.method protected areEntriesEqual(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/data/Entry;)Z
    .registers 8
    .param p1, "e1"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "e2"    # Lcom/github/mikephil/charting/data/Entry;

    .line 207
    instance-of v0, p1, Lcom/github/mikephil/charting/data/PieEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    instance-of v0, p2, Lcom/github/mikephil/charting/data/PieEntry;

    if-nez v0, :cond_a

    goto :goto_2e

    .line 212
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    .line 213
    .local v0, "p1":Lcom/github/mikephil/charting/data/PieEntry;
    move-object v2, p2

    check-cast v2, Lcom/github/mikephil/charting/data/PieEntry;

    .line 215
    .local v2, "p2":Lcom/github/mikephil/charting/data/PieEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 216
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v3

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 215
    :goto_2d
    return v1

    .line 208
    .end local v0    # "p1":Lcom/github/mikephil/charting/data/PieEntry;
    .end local v2    # "p2":Lcom/github/mikephil/charting/data/PieEntry;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public clearEntries()V
    .registers 3

    .line 116
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;->clearEntries()V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v0, Lcom/google/appinventor/components/runtime/PieChartView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/PieChartView;->removeLegendEntries(Ljava/util/List;)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    return-void
.end method

.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .registers 13
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 129
    const-string v0, "GetEntryFromTuple"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "xValue":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_d} :catch_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_d} :catch_32

    .line 134
    .local v5, "yValue":Ljava/lang/String;
    :try_start_d
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 138
    .local v6, "y":F
    new-instance v7, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-direct {v7, v6, v4}, Lcom/github/mikephil/charting/data/PieEntry;-><init>(FLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_16} :catch_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_16} :catch_32

    return-object v7

    .line 139
    .end local v6    # "y":F
    :catch_17
    move-exception v6

    .line 141
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_18
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/PieChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v8, Lcom/google/appinventor/components/runtime/PieChartView;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PieChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v9, 0x1005

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v4, v10, v3

    aput-object v5, v10, v2

    invoke-virtual {v7, v8, v0, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_31} :catch_5d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_31} :catch_32

    .end local v4    # "xValue":Ljava/lang/String;
    .end local v5    # "yValue":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_73

    .line 150
    :catch_32
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/PieChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/PieChartView;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PieChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v7, 0x1007

    new-array v1, v1, [Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->getTupleSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 151
    invoke-virtual {v5, v6, v0, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_74

    .line 146
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_5d
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v2, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/PieChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/PieChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PieChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v5, 0x1006

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 155
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_73
    nop

    .line 157
    :goto_74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTupleFromEntry(Lcom/github/mikephil/charting/data/Entry;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 6
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/Entry;

    .line 163
    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/data/PieEntry;

    .line 167
    .local v0, "pieEntry":Lcom/github/mikephil/charting/data/PieEntry;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/Serializable;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieEntry;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "tupleEntries":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method public removeEntry(I)V
    .registers 4
    .param p1, "index"    # I

    .line 102
    if-ltz p1, :cond_19

    .line 103
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->legendEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/components/LegendEntry;

    .line 107
    .local v0, "removedEntry":Lcom/github/mikephil/charting/components/LegendEntry;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v1, Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/PieChartView;->removeLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V

    .line 110
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->updateLegendColors()V

    .line 112
    .end local v0    # "removedEntry":Lcom/github/mikephil/charting/components/LegendEntry;
    :cond_19
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "argb"    # I

    .line 198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->setColors(Ljava/util/List;)V

    .line 199
    return-void
.end method

.method public setColors(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;->setColors(Ljava/util/List;)V

    .line 190
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/PieChartDataModel;->updateLegendColors()V

    .line 191
    return-void
.end method

.method protected setDefaultStylingProperties()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    instance-of v0, v0, Lcom/github/mikephil/charting/data/PieDataSet;

    if-eqz v0, :cond_f

    .line 175
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    check-cast v0, Lcom/github/mikephil/charting/data/PieDataSet;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/PieDataSet;->setSliceSpace(F)V

    .line 177
    :cond_f
    return-void
.end method

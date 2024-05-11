.class public abstract Lcom/google/appinventor/components/runtime/PointChartDataModel;
.super Lcom/google/appinventor/components/runtime/Chart2DDataModel;
.source "PointChartDataModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/github/mikephil/charting/data/Entry;",
        "T::",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarLineScatterCandleBubbleDataSet<",
        "TE;>;D:",
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData<",
        "TT;>;C:",
        "Lcom/github/mikephil/charting/charts/BarLineChartBase<",
        "TD;>;V:",
        "Lcom/google/appinventor/components/runtime/PointChartView<",
        "TE;TT;TD;TC;TV;>;>",
        "Lcom/google/appinventor/components/runtime/Chart2DDataModel<",
        "TE;TT;TD;TC;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;Lcom/google/appinventor/components/runtime/PointChartView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TV;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartDataModel;, "Lcom/google/appinventor/components/runtime/PointChartDataModel<TE;TT;TD;TC;TV;>;"
    .local p1, "data":Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleData;, "TD;"
    .local p2, "view":Lcom/google/appinventor/components/runtime/PointChartView;, "TV;"
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Chart2DDataModel;-><init>(Lcom/github/mikephil/charting/data/ChartData;Lcom/google/appinventor/components/runtime/ChartView;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getEntryFromTuple(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/github/mikephil/charting/data/Entry;
    .registers 13
    .param p1, "tuple"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 54
    .local p0, "this":Lcom/google/appinventor/components/runtime/PointChartDataModel;, "Lcom/google/appinventor/components/runtime/PointChartDataModel<TE;TT;TD;TC;TV;>;"
    const-string v0, "GetEntryFromTuple"

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p1, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "xValue":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_d} :catch_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_d} :catch_36

    .line 59
    .local v5, "yValue":Ljava/lang/String;
    :try_start_d
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 60
    .local v6, "x":F
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 62
    .local v7, "y":F
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v8, v6, v7}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_1a} :catch_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_1a} :catch_36

    return-object v8

    .line 63
    .end local v6    # "x":F
    .end local v7    # "y":F
    :catch_1b
    move-exception v6

    .line 65
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_1c
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v7, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v8, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v9, 0x1005

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v4, v10, v3

    aput-object v5, v10, v2

    invoke-virtual {v7, v8, v0, v9, v10}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_35} :catch_61
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c .. :try_end_35} :catch_36

    .end local v4    # "xValue":Ljava/lang/String;
    .end local v5    # "yValue":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    goto :goto_77

    .line 74
    :catch_36
    move-exception v4

    .line 75
    .local v4, "e":Ljava/lang/IndexOutOfBoundsException;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v5, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v6, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v7, 0x1007

    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/PointChartDataModel;->getTupleSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 75
    invoke-virtual {v5, v6, v0, v7, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_78

    .line 70
    .end local v4    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_61
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/NullPointerException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v2, Lcom/google/appinventor/components/runtime/PointChartView;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/PointChartView;->getForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/PointChartDataModel;->view:Lcom/google/appinventor/components/runtime/ChartView;

    check-cast v4, Lcom/google/appinventor/components/runtime/PointChartView;

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/PointChartView;->chartComponent:Lcom/google/appinventor/components/runtime/Chart;

    const/16 v5, 0x1006

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v0, v5, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 79
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_77
    nop

    .line 81
    :goto_78
    const/4 v0, 0x0

    return-object v0
.end method

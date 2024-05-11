.class public final Lcom/google/appinventor/components/runtime/ChartData2D;
.super Lcom/google/appinventor/components/runtime/ChartDataBase;
.source "ChartData2D.java"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CHARTS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that holds (x, y)-coordinate based data"
    iconName = "images/web.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mresetHighlightAtIndex(Lcom/google/appinventor/components/runtime/ChartData2D;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartData2D;->resetHighlightAtIndex(I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Chart;)V
    .registers 2
    .param p1, "chartContainer"    # Lcom/google/appinventor/components/runtime/Chart;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ChartDataBase;-><init>(Lcom/google/appinventor/components/runtime/Chart;)V

    .line 49
    return-void
.end method

.method private resetHighlightAtIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/LineDataSet;->getCircleColors()Ljava/util/List;

    move-result-object v0

    .line 276
    .local v0, "defaultColors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 277
    return-void
.end method


# virtual methods
.method public AddEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .local v0, "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartData2D$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ChartData2D$1;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    .line 87
    :try_start_11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    .line 92
    :cond_1a
    goto :goto_1c

    .line 90
    :catch_1b
    move-exception v1

    .line 93
    .end local v0    # "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_1c
    :try_start_1c
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public DoesEntryExist(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Checks whether an (x, y) entry exists in the Coordinate Data.Returns true if the Entry exists, and false otherwise."
    .end annotation

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/ChartData2D$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/ChartData2D$3;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_15} :catch_27
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_15} :catch_16

    .line 163
    return v0

    .line 173
    :catch_16
    move-exception v0

    .line 174
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 171
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_27
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Ljava/lang/InterruptedException;
    nop

    .line 178
    :goto_38
    const/4 v0, 0x0

    return v0
.end method

.method public DrawLineOfBestFit(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 10
    .param p1, "xList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "yList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draws the corresponding line of best fit on the graph"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 190
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/lists/LList;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ChartData2D;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 191
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ChartData2D;->castToDouble(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Regression;->computeLineOfBestFit(Ljava/util/List;Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v0

    .line 192
    const-string v1, "predictions"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    .local v0, "predictions":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v1, "predictionPairs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<*>;>;"
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 195
    .local v2, "xValues":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_4d

    .line 196
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 198
    .end local v3    # "i":I
    :cond_4d
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    .line 199
    .local v3, "predictionPairsList":Lcom/google/appinventor/components/runtime/util/YailList;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4, v3}, Lcom/google/appinventor/components/runtime/ChartDataModel;->importFromList(Ljava/util/List;)V

    .line 200
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    instance-of v4, v4, Lcom/github/mikephil/charting/data/LineDataSet;

    if-eqz v4, :cond_7e

    .line 201
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 202
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v4, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 204
    :cond_7e
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V

    .line 205
    return-void
.end method

.method public HighlightDataPoints(Lcom/google/appinventor/components/runtime/util/YailList;I)V
    .registers 18
    .param p1, "dataPoints"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p2, "color"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Highlights data points of choice on the Chart in the color of choice. This block expects a list of data points, each data point is an index, value pair"
    .end annotation

    .line 227
    move-object v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/LList;

    .line 228
    .local v1, "dataPointsList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_127

    .line 229
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v2, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v2

    .line 230
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 231
    .local v3, "anomalyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;>;"
    const/4 v4, 0x0

    .line 232
    .local v4, "i":I
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v5, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/Entry;

    .line 233
    .local v6, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 234
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-instance v8, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager-IA;)V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_54
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->xValues:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getX()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "i":I
    .local v8, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/Entry;
    move v4, v8

    goto :goto_27

    .line 239
    .end local v8    # "i":I
    .restart local v4    # "i":I
    :cond_8d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 240
    .local v5, "highlights":[I
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v6, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;->getColor()I

    move-result v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 242
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_115

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 243
    .local v7, "dataPoint":Ljava/lang/Object;
    instance-of v8, v7, Lcom/google/appinventor/components/runtime/util/YailList;

    if-nez v8, :cond_b5

    .line 244
    goto :goto_a6

    .line 246
    :cond_b5
    move-object v8, v7

    check-cast v8, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 247
    .local v8, "y":Ljava/lang/Number;
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;

    .line 248
    .local v10, "anomalyManager":Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
    if-nez v10, :cond_d0

    .line 249
    goto :goto_a6

    .line 251
    :cond_d0
    move-object v11, v7

    check-cast v11, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    .line 252
    .local v11, "x":Ljava/lang/Number;
    iget-object v12, v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->xValues:Ljava/util/Set;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_fb

    iget-object v12, v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    .line 253
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v13

    sub-int/2addr v13, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v12, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_114

    .line 254
    :cond_fb
    iget-object v9, v10, Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;->indexes:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_101
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_114

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 255
    .local v12, "index":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput p2, v5, v13

    .line 256
    .end local v12    # "index":Ljava/lang/Integer;
    goto :goto_101

    .line 258
    .end local v7    # "dataPoint":Ljava/lang/Object;
    .end local v8    # "y":Ljava/lang/Number;
    .end local v10    # "anomalyManager":Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;
    .end local v11    # "x":Ljava/lang/Number;
    :cond_114
    goto :goto_a6

    .line 259
    :cond_115
    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v6, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getDataset()Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-virtual {v6, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColors([I)V

    .line 260
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ChartData2D;->onDataChange()V

    .line 261
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "anomalyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Double;Lcom/google/appinventor/components/runtime/ChartData2D$AnomalyManager;>;"
    .end local v4    # "i":I
    .end local v5    # "highlights":[I
    nop

    .line 264
    return-void

    .line 262
    :cond_127
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Anomalies list is Empty. Nothing to highlight!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_130

    :goto_12f
    throw v2

    :goto_130
    goto :goto_12f
.end method

.method public RemoveEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 111
    .local v0, "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->threadRunner:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/appinventor/components/runtime/ChartData2D$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ChartData2D$2;-><init>(Lcom/google/appinventor/components/runtime/ChartData2D;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    .line 139
    :try_start_11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    .line 144
    :cond_1a
    goto :goto_1c

    .line 142
    :catch_1b
    move-exception v1

    .line 145
    .end local v0    # "isDone":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_1c
    :try_start_1c
    monitor-exit p0

    .line 146
    return-void

    .line 145
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getYValues()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "yValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v1, Lcom/google/appinventor/components/runtime/ChartDataModel;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/ChartDataModel;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/data/Entry;

    .line 269
    .local v2, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v2    # "entry":Lcom/github/mikephil/charting/data/Entry;
    goto :goto_11

    .line 271
    :cond_2a
    return-object v0
.end method

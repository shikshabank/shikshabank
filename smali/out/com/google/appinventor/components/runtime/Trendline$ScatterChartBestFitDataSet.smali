.class Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;
.super Lcom/github/mikephil/charting/data/ScatterDataSet;
.source "Trendline.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/HasTrendline;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Trendline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScatterChartBestFitDataSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/ScatterDataSet;",
        "Lcom/google/appinventor/components/runtime/util/HasTrendline<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Trendline;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Trendline;)V
    .registers 3

    .line 603
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    .line 604
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Best Fit"

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/data/ScatterDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 605
    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 2

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$mgetColor(Lcom/google/appinventor/components/runtime/Trendline;)I

    move-result v0

    return v0
.end method

.method public getDashPathEffect()Landroid/graphics/DashPathEffect;
    .registers 2

    .line 620
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$mgetDashPathEffect(Lcom/google/appinventor/components/runtime/Trendline;)Landroid/graphics/DashPathEffect;

    move-result-object v0

    return-object v0
.end method

.method public getLineWidth()F
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetstrokeWidth(Lcom/google/appinventor/components/runtime/Trendline;)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/Chart;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Chart;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v1

    mul-float v0, v0, v1

    return v0
.end method

.method public getPoints(FFI)[F
    .registers 5
    .param p1, "xMin"    # F
    .param p2, "xMax"    # F
    .param p3, "viewWidth"    # I

    .line 610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$mgetPoints(Lcom/google/appinventor/components/runtime/Trendline;FFI)[F

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetvisible(Lcom/google/appinventor/components/runtime/Trendline;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 635
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetchartData(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/ChartData2D;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Trendline$ScatterChartBestFitDataSet;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetchartData(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/ChartData2D;

    move-result-object v0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartData2D;->dataModel:Lcom/google/appinventor/components/runtime/DataModel;

    check-cast v0, Lcom/google/appinventor/components/runtime/ChartDataModel;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartDataModel;->dataset:Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 638
    :cond_19
    invoke-super {p0}, Lcom/github/mikephil/charting/data/ScatterDataSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

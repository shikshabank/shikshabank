.class Lcom/google/appinventor/components/runtime/Trendline$LineChartBestFitModel;
.super Lcom/google/appinventor/components/runtime/LineChartDataModel;
.source "Trendline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Trendline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineChartBestFitModel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Trendline;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Trendline;)V
    .registers 5

    .line 694
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Trendline$LineChartBestFitModel;->this$0:Lcom/google/appinventor/components/runtime/Trendline;

    .line 695
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/Chart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ChartView;->data:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Trendline;->-$$Nest$fgetcontainer(Lcom/google/appinventor/components/runtime/Trendline;)Lcom/google/appinventor/components/runtime/Chart;

    move-result-object v1

    .line 696
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Chart;->getChartView()Lcom/google/appinventor/components/runtime/ChartView;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/LineChartView;

    new-instance v2, Lcom/google/appinventor/components/runtime/Trendline$LineChartBestFitDataSet;

    invoke-direct {v2, p1}, Lcom/google/appinventor/components/runtime/Trendline$LineChartBestFitDataSet;-><init>(Lcom/google/appinventor/components/runtime/Trendline;)V

    .line 695
    invoke-direct {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/LineChartDataModel;-><init>(Lcom/github/mikephil/charting/data/LineData;Lcom/google/appinventor/components/runtime/LineChartView;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 698
    return-void
.end method

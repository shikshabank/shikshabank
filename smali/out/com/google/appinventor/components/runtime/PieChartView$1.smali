.class Lcom/google/appinventor/components/runtime/PieChartView$1;
.super Ljava/lang/Object;
.source "PieChartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/PieChartView;->addLegendEntry(Lcom/github/mikephil/charting/components/LegendEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/PieChartView;

.field final synthetic val$entry:Lcom/github/mikephil/charting/components/LegendEntry;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/PieChartView;Lcom/github/mikephil/charting/components/LegendEntry;)V
    .registers 3
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/PieChartView;

    .line 378
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PieChartView$1;->this$0:Lcom/google/appinventor/components/runtime/PieChartView;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/PieChartView$1;->val$entry:Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PieChartView$1;->this$0:Lcom/google/appinventor/components/runtime/PieChartView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PieChartView;->-$$Nest$fgetlegendEntries(Lcom/google/appinventor/components/runtime/PieChartView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PieChartView$1;->val$entry:Lcom/github/mikephil/charting/components/LegendEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    return-void
.end method

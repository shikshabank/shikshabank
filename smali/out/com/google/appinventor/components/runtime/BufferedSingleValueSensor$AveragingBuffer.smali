.class Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;
.super Ljava/lang/Object;
.source "BufferedSingleValueSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AveragingBuffer"
.end annotation


# instance fields
.field private data:[Ljava/lang/Float;

.field private next:I

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;


# direct methods
.method static bridge synthetic -$$Nest$mgetAverage(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;)F
    .registers 1

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->getAverage()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minsert(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;Ljava/lang/Float;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->insert(Ljava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V
    .registers 3
    .param p2, "size"    # I

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->this$0:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array p1, p2, [Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    .line 48
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;ILcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;I)V

    return-void
.end method

.method private getAverage()F
    .registers 7

    .line 59
    const-wide/16 v0, 0x0

    .line 60
    .local v0, "sum":D
    const/4 v2, 0x0

    .line 62
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    array-length v5, v4

    if-ge v3, v5, :cond_1b

    .line 63
    aget-object v4, v4, v3

    if-eqz v4, :cond_18

    .line 64
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 62
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 69
    .end local v3    # "i":I
    :cond_1b
    if-nez v2, :cond_1f

    move-wide v3, v0

    goto :goto_25

    :cond_1f
    int-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v0, v3

    :goto_25
    double-to-float v3, v3

    return v3
.end method

.method private insert(Ljava/lang/Float;)V
    .registers 5
    .param p1, "datum"    # Ljava/lang/Float;

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->data:[Ljava/lang/Float;

    iget v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    aput-object p1, v0, v1

    .line 53
    array-length v0, v0

    if-ne v2, v0, :cond_10

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$AveragingBuffer;->next:I

    .line 56
    :cond_10
    return-void
.end method

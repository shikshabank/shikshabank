.class public final Lcom/google/appinventor/components/runtime/util/YailNumberToString;
.super Ljava/lang/Object;
.source "YailNumberToString.java"


# static fields
.field private static final BIGBOUND:D = 1000000.0

.field static final LOG_TAG:Ljava/lang/String; = "YailNumberToString"

.field private static final SMALLBOUND:D = 1.0E-6

.field private static final decPattern:Ljava/lang/String; = "#####0.0####"

.field static decimalFormat:Ljava/text/DecimalFormat; = null

.field static locale:Ljava/util/Locale; = null

.field static sciFormat:Ljava/text/DecimalFormat; = null

.field private static final sciPattern:Ljava/lang/String; = "0.####E0"

.field static symbols:Ljava/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->locale:Ljava/util/Locale;

    .line 44
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->symbols:Ljava/text/DecimalFormatSymbols;

    .line 46
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->symbols:Ljava/text/DecimalFormatSymbols;

    const-string v2, "#####0.0####"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->decimalFormat:Ljava/text/DecimalFormat;

    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->symbols:Ljava/text/DecimalFormatSymbols;

    const-string v2, "0.####E0"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->sciFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(D)Ljava/lang/String;
    .registers 7
    .param p0, "number"    # D

    .line 60
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 61
    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-gez v2, :cond_f

    .line 62
    const-string v0, "-infinity"

    return-object v0

    .line 64
    :cond_f
    const-string v0, "+infinity"

    return-object v0

    .line 68
    :cond_12
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_20

    .line 69
    double-to-long v0, p0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_20
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 72
    .local v0, "mag":D
    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3d

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3d

    .line 73
    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 75
    :cond_3d
    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailNumberToString;->sciFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v2, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

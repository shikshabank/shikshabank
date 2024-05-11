.class public final Lcom/google/appinventor/components/runtime/util/CsvUtil;
.super Ljava/lang/Object;
.source "CsvUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static fromCsvRow(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 5
    .param p0, "csvString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v0, "csvParser":Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 42
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    .line 43
    .local v1, "row":Lcom/google/appinventor/components/runtime/util/YailList;
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->hasNext()Z

    move-result v2

    if-nez v2, :cond_22

    .line 47
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->throwAnyProblem()V

    .line 48
    return-object v1

    .line 45
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CSV text has multiple rows. Expected just one row."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    .end local v1    # "row":Lcom/google/appinventor/components/runtime/util/YailList;
    :cond_2a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CSV text cannot be parsed as a row."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromCsvTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 4
    .param p0, "csvString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v0, "csvParser":Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, "csvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/appinventor/components/runtime/util/YailList;>;"
    :goto_f
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 33
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->next()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 35
    :cond_21
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil$CsvParser;->throwAnyProblem()V

    .line 36
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    return-object v2
.end method

.method private static makeCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V
    .registers 10
    .param p0, "row"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .param p1, "csvStringBuilder"    # Ljava/lang/StringBuilder;

    .line 76
    const-string v0, ""

    .line 77
    .local v0, "fieldDelim":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_2c

    aget-object v4, v1, v3

    .line 78
    .local v4, "fieldObj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "field":Ljava/lang/String;
    const-string v6, "\""

    const-string v7, "\"\""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, ","

    .line 77
    .end local v4    # "fieldObj":Ljava/lang/Object;
    .end local v5    # "field":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 83
    :cond_2c
    return-void
.end method

.method public static toCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 3
    .param p0, "csvRow"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "csvStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->makeCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toCsvTable(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/lang/String;
    .registers 7
    .param p0, "csvList"    # Lcom/google/appinventor/components/runtime/util/YailList;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "csvStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    aget-object v4, v1, v3

    .line 66
    .local v4, "rowObj":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v5, v0}, Lcom/google/appinventor/components/runtime/util/CsvUtil;->makeCsvRow(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/StringBuilder;)V

    .line 70
    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .end local v4    # "rowObj":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 72
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

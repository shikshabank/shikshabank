.class Lcom/google/appinventor/components/runtime/Spreadsheet$10;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet;->AddColumn(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

.field final synthetic val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

.field final synthetic val$sheetName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)V
    .registers 4
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/Spreadsheet;

    .line 1177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$sheetName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetSheetsService(Lcom/google/appinventor/components/runtime/Spreadsheet;)Lcom/google/api/services/sheets/v4/Sheets;

    move-result-object v0

    .line 1184
    .local v0, "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$sheetName:Ljava/lang/String;

    .line 1185
    invoke-virtual {v1, v2, v3}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Get;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1187
    .local v1, "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    invoke-virtual {v1}, Lcom/google/api/services/sheets/v4/model/ValueRange;->getValues()Ljava/util/List;

    move-result-object v2

    .line 1189
    .local v2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    if-eqz v2, :cond_138

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto/16 :goto_138

    .line 1195
    :cond_2e
    const/4 v3, 0x0

    .line 1196
    .local v3, "maxCol":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1197
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v3, v6

    .line 1198
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_33

    .line 1199
    :cond_49
    add-int/lit8 v4, v3, 0x1

    .line 1200
    .local v4, "nextCol":I
    move v5, v4

    .line 1202
    .local v5, "addedColumn":I
    const/16 v6, 0x1a

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "A"

    aput-object v8, v6, v7

    const-string v7, "B"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v8, "C"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "D"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "E"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "F"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "G"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "H"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "I"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "J"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "K"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "L"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "M"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "N"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "O"

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "P"

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "Q"

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "R"

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "S"

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "T"

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "U"

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string v8, "V"

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string v8, "W"

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string v8, "X"

    aput-object v8, v6, v7

    const/16 v7, 0x18

    const-string v8, "Y"

    aput-object v8, v6, v7

    const/16 v7, 0x19

    const-string v8, "Z"

    aput-object v8, v6, v7

    .line 1205
    .local v6, "alphabet":[Ljava/lang/String;
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v7, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$mgetColString(Lcom/google/appinventor/components/runtime/Spreadsheet;I)Ljava/lang/String;

    move-result-object v7

    .line 1206
    .local v7, "colReference":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$sheetName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1208
    .local v8, "rangeRef":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/api/services/sheets/v4/Sheets;->spreadsheets()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets;->values()Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;

    move-result-object v9

    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetspreadsheetID(Lcom/google/appinventor/components/runtime/Spreadsheet;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->val$body:Lcom/google/api/services/sheets/v4/model/ValueRange;

    .line 1209
    invoke-virtual {v9, v10, v8, v11}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values;->update(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/sheets/v4/model/ValueRange;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v9

    const-string v10, "USER_ENTERED"

    .line 1210
    invoke-virtual {v9, v10}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->setValueInputOption(Ljava/lang/String;)Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;

    move-result-object v9

    .line 1211
    invoke-virtual {v9}, Lcom/google/api/services/sheets/v4/Sheets$Spreadsheets$Values$Update;->execute()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;

    .line 1213
    .local v9, "response":Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;
    iget-object v10, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-static {v10}, Lcom/google/appinventor/components/runtime/Spreadsheet;->-$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Spreadsheet;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/google/appinventor/components/runtime/Spreadsheet$10$1;

    invoke-direct {v11, p0, v5}, Lcom/google/appinventor/components/runtime/Spreadsheet$10$1;-><init>(Lcom/google/appinventor/components/runtime/Spreadsheet$10;I)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v1    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v3    # "maxCol":I
    .end local v4    # "nextCol":I
    .end local v5    # "addedColumn":I
    .end local v6    # "alphabet":[Ljava/lang/String;
    .end local v7    # "colReference":Ljava/lang/String;
    .end local v8    # "rangeRef":Ljava/lang/String;
    .end local v9    # "response":Lcom/google/api/services/sheets/v4/model/UpdateValuesResponse;
    goto :goto_181

    .line 1190
    .restart local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .restart local v1    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .restart local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :cond_138
    :goto_138
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    const-string v4, "AddColumn: No data found"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13f} :catch_161
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_13f} :catch_140

    .line 1191
    return-void

    .line 1222
    .end local v0    # "sheetsService":Lcom/google/api/services/sheets/v4/Sheets;
    .end local v1    # "readResult":Lcom/google/api/services/sheets/v4/model/ValueRange;
    .end local v2    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/Object;>;>;"
    :catch_140
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 1224
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddColumn GeneralSecurityException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    goto :goto_182

    .line 1219
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_161
    move-exception v0

    .line 1220
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1221
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$10;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AddColumn IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Spreadsheet;->ErrorOccurred(Ljava/lang/String;)V

    .line 1225
    .end local v0    # "e":Ljava/io/IOException;
    :goto_181
    nop

    .line 1226
    :goto_182
    return-void
.end method

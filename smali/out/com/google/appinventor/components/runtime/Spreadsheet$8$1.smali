.class Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$8;

.field final synthetic val$col:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$8;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$8;

    .line 1019
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$8;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;->val$col:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1022
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$8;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$8;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$8$1;->val$col:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Spreadsheet;->GotColumnData(Ljava/util/List;)V

    .line 1023
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;
.super Ljava/lang/Object;
.source "Spreadsheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spreadsheet$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$7;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spreadsheet$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/google/appinventor/components/runtime/Spreadsheet$7;

    .line 921
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 924
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spreadsheet$7$1;->this$1:Lcom/google/appinventor/components/runtime/Spreadsheet$7;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Spreadsheet$7;->this$0:Lcom/google/appinventor/components/runtime/Spreadsheet;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Spreadsheet;->FinishedRemoveRow()V

    .line 925
    return-void
.end method

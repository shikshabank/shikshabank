.class Lcom/google/appinventor/components/runtime/ListPickerActivity$1;
.super Ljava/lang/Object;
.source "ListPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListPickerActivity;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListPickerActivity;

    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;->this$0:Lcom/google/appinventor/components/runtime/ListPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "arg0"    # Landroid/text/Editable;

    .line 126
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 121
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListPickerActivity$1;->this$0:Lcom/google/appinventor/components/runtime/ListPickerActivity;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/ListPickerActivity;->adapter:Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ListPickerActivity$MyAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

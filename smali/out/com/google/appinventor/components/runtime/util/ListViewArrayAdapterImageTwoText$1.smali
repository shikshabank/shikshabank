.class Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;
.super Landroid/widget/Filter;
.source "ListViewArrayAdapterImageTwoText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;-><init>(IIIIIILcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    .line 46
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 8
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "filterQuery":Ljava/lang/String;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 52
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto :goto_72

    .line 56
    :cond_16
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 57
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 58
    .local v3, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v4, "Text1"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Text2"

    invoke-virtual {v3, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 59
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v3    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_5c
    goto :goto_29

    .line 63
    :cond_5d
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 64
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_86

    .line 53
    :cond_72
    :goto_72
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 54
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetcurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 66
    :goto_86
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 72
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetfilterCurrentItems(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 73
    .local v1, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText$1;->this$0:Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;->-$$Nest$fgetitemAdapter(Lcom/google/appinventor/components/runtime/util/ListViewArrayAdapterImageTwoText;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 74
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    goto :goto_13

    .line 75
    :cond_29
    return-void
.end method

.class Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;
.super Landroid/widget/Filter;
.source "ListAdapterWithRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 12
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 68
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "filterQuery":Ljava/lang/String;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 70
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_70

    .line 75
    :cond_1b
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 76
    .local v4, "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v5, "Text2"

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 77
    .local v5, "o":Ljava/lang/Object;
    const-string v6, "Text1"

    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "filterString":Ljava/lang/String;
    if-eqz v5, :cond_62

    .line 79
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 81
    :cond_62
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 82
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    .end local v4    # "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "filterString":Ljava/lang/String;
    :cond_6f
    goto :goto_25

    .line 73
    :cond_70
    :goto_70
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 86
    :cond_7c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 87
    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 88
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 7
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "filterResults"    # Landroid/widget/Filter$FilterResults;

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fputfilterItems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)V

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9c

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetfilterItems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_69

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetfilterItems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    .line 100
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_98

    .line 101
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_98

    .line 105
    :cond_69
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v0

    .line 106
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_98

    .line 107
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v1

    aget-object v1, v1, v0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;->this$0:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->-$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    :cond_98
    :goto_98
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .line 112
    .end local v0    # "i":I
    :cond_9c
    return-void
.end method

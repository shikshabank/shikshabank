.class public Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapterWithRecyclerView.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;,
        Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ListAdapterRecyclerView"


# instance fields
.field private backgroundColor:I

.field private clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field protected final filter:Landroid/widget/Filter;

.field private filterItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private idCard:I

.field private idFirst:I

.field private idImages:I

.field private idSecond:I

.field private imageHeight:I

.field private imageWidth:I

.field public isSelected:Z

.field public isVisible:[Ljava/lang/Boolean;

.field private itemViews:[Landroidx/cardview/widget/CardView;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private layoutType:I

.field private multiSelect:Z

.field public selection:[Ljava/lang/Boolean;

.field private selectionColor:I

.field private textDetailColor:I

.field private textDetailFont:Ljava/lang/String;

.field private textDetailSize:F

.field private textMainColor:I

.field private textMainFont:Ljava/lang/String;

.field private textMainSize:F


# direct methods
.method static bridge synthetic -$$Nest$fgetclickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilterItems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetidCard(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetidFirst(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetidImages(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetidSecond(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)I
    .registers 1

    iget p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetitemViews(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)[Landroidx/cardview/widget/CardView;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmultiSelect(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfilterItems(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filterItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;II)V
    .registers 12
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p3, "textMainColor"    # I
    .param p4, "textMainSize"    # F
    .param p5, "textMainFont"    # Ljava/lang/String;
    .param p6, "backgroundColor"    # I
    .param p7, "selectionColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IF",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 146
    .local p2, "stringItems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 118
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 119
    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 120
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 148
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 149
    iput p4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 150
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 151
    iput-object p5, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:Ljava/lang/String;

    .line 152
    iput p3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 153
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 154
    const-string v1, "0"

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:Ljava/lang/String;

    .line 155
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 156
    iput p6, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 157
    iput p7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 158
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 159
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 160
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 161
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 162
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 163
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 165
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 170
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, "itemString":Ljava/lang/String;
    new-instance v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 172
    .local v2, "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v3, "Text1"

    invoke-virtual {v2, v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v1    # "itemString":Ljava/lang/String;
    .end local v2    # "itemDict":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    goto :goto_61

    .line 175
    :cond_7d
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFLjava/lang/String;Ljava/lang/String;IIIIIZ)V
    .registers 31
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p3, "textMainColor"    # I
    .param p4, "textDetailColor"    # I
    .param p5, "textMainSize"    # F
    .param p6, "textDetailSize"    # F
    .param p7, "textMainFont"    # Ljava/lang/String;
    .param p8, "textDetailFont"    # Ljava/lang/String;
    .param p9, "layoutType"    # I
    .param p10, "backgroundColor"    # I
    .param p11, "selectionColor"    # I
    .param p12, "imageWidth"    # I
    .param p13, "imageHeight"    # I
    .param p14, "multiSelect"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/ComponentContainer;",
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;IIFF",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIIIZ)V"
        }
    .end annotation

    .line 122
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/appinventor/components/runtime/util/YailDictionary;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$1;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;)V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    .line 115
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    .line 117
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 118
    iput v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 119
    iput v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 120
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 124
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    .line 125
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 126
    move/from16 v3, p5

    iput v3, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    .line 127
    move/from16 v4, p3

    iput v4, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    .line 128
    move/from16 v5, p4

    iput v5, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    .line 129
    move/from16 v6, p6

    iput v6, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    .line 130
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:Ljava/lang/String;

    .line 131
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:Ljava/lang/String;

    .line 132
    move/from16 v9, p9

    iput v9, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    .line 133
    move/from16 v10, p10

    iput v10, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    .line 134
    move/from16 v11, p11

    iput v11, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    .line 135
    move/from16 v12, p13

    iput v12, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    .line 136
    move/from16 v13, p12

    iput v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    .line 137
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Landroidx/cardview/widget/CardView;

    iput-object v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    .line 138
    move/from16 v14, p14

    iput-boolean v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->multiSelect:Z

    .line 140
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Ljava/lang/Boolean;

    iput-object v15, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    .line 141
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v15, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    .line 143
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v15}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    return-void
.end method


# virtual methods
.method public changeSelections(I)V
    .registers 4
    .param p1, "pos"    # I

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_2d

    .line 208
    :cond_24
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 210
    :goto_2d
    return-void
.end method

.method public clearSelections()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v2, v1

    if-ge v0, v2, :cond_17

    .line 180
    aget-object v1, v1, v0

    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 182
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->filter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v0, v0

    return v0
.end method

.method public getSelectedItems()Ljava/lang/String;
    .registers 6

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 419
    .local v1, "sep":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    array-length v4, v3

    if-ge v2, v4, :cond_32

    .line 420
    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 421
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 422
    .local v3, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v4, "Text1"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, ","

    .line 419
    .end local v3    # "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 427
    .end local v2    # "i":I
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public hasVisibleItems()Z
    .registers 3

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 40
    check-cast p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;I)V
    .registers 14
    .param p1, "holder"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .param p2, "position"    # I

    .line 305
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$2;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;)V

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 313
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "first":Ljava/lang/String;
    const-string v2, ""

    .line 315
    .local v2, "second":Ljava/lang/String;
    const-string v3, "Text2"

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 316
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    :cond_2e
    iget v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-nez v3, :cond_39

    .line 319
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10a

    .line 320
    :cond_39
    const/4 v4, 0x1

    if-ne v3, v4, :cond_48

    .line 321
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10a

    .line 323
    :cond_48
    const/4 v4, 0x2

    if-ne v3, v4, :cond_57

    .line 324
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10a

    .line 326
    :cond_57
    const/4 v4, 0x3

    const-string v5, ": "

    const-string v6, "onBindViewHolder Unable to load image "

    const-string v7, "Image"

    const-string v8, "ListAdapterRecyclerView"

    if-ne v3, v4, :cond_a7

    .line 327
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "imageName":Ljava/lang/String;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 330
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_6f
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_79} :catch_7b

    move-object v4, v5

    .line 333
    goto :goto_9c

    .line 331
    :catch_7b
    move-exception v7

    .line 332
    .local v7, "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v7    # "ioe":Ljava/io/IOException;
    :goto_9c
    iget-object v5, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v5, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 336
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_10a

    :cond_a7
    const/4 v4, 0x4

    if-ne v3, v4, :cond_f4

    .line 337
    invoke-virtual {v0, v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .restart local v3    # "imageName":Ljava/lang/String;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    .line 340
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_b7
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v7}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_c1} :catch_c3

    move-object v4, v5

    .line 343
    goto :goto_e4

    .line 341
    :catch_c3
    move-exception v7

    .line 342
    .restart local v7    # "ioe":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v7    # "ioe":Ljava/io/IOException;
    :goto_e4
    iget-object v5, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewFirst:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v5, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->textViewSecond:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v5, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->imageVieww:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 347
    .end local v3    # "imageName":Ljava/lang/String;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_10a

    .line 348
    :cond_f4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBindViewHolder Layout not recognized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_10a
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 351
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    goto :goto_123

    .line 353
    :cond_11c
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    iget v4, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 355
    :goto_123
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isVisible:[Ljava/lang/Boolean;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_13e

    .line 357
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 358
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_14c

    .line 360
    :cond_13e
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3, v4}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    .line 361
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {v3}, Landroidx/cardview/widget/CardView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 363
    :goto_14c
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    iget-object v4, p1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    aput-object v4, v3, p2

    .line 364
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;
    .registers 19
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 218
    move-object/from16 v0, p0

    new-instance v1, Landroidx/cardview/widget/CardView;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, "cardView":Landroidx/cardview/widget/CardView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setUseCompatPadding(Z)V

    .line 220
    const/16 v3, 0xa

    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/cardview/widget/CardView;->setContentPadding(IIII)V

    .line 221
    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setPreventCornerOverlap(Z)V

    .line 222
    const v4, 0x40066666    # 2.1f

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setCardElevation(F)V

    .line 223
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 224
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setMaxCardElevation(F)V

    .line 225
    iget v4, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 226
    iget-boolean v4, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->isSelected:Z

    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

    .line 227
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v4

    iput v4, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idCard:I

    .line 228
    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setId(I)V

    .line 230
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v4, "params1":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v1, v8}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 236
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v9}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 237
    .local v8, "textViewFirst":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v9

    iput v9, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idFirst:I

    .line 238
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setId(I)V

    .line 239
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v9, "layoutParams1":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget v10, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainSize:F

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 243
    iget v10, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainColor:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 244
    iget-object v10, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v10}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v10

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textMainFont:Ljava/lang/String;

    invoke-static {v10, v8, v11, v7, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 245
    new-instance v10, Landroid/widget/LinearLayout;

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v11}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v10, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v5, v11

    .line 247
    .local v5, "layoutParamslinear1":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 250
    iget v11, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-eq v11, v13, :cond_9d

    if-ne v11, v12, :cond_c1

    .line 252
    :cond_9d
    new-instance v11, Landroid/widget/ImageView;

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v14}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 253
    .local v11, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v14

    iput v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idImages:I

    .line 254
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setId(I)V

    .line 255
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageWidth:I

    iget v3, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->imageHeight:I

    invoke-direct {v14, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v14

    .line 256
    .local v3, "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    .end local v3    # "layoutParamsImage":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "imageView":Landroid/widget/ImageView;
    :cond_c1
    iget v3, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-eqz v3, :cond_143

    if-ne v3, v12, :cond_c9

    goto/16 :goto_143

    .line 265
    :cond_c9
    new-instance v3, Landroid/widget/TextView;

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v11}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 266
    .local v3, "textViewSecond":Landroid/widget/TextView;
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result v11

    iput v11, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->idSecond:I

    .line 267
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setId(I)V

    .line 268
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    .local v11, "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailSize:F

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 270
    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v12}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v12

    iget-object v14, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailFont:Ljava/lang/String;

    invoke-static {v12, v3, v14, v7, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 271
    iget v12, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->textDetailColor:I

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    iget v12, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->layoutType:I

    if-eq v12, v2, :cond_119

    if-ne v12, v13, :cond_fe

    goto :goto_119

    .line 285
    :cond_fe
    const/4 v6, 0x2

    if-ne v12, v6, :cond_142

    .line 287
    const/16 v6, 0x32

    const/16 v12, 0xa

    invoke-virtual {v11, v6, v12, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 290
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 292
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 293
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_146

    .line 273
    :cond_119
    :goto_119
    const/16 v12, 0xa

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 274
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v12, Landroid/widget/LinearLayout;

    iget-object v13, v0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v13}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .local v12, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v14, 0x40000000    # 2.0f

    invoke-direct {v13, v7, v6, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v6, v13

    .line 278
    .local v6, "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 281
    invoke-virtual {v12, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 285
    .end local v6    # "layoutParamslinear2":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "linearLayout2":Landroid/widget/LinearLayout;
    :cond_142
    goto :goto_146

    .line 262
    .end local v3    # "textViewSecond":Landroid/widget/TextView;
    .end local v11    # "layoutParams2":Landroid/widget/LinearLayout$LayoutParams;
    :cond_143
    :goto_143
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    :goto_146
    invoke-virtual {v1, v4}, Landroidx/cardview/widget/CardView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-virtual {v1, v10}, Landroidx/cardview/widget/CardView;->addView(Landroid/view/View;)V

    .line 299
    new-instance v2, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;

    invoke-direct {v2, v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$RvViewHolder;-><init>(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;Landroid/view/View;)V

    return-object v2
.end method

.method public setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V
    .registers 2
    .param p1, "clickListener"    # Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .line 409
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->clickListener:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;

    .line 410
    return-void
.end method

.method public toggleSelection(I)V
    .registers 5
    .param p1, "pos"    # I

    .line 187
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    array-length v2, v1

    if-ge v0, v2, :cond_19

    .line 190
    aget-object v1, v1, v0

    if-eqz v1, :cond_16

    .line 191
    iget v2, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 188
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 194
    .end local v0    # "i":I
    :cond_19
    if-ltz p1, :cond_2f

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selection:[Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, p1

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->itemViews:[Landroidx/cardview/widget/CardView;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2f

    .line 197
    iget v1, p0, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->selectionColor:I

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setBackgroundColor(I)V

    .line 200
    :cond_2f
    return-void
.end method

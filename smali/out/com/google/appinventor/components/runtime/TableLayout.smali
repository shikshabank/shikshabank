.class public Lcom/google/appinventor/components/runtime/TableLayout;
.super Ljava/lang/Object;
.source "TableLayout.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final layoutManager:Landroid/widget/TableLayout;

.field private numColumns:I

.field private numRows:I


# direct methods
.method static bridge synthetic -$$Nest$maddChild(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numColumns"    # I
    .param p3, "numRows"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/widget/TableLayout;

    invoke-direct {v0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    .line 41
    iput p2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .line 42
    iput p3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_16
    if-ge v0, p3, :cond_3b

    .line 46
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "tableRow":Landroid/widget/TableRow;
    const/4 v2, 0x0

    .local v2, "col":I
    :goto_1e
    if-ge v2, p2, :cond_2e

    .line 48
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 50
    .end local v2    # "col":I
    :cond_2e
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v3, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v3}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v2, v1, v0, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .end local v1    # "tableRow":Landroid/widget/TableRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 52
    .end local v0    # "row":I
    :cond_3b
    return-void
.end method

.method private addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 7
    .param p1, "child"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 131
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Row()I

    move-result v0

    .line 132
    .local v0, "row":I
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Column()I

    move-result v1

    .line 133
    .local v1, "col":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_61

    if-ne v1, v2, :cond_e

    goto :goto_61

    .line 139
    :cond_e
    const-string v2, "TableLayout"

    if-ltz v0, :cond_4a

    iget v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v0, v3, :cond_4a

    .line 140
    if-ltz v1, :cond_33

    iget v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v1, v3, :cond_33

    .line 141
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v2, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 142
    .local v2, "tableRow":Landroid/widget/TableRow;
    invoke-virtual {v2, v1}, Landroid/widget/TableRow;->removeViewAt(I)V

    .line 143
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v3

    .line 144
    .local v3, "cellView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    .end local v2    # "tableRow":Landroid/widget/TableRow;
    .end local v3    # "cellView":Landroid/view/View;
    goto :goto_64

    .line 146
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child has illegal Column property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 149
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child has illegal Row property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 135
    :cond_61
    :goto_61
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 152
    :goto_64
    return-void
.end method

.method private addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 4
    .param p1, "child"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/TableLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout$1;-><init>(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method private static newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .registers 1

    .line 163
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v0}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method private static newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .registers 2

    .line 159
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private newEmptyCellView()Landroid/view/View;
    .registers 3

    .line 155
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .registers 4
    .param p1, "child"    # Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    .line 115
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 117
    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    return-object v0
.end method

.method getNumColumns()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    return v0
.end method

.method getNumRows()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    return v0
.end method

.method setNumColumns(I)V
    .registers 8
    .param p1, "newNumColumns"    # I

    .line 59
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-le p1, v0, :cond_2f

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .local v1, "row":I
    :goto_b
    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v1, v2, :cond_2c

    .line 63
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v2, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 64
    .local v2, "tableRow":Landroid/widget/TableRow;
    iget v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .local v3, "col":I
    :goto_19
    if-ge v3, p1, :cond_29

    .line 65
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 62
    .end local v2    # "tableRow":Landroid/widget/TableRow;
    .end local v3    # "col":I
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 68
    .end local v1    # "row":I
    :cond_2c
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .end local v0    # "context":Landroid/content/Context;
    goto :goto_4a

    .line 70
    :cond_2f
    if-ge p1, v0, :cond_4a

    .line 72
    const/4 v0, 0x0

    .local v0, "row":I
    :goto_32
    iget v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v0, v1, :cond_47

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 74
    .local v1, "tableRow":Landroid/widget/TableRow;
    iget v2, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    sub-int/2addr v2, p1

    invoke-virtual {v1, p1, v2}, Landroid/widget/TableRow;->removeViews(II)V

    .line 72
    .end local v1    # "tableRow":Landroid/widget/TableRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 76
    .end local v0    # "row":I
    :cond_47
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    goto :goto_4b

    .line 70
    :cond_4a
    :goto_4a
    nop

    .line 78
    :goto_4b
    return-void
.end method

.method setNumRows(I)V
    .registers 8
    .param p1, "newNumRows"    # I

    .line 85
    iget v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-le p1, v0, :cond_36

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .local v1, "row":I
    :goto_c
    if-ge v1, p1, :cond_33

    .line 89
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, v0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 90
    .local v2, "tableRow":Landroid/widget/TableRow;
    const/4 v3, 0x0

    .local v3, "col":I
    :goto_14
    iget v4, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v3, v4, :cond_26

    .line 91
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 93
    .end local v3    # "col":I
    :cond_26
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    new-instance v4, Landroid/widget/TableLayout$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v3, v2, v1, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .end local v2    # "tableRow":Landroid/widget/TableRow;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 95
    .end local v1    # "row":I
    :cond_33
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .end local v0    # "context":Landroid/content/Context;
    goto :goto_41

    .line 96
    :cond_36
    if-ge p1, v0, :cond_41

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    sub-int/2addr v0, p1

    invoke-virtual {v1, p1, v0}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 99
    iput p1, p0, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    goto :goto_42

    .line 96
    :cond_41
    :goto_41
    nop

    .line 101
    :goto_42
    return-void
.end method

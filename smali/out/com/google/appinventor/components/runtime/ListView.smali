.class public final Lcom/google/appinventor/components/runtime/ListView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "ListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>This is a visible component that displays a list of text and image elements.</p> <p>Simple lists of strings may be set using the ElementsFromString property. More complex lists of elements containing multiple strings and/or images can be created using the ListData and ListViewLayout properties. </p>"
    iconName = "images/listView.png"
    nonVisible = false
    version = 0x7
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "recyclerview.jar, cardview.jar, cardview.aar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.READ_EXTERNAL_STORAGE"
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x1000000

.field private static final DEFAULT_ENABLED:Z = false

.field private static final DEFAULT_IMAGE_WIDTH:I = 0xc8

.field private static final DEFAULT_TEXT_SIZE:I = 0x16

.field private static final LOG_TAG:Ljava/lang/String; = "ListView"


# instance fields
.field private backgroundColor:I

.field protected final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private detailTextColor:I

.field private dictItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/YailDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private fontSizeDetail:F

.field private fontSizeMain:F

.field private fontTypeDetail:Ljava/lang/String;

.field private fontTypeface:Ljava/lang/String;

.field private imageHeight:I

.field private imageWidth:I

.field private layout:I

.field private final linearLayout:Landroid/widget/LinearLayout;

.field private listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

.field private orientation:I

.field private propertyValue:Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private selection:Ljava/lang/String;

.field private selectionColor:I

.field private selectionDetailText:Ljava/lang/String;

.field private selectionIndex:I

.field private showFilter:Z

.field private stringItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textColor:I

.field private txtSearchBox:Landroid/widget/EditText;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistAdapterWithRecyclerView(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Lcom/google/appinventor/components/runtime/ListView;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 10
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 123
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    .line 128
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    .line 129
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 131
    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 133
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 135
    .local v3, "params":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v5, Landroid/widget/EditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    .line 138
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 139
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v5, -0x2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 140
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 141
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const-string v6, "Search list..."

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 142
    invoke-static {}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->isClassicMode()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 143
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 146
    :cond_6c
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->isDarkTheme()Z

    move-result v2

    const/high16 v6, -0x1000000

    if-eqz v2, :cond_82

    .line 147
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 148
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 152
    :cond_82
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    new-instance v7, Lcom/google/appinventor/components/runtime/ListView$1;

    invoke-direct {v7, p0}, Lcom/google/appinventor/components/runtime/ListView$1;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    if-eqz v2, :cond_96

    .line 180
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_9d

    .line 182
    :cond_96
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 190
    :goto_9d
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/ListView;->BackgroundColor(I)V

    .line 191
    const v2, -0x333334

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->SelectionColor(I)V

    .line 192
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColor(I)V

    .line 193
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/ListView;->TextColorDetail(I)V

    .line 194
    const/high16 v2, 0x41b00000    # 22.0f

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 195
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontSizeDetail(F)V

    .line 196
    const-string v2, "0"

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontTypeface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->FontTypefaceDetail(Ljava/lang/String;)V

    .line 199
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ImageWidth(I)V

    .line 200
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ImageHeight(I)V

    .line 201
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ElementsFromString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ListView;->ListData(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 207
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 208
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/ListView;->Width(I)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->ListViewLayout(I)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 212
    return-void
.end method


# virtual methods
.method public AfterPicking()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Simple event to be raised after the an element has been chosen in the list. The selected element is available in the Selection property."
    .end annotation

    .line 518
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterPicking"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public BackgroundColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the listview background."
    .end annotation

    .line 536
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .registers 4
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 552
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    .line 553
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 554
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 556
    return-void
.end method

.method public CreateElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .registers 6
    .param p1, "mainText"    # Ljava/lang/String;
    .param p2, "detailText"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a ListView entry. MainText is required. DetailText and ImageName are optional."
    .end annotation

    .line 965
    new-instance v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 966
    .local v0, "dictItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    const-string v1, "Text2"

    invoke-virtual {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    const-string v1, "Image"

    invoke-virtual {v0, v1, p3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    return-object v0
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 327
    :cond_f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->makeYailListFromList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .registers 8
    .param p1, "itemsList"    # Lcom/google/appinventor/components/runtime/util/YailList;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "List of elements to show in the ListView. Depending on the ListView, this may be a list of strings or a list of 3-element sub-lists containing Text, Description, and Image file name."
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 290
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    .local v0, "firstitem":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v1, :cond_4a

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 297
    invoke-virtual {p1, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 298
    .local v2, "o":Ljava/lang/Object;
    instance-of v3, v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    if-eqz v3, :cond_33

    .line 299
    move-object v3, v2

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 300
    .local v3, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 301
    .end local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    goto :goto_46

    .line 303
    :cond_33
    new-instance v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 304
    .restart local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->YailListElementToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Text1"

    invoke-virtual {v3, v5, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .end local v1    # "i":I
    :cond_49
    goto :goto_52

    .line 310
    :cond_4a
    const-string v1, "ListView"

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsStrings(Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 313
    .end local v0    # "firstitem":Ljava/lang/Object;
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 314
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .registers 3
    .param p1, "itemstring"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The TextView elements specified as a string with the stringItems separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .line 343
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsListFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    .line 344
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 345
    return-void
.end method

.method public FontSize()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
        userVisible = false
    .end annotation

    .line 691
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    return v0
.end method

.method public FontSize(F)V
    .registers 3
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 705
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    goto :goto_10

    .line 708
    :cond_d
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    goto :goto_15

    .line 706
    :cond_10
    :goto_10
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    .line 709
    :goto_15
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 710
    return-void
.end method

.method public FontSizeDetail()F
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview stringItems."
    .end annotation

    .line 720
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    return v0
.end method

.method public FontSizeDetail(F)V
    .registers 3
    .param p1, "fontSize"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 733
    const/high16 v0, 0x447a0000    # 1000.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    goto :goto_10

    .line 736
    :cond_d
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    goto :goto_15

    .line 734
    :cond_10
    :goto_10
    const v0, 0x4479c000    # 999.0f

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    .line 737
    :goto_15
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 738
    return-void
.end method

.method public FontTypeface()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypeface(Ljava/lang/String;)V
    .registers 2
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 770
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    .line 771
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 772
    return-void
.end method

.method public FontTypefaceDetail()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 787
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    return-object v0
.end method

.method public FontTypefaceDetail(Ljava/lang/String;)V
    .registers 2
    .param p1, "typeface"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 804
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    .line 805
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 806
    return-void
.end method

.method public GetDetailText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .registers 3
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Detail Text of a ListView element."
    .end annotation

    .line 979
    const-string v0, "Text2"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetImageName(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .registers 3
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the filename of the image of a ListView element that has been uploaded to Media."
    .end annotation

    .line 984
    const-string v0, "Image"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetMainText(Lcom/google/appinventor/components/runtime/util/YailDictionary;)Ljava/lang/String;
    .registers 3
    .param p1, "listElement"    # Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the Main Text of a ListView element."
    .end annotation

    .line 974
    const-string v0, "Text1"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Height(I)V
    .registers 3
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .line 228
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 229
    const/4 p1, -0x2

    .line 231
    :cond_4
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 232
    return-void
.end method

.method public ImageHeight()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image height of the listview image stringItems."
    .end annotation

    .line 841
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    return v0
.end method

.method public ImageHeight(I)V
    .registers 2
    .param p1, "height"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 853
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    .line 854
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 855
    return-void
.end method

.method public ImageWidth()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The image width of the listview image."
    .end annotation

    .line 816
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    return v0
.end method

.method public ImageWidth(I)V
    .registers 2
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "200"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 828
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    .line 829
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 830
    return-void
.end method

.method public ListData()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    return-object v0
.end method

.method public ListData(Ljava/lang/String;)V
    .registers 11
    .param p1, "propertyValue"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "ListViewAddData"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 931
    const-string v0, "Image"

    const-string v1, "Text2"

    const-string v2, "Text1"

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->propertyValue:Ljava/lang/String;

    .line 932
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 933
    if-eqz p1, :cond_79

    const-string v3, ""

    if-eq p1, v3, :cond_79

    .line 935
    :try_start_13
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 937
    .local v4, "arr":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5b

    .line 938
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 939
    .local v6, "jsonItem":Lorg/json/JSONObject;
    new-instance v7, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/util/YailDictionary;-><init>()V

    .line 940
    .local v7, "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 941
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_41

    :cond_40
    move-object v8, v3

    :goto_41
    invoke-virtual {v7, v1, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4f

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_50

    :cond_4f
    move-object v8, v3

    :goto_50
    invoke-virtual {v7, v0, v8}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    iget-object v8, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_58} :catch_5c

    .line 937
    .end local v6    # "jsonItem":Lorg/json/JSONObject;
    .end local v7    # "yailItem":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 950
    .end local v4    # "arr":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_5b
    goto :goto_79

    .line 947
    :catch_5c
    move-exception v0

    .line 948
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ListView"

    const-string v2, "Malformed JSON in ListView.ListData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 949
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "ListView.ListData"

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 952
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 953
    return-void
.end method

.method public ListViewLayout()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 864
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    return v0
.end method

.method public ListViewLayout(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "ListViewLayout"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 876
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    .line 877
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 878
    return-void
.end method

.method public Orientation()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 889
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    return v0
.end method

.method public Orientation(I)V
    .registers 2
    .param p1, "orientation"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "recyclerview_orientation"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the layout\'s orientation (vertical, horizontal). "
    .end annotation

    .line 905
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    .line 906
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 907
    return-void
.end method

.method public Refresh()V
    .registers 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the ListView to reflect any changes in the data."
    .end annotation

    .line 989
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 990
    return-void
.end method

.method public RemoveItemAtIndex(I)V
    .registers 7
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes Item from list at a given index"
    .end annotation

    .line 437
    const/4 v0, 0x1

    if-lt p1, v0, :cond_38

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p1, v1, :cond_16

    goto :goto_38

    .line 442
    :cond_16
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_25

    .line 443
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 445
    :cond_25
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_34

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 448
    :cond_34
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 449
    return-void

    .line 438
    :cond_38
    :goto_38
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/16 v2, 0x11f9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 439
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 438
    const-string v3, "RemoveItemAtIndex"

    invoke-virtual {v1, p0, v3, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 440
    return-void
.end method

.method public Selection()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the text last selected in the ListView."
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 474
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 475
    .local v1, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v2, "Text1"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v2, p1, :cond_38

    .line 476
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 477
    const-string v2, "Text2"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 478
    goto :goto_3e

    .line 481
    :cond_38
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 473
    .end local v1    # "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .end local v0    # "i":I
    :cond_3e
    :goto_3e
    goto :goto_47

    .line 484
    :cond_3f
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectedIndexFromValueInStringList(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 486
    :goto_47
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->SelectionIndex(I)V

    .line 487
    return-void
.end method

.method public SelectionColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The color of the item when it is selected."
    .end annotation

    .line 570
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    return v0
.end method

.method public SelectionColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 587
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    .line 588
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 589
    return-void
.end method

.method public SelectionDetailText()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the secondary text of the selected row in the ListView."
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    return-object v0
.end method

.method public SelectionIndex()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The index of the currently selected item, starting at 1.  If no item is selected, the value will be 0.  If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 393
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    return v0
.end method

.method public SelectionIndex(I)V
    .registers 4
    .param p1, "index"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the one-indexed position of the selected item in the ListView. This could be used to retrievethe text at the chosen position. If an attempt is made to set this to a number less than 1 or greater than the number of stringItems in the ListView, SelectionIndex will be set to 0, and Selection will be set to the empty text."
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_50

    .line 412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndex(ILcom/google/appinventor/components/runtime/util/YailList;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 413
    if-lez v0, :cond_4b

    .line 414
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "Text2"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_62

    .line 417
    :cond_4b
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 418
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    goto :goto_62

    .line 421
    :cond_50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->selectionIndexInStringList(ILjava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->setSelectionFromIndexInStringList(ILjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 424
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 426
    :goto_62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    if-eqz v0, :cond_6d

    .line 427
    iget v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->toggleSelection(I)V

    .line 429
    :cond_6d
    return-void
.end method

.method public ShowFilterBar(Z)V
    .registers 4
    .param p1, "showFilter"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets visibility of ShowFilterBar. True will show the bar, False will hide it."
    .end annotation

    .line 260
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    .line 261
    if-eqz p1, :cond_b

    .line 262
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_12

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->txtSearchBox:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 266
    :goto_12
    return-void
.end method

.method public ShowFilterBar()Z
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns current state of ShowFilterBar for visibility."
    .end annotation

    .line 277
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ListView;->showFilter:Z

    return v0
.end method

.method public TextColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of the listview stringItems."
    .end annotation

    .line 604
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 620
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    .line 621
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 622
    return-void
.end method

.method public TextColorDetail()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text color of DetailText of listview stringItems. "
    .end annotation

    .line 633
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    return v0
.end method

.method public TextColorDetail(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 646
    iput p1, p0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    .line 647
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->setAdapterData()V

    .line 648
    return-void
.end method

.method public TextSize()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text size of the listview items."
    .end annotation

    .line 663
    iget v0, p0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public TextSize(I)V
    .registers 3
    .param p1, "textSize"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "22"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 675
    const/16 v0, 0x3e8

    if-le p1, v0, :cond_6

    .line 676
    const/16 p1, 0x3e7

    .line 678
    :cond_6
    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ListView;->FontSize(F)V

    .line 679
    return-void
.end method

.method public Width(I)V
    .registers 3
    .param p1, "width"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .line 243
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 244
    const/4 p1, -0x2

    .line 246
    :cond_4
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 247
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 504
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    .line 505
    .local v0, "item":Lcom/google/appinventor/components/runtime/util/YailDictionary;
    const-string v1, "Text1"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selection:Ljava/lang/String;

    .line 506
    const-string v1, "Text2"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->toStringEmptyIfNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionDetailText:Ljava/lang/String;

    .line 507
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/google/appinventor/components/runtime/ListView;->selectionIndex:I

    .line 508
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ListView;->AfterPicking()V

    .line 509
    return-void
.end method

.method public setAdapterData()V
    .registers 20

    .line 352
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_51

    .line 354
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v6, v0, Lcom/google/appinventor/components/runtime/ListView;->dictItems:Ljava/util/List;

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/ListView;->detailTextColor:I

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeDetail:F

    iget-object v11, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeDetail:Ljava/lang/String;

    iget v13, v0, Lcom/google/appinventor/components/runtime/ListView;->layout:I

    iget v14, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    iget v15, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    iget v4, v0, Lcom/google/appinventor/components/runtime/ListView;->imageWidth:I

    iget v3, v0, Lcom/google/appinventor/components/runtime/ListView;->imageHeight:I

    const/16 v18, 0x0

    move/from16 v16, v4

    move-object v4, v1

    move/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IIFFLjava/lang/String;Ljava/lang/String;IIIIIZ)V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 356
    iget v1, v0, Lcom/google/appinventor/components/runtime/ListView;->orientation:I

    if-ne v1, v2, :cond_44

    .line 357
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .local v1, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_73

    .line 359
    .end local v1    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_44
    const/4 v3, 0x0

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .restart local v1    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    goto :goto_73

    .line 363
    .end local v1    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :cond_51
    new-instance v1, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    iget-object v5, v0, Lcom/google/appinventor/components/runtime/ListView;->stringItems:Ljava/util/List;

    iget v6, v0, Lcom/google/appinventor/components/runtime/ListView;->textColor:I

    iget v7, v0, Lcom/google/appinventor/components/runtime/ListView;->fontSizeMain:F

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/ListView;->fontTypeface:Ljava/lang/String;

    iget v9, v0, Lcom/google/appinventor/components/runtime/ListView;->backgroundColor:I

    iget v10, v0, Lcom/google/appinventor/components/runtime/ListView;->selectionColor:I

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/util/List;IFLjava/lang/String;II)V

    iput-object v1, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    .line 365
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 367
    .restart local v1    # "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    :goto_73
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    new-instance v3, Lcom/google/appinventor/components/runtime/ListView$2;

    invoke-direct {v3, v0}, Lcom/google/appinventor/components/runtime/ListView$2;-><init>(Lcom/google/appinventor/components/runtime/ListView;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;->setOnItemClickListener(Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView$ClickListener;)V

    .line 375
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 376
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/ListView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lcom/google/appinventor/components/runtime/ListView;->listAdapterWithRecyclerView:Lcom/google/appinventor/components/runtime/ListAdapterWithRecyclerView;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 377
    return-void
.end method

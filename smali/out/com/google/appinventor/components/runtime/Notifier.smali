.class public final Lcom/google/appinventor/components/runtime/Notifier;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Notifier.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Notifier component displays alert dialogs, messages, and temporary alerts, and creates Android log entries through the following methods: <ul><li> ShowMessageDialog: displays a message which the user must dismiss by pressing a button.</li><li> ShowChooseDialog: displays a message two buttons to let the user choose one of two responses, for example, yes or no, after which the AfterChoosing event is raised.</li><li> ShowTextDialog: lets the user enter text in response to the message, after which the AfterTextInput event is raised. <li> ShowPasswordDialog: lets the user enter password in response to the message, after which the AfterTextInput event is raised. <li> ShowAlert: displays a temporary  alert that goes away by itself after a short time.</li><li> ShowProgressDialog: displays an alert with a loading spinner that cannot be dismissed by the user. It can only be dismissed by using the DismissProgressDialog block.</li><li> DismissProgressDialog: Dismisses the progress dialog displayed by ShowProgressDialog.</li><li> LogError: logs an error message to the Android log. </li><li> LogInfo: logs an info message to the Android log.</li><li> LogWarning: logs a warning message to the Android log.</li><li>The messages in the dialogs (but not the alert) can be formatted using the following HTML tags:&lt;b&gt;, &lt;big&gt;, &lt;blockquote&gt;, &lt;br&gt;, &lt;cite&gt;, &lt;dfn&gt;, &lt;div&gt;, &lt;em&gt;, &lt;small&gt;, &lt;strong&gt;, &lt;sub&gt;, &lt;sup&gt;, &lt;tt&gt;. &lt;u&gt;</li><li>You can also use the font tag to specify color, for example, &lt;font color=\"blue\"&gt;.  Some of the available color names are aqua, black, blue, fuchsia, green, grey, lime, maroon, navy, olive, purple, red, silver, teal, white, and yellow</li></ul>"
    iconName = "images/notifier.png"
    nonVisible = true
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notifier"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private backgroundColor:I

.field private final handler:Landroid/os/Handler;

.field private notifierLength:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private textColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/google/appinventor/components/runtime/Notifier;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mtoastNow(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->toastNow(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 100
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    .line 89
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 101
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    .line 104
    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;
    .param p4, "callBack"    # Ljava/lang/Runnable;

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One button alert "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 167
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 170
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->stringToHTML(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$1;

    invoke-direct {v1, p4}, Lcom/google/appinventor/components/runtime/Notifier$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, -0x3

    invoke-virtual {v0, v2, p3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 179
    return-void
.end method

.method private static stringToHTML(Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 191
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cancelable"    # Z
    .param p4, "maskInput"    # Z

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 361
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->stringToHTML(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, "input":Landroid/widget/EditText;
    if-eqz p4, :cond_23

    .line 366
    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 368
    :cond_23
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 370
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 371
    const/4 v2, -0x1

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$8;

    invoke-direct {v3, p0, v1}, Lcom/google/appinventor/components/runtime/Notifier$8;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V

    const-string v4, "OK"

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 380
    if-eqz p3, :cond_48

    .line 381
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "cancelButtonText":Ljava/lang/String;
    const/4 v3, -0x2

    new-instance v4, Lcom/google/appinventor/components/runtime/Notifier$9;

    invoke-direct {v4, p0, v1, v2}, Lcom/google/appinventor/components/runtime/Notifier$9;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 393
    .end local v2    # "cancelButtonText":Ljava/lang/String;
    :cond_48
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 394
    return-void
.end method

.method private toastNow(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;

    .line 514
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_b

    .line 515
    const/16 v0, 0x16

    goto :goto_d

    :cond_b
    const/16 v0, 0xf

    .line 516
    .local v0, "fontsize":I
    :goto_d
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 517
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x11

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 518
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 519
    .local v2, "textView":Landroid/widget/TextView;
    iget v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 520
    iget v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 521
    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 522
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    .line 523
    .local v3, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    const/16 v4, 0xa

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 535
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 536
    return-void
.end method

.method public static twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "button1Text"    # Ljava/lang/String;
    .param p4, "button2Text"    # Ljava/lang/String;
    .param p5, "cancelable"    # Z
    .param p6, "positiveAction"    # Ljava/lang/Runnable;
    .param p7, "negativeAction"    # Ljava/lang/Runnable;
    .param p8, "cancelAction"    # Ljava/lang/Runnable;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowChooseDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 240
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 243
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->stringToHTML(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 249
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$5;

    invoke-direct {v1, p6}, Lcom/google/appinventor/components/runtime/Notifier$5;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 255
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$6;

    invoke-direct {v1, p7}, Lcom/google/appinventor/components/runtime/Notifier$6;-><init>(Ljava/lang/Runnable;)V

    const/4 v2, -0x3

    invoke-virtual {v0, v2, p4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 264
    if-eqz p5, :cond_52

    .line 266
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "cancelButtonText":Ljava/lang/String;
    const/4 v2, -0x2

    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$7;

    invoke-direct {v3, p8}, Lcom/google/appinventor/components/runtime/Notifier$7;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 274
    .end local v1    # "cancelButtonText":Ljava/lang/String;
    :cond_52
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 275
    return-void
.end method


# virtual methods
.method public AfterChoosing(Ljava/lang/String;)V
    .registers 4
    .param p1, "choice"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event after the user has made a selection for ShowChooseDialog."
    .end annotation

    .line 285
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterChoosing"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public AfterTextInput(Ljava/lang/String;)V
    .registers 4
    .param p1, "response"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after the user has responded to ShowTextDialog."
    .end annotation

    .line 413
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "AfterTextInput"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method public BackgroundColor(I)V
    .registers 2
    .param p1, "argb"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the background color for alerts (not dialogs)."
    .end annotation

    .line 479
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    .line 480
    return-void
.end method

.method public ChoosingCanceled()V
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the user canceled ShowChooseDialog."
    .end annotation

    .line 295
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ChoosingCanceled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public DismissProgressDialog()V
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed ProgressDialog box"
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    .line 133
    :cond_a
    return-void
.end method

.method public HideKeyboard(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 400
    if-eqz p1, :cond_14

    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 402
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 404
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_14
    return-void
.end method

.method public LogError(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an error message to the Android system log. See the Google Android documentation for how to access the log."
    .end annotation

    .line 547
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void
.end method

.method public LogInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an information message to the Android log."
    .end annotation

    .line 569
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    return-void
.end method

.method public LogWarning(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes a warning message to the Android log. See the Google Android documentation for how to access the log."
    .end annotation

    .line 559
    const-string v0, "Notifier"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method public NotifierLength()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the length of time that the alert is shown -- either \"short\" or \"long\"."
    .end annotation

    .line 466
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    return v0
.end method

.method public NotifierLength(I)V
    .registers 2
    .param p1, "length"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "toast_length"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 456
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    .line 457
    return-void
.end method

.method public ShowAlert(Ljava/lang/String;)V
    .registers 4
    .param p1, "notice"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$10;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$10;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 443
    return-void
.end method

.method public ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "button1Text"    # Ljava/lang/String;
    .param p4, "button2Text"    # Ljava/lang/String;
    .param p5, "cancelable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the AfterChoosing event.  The \"choice\" parameter to AfterChoosing will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed."
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    new-instance v6, Lcom/google/appinventor/components/runtime/Notifier$2;

    invoke-direct {v6, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$2;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v7, Lcom/google/appinventor/components/runtime/Notifier$3;

    invoke-direct {v7, p0, p4}, Lcom/google/appinventor/components/runtime/Notifier$3;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier$4;

    invoke-direct {v8, p0}, Lcom/google/appinventor/components/runtime/Notifier$4;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public ShowPasswordDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cancelable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter password (input is masked), after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering password will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the entered password, or \"Cancel\" if CANCEL button was pressed."
    .end annotation

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 341
    return-void
.end method

.method public ShowProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with an optional title and message (use empty strings if they are not wanted). This dialog box contains a spinning artifact to indicate that the program is working. It cannot be canceled by the user but must be dismissed by the App Inventor Program by using the DismissProgressDialog block."
    .end annotation

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public ShowTextDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "cancelable"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter text, after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering text will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the text that was entered, or \"Cancel\" if the CANCEL button was pressed."
    .end annotation

    .line 318
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 319
    return-void
.end method

.method public TextColor()I
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the text color for alerts (not dialogs)."
    .end annotation

    .line 491
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

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

    .line 503
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 504
    return-void
.end method

.method public TextInputCanceled()Z
    .registers 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the user canceled ShowTextDialog."
    .end annotation

    .line 426
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextInputCanceled"

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public progressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_7

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-static {v0, p2, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    .line 147
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 148
    return-void
.end method

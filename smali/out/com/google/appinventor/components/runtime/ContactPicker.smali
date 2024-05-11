.class public Lcom/google/appinventor/components/runtime/ContactPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "ContactPicker.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SOCIAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A button that, when clicked on, displays a list of the contacts to choose among. After the user has made a selection, the following properties will be set to information about the chosen contact: <ul>\n<li> <code>ContactName</code>: the contact\'s name </li>\n <li> <code>EmailAddress</code>: the contact\'s primary email address </li>\n <li> <code>ContactUri</code>: the contact\'s URI on the device </li>\n<li> <code>EmailAddressList</code>: a list of the contact\'s email addresses </li>\n <li> <code>PhoneNumber</code>: the contact\'s primary phone number (on Later Android Verisons)</li>\n <li> <code>PhoneNumberList</code>: a list of the contact\'s phone numbers (on Later Android Versions)</li>\n <li> <code>Picture</code>: the name of the file containing the contact\'s image, which can be used as a <code>Picture</code> property value for the <code>Image</code> or <code>ImageSprite</code> component.</li></ul>\n</p><p>Other properties affect the appearance of the button (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be clicked on (<code>Enabled</code>).\n</p><p>The ContactPicker component might not work on all phones. For example, on Android systems before system 3.0, it cannot pick phone numbers, and the list of email addresses will contain only one email."
    iconName = "images/contactPicker.png"
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.READ_CONTACTS"
.end annotation


# static fields
.field private static CONTACT_PROJECTION:[Ljava/lang/String; = null

.field private static DATA_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_INDEX:I = 0x1

.field private static final NAME_INDEX:I = 0x0

.field private static final PHONE_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final activityContext:Landroid/app/Activity;

.field protected contactName:Ljava/lang/String;

.field protected contactPictureUri:Ljava/lang/String;

.field protected contactUri:Ljava/lang/String;

.field protected emailAddress:Ljava/lang/String;

.field protected emailAddressList:Ljava/util/List;

.field private havePermission:Z

.field private final intentUri:Landroid/net/Uri;

.field protected phoneNumber:Ljava/lang/String;

.field protected phoneNumberList:Ljava/util/List;


# direct methods
.method static bridge synthetic -$$Nest$fputhavePermission(Lcom/google/appinventor/components/runtime/ContactPicker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "primary_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/appinventor/components/runtime/ContactPicker;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .registers 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 114
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V

    .line 115
    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/net/Uri;)V
    .registers 5
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;
    .param p2, "intentUri"    # Landroid/net/Uri;

    .line 118
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    .line 119
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    .line 121
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_23

    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 122
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    goto :goto_3a

    .line 123
    :cond_23
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v0

    if-lt v0, v1, :cond_38

    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 124
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    goto :goto_3a

    .line 126
    :cond_38
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    .line 128
    :goto_3a
    return-void
.end method


# virtual methods
.method public ContactName()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ContactUri()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URI that specifies the location of the contact on the device."
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddress()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EmailAddressList()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumber()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PhoneNumberList()Ljava/util/List;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public Picture()Ljava/lang/String;
    .registers 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ViewContact(Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "view a contact via its URI"
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 234
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 237
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method protected checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 8
    .param p1, "suspectUri"    # Landroid/net/Uri;
    .param p2, "requiredPattern"    # Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contactUri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v0, 0x0

    const/16 v2, 0x453

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_46

    .line 410
    :cond_2a
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, "UriSpecific":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 412
    const-string v4, "checkContactUri failed: C"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    .line 415
    return v0

    .line 417
    :cond_44
    const/4 v0, 0x1

    return v0

    .line 405
    .end local v3    # "UriSpecific":Ljava/lang/String;
    :cond_46
    :goto_46
    const-string v3, "checkContactUri failed: A"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V

    .line 408
    return v0
.end method

.method public click()V
    .registers 4

    .line 132
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->havePermission:Z

    if-nez v0, :cond_15

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/ContactPicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ContactPicker$1;-><init>(Lcom/google/appinventor/components/runtime/ContactPicker;)V

    .line 134
    const-string v2, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 147
    return-void

    .line 149
    :cond_15
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Picker;->click()V

    .line 150
    return-void
.end method

.method protected ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 485
    if-nez p1, :cond_5

    .line 486
    const-string v0, ""

    return-object v0

    .line 488
    :cond_5
    return-object p1
.end method

.method protected ensureNotNull(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p1, "value"    # Ljava/util/List;

    .line 493
    if-nez p1, :cond_8

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 496
    :cond_8
    return-object p1
.end method

.method protected getEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "emailId"    # Ljava/lang/String;

    .line 436
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_4a

    .line 439
    .local v0, "id":I
    nop

    .line 441
    const-string v1, ""

    .line 442
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_methods._id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const-string v3, "data"

    const/4 v9, 0x0

    aput-object v3, v5, v9

    .line 446
    .local v5, "projection":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$ContactMethods;->CONTENT_EMAIL_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 450
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_31
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 451
    invoke-virtual {p0, v3, v9}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v4
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_45

    move-object v1, v4

    .line 454
    :cond_3c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 455
    nop

    .line 458
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 454
    :catchall_45
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 455
    throw v4

    .line 437
    .end local v0    # "id":I
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "projection":[Ljava/lang/String;
    :catch_4a
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, ""

    return-object v1
.end method

.method protected getIntent()Landroid/content/Intent;
    .registers 4

    .line 241
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->intentUri:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method protected guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .line 474
    :try_start_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    .line 480
    .local v0, "result":Ljava/lang/String;
    goto :goto_9

    .line 475
    .end local v0    # "result":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    move-object v0, v1

    .line 481
    .local v0, "result":Ljava/lang/String;
    :goto_9
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V
    .registers 12
    .param p1, "dataCursor"    # Landroid/database/Cursor;

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 350
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, "phoneListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v1, "emailListToStore":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 355
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 356
    .local v2, "PHONE_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 357
    .local v3, "EMAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getMimeIndex(Landroid/database/Cursor;)I

    move-result v4

    .line 359
    .local v4, "MIME_INDEX":I
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhoneType()Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "phoneType":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getEmailType()Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "emailType":Ljava/lang/String;
    :goto_2a
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_80

    .line 363
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    .line 364
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 365
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 366
    :cond_42
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 367
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    .line 369
    :cond_50
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Type mismatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ContactPicker"

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_7c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 374
    .end local v7    # "type":Ljava/lang/String;
    goto :goto_2a

    .line 377
    .end local v2    # "PHONE_INDEX":I
    .end local v3    # "EMAIL_INDEX":I
    .end local v4    # "MIME_INDEX":I
    .end local v5    # "phoneType":Ljava/lang/String;
    .end local v6    # "emailType":Ljava/lang/String;
    :cond_80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_8f

    .line 378
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    .line 380
    :cond_8f
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9d

    .line 381
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 383
    :cond_9d
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumberList:Ljava/util/List;

    .line 384
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    .line 386
    return-void
.end method

.method public postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 10
    .param p1, "contactCursor"    # Landroid/database/Cursor;

    .line 329
    const-string v0, ""

    .line 330
    .local v0, "id":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 331
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getIdIndex(Landroid/database/Cursor;)I

    move-result v1

    .line 332
    .local v1, "ID_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getNameIndex(Landroid/database/Cursor;)I

    move-result v2

    .line 333
    .local v2, "NAME_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getThumbnailIndex(Landroid/database/Cursor;)I

    move-result v3

    .line 334
    .local v3, "THUMBNAIL_INDEX":I
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getPhotoIndex(Landroid/database/Cursor;)I

    move-result v4

    .line 335
    .local v4, "PHOTO_INDEX":I
    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-virtual {p0, p1, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 337
    invoke-virtual {p0, p1, v3}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 339
    invoke-virtual {p0, p1, v4}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo_uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContactPicker"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v1    # "ID_INDEX":I
    .end local v2    # "NAME_INDEX":I
    .end local v3    # "THUMBNAIL_INDEX":I
    .end local v4    # "PHOTO_INDEX":I
    :cond_44
    return-object v0
.end method

.method public preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V
    .registers 8
    .param p1, "contactCursor"    # Landroid/database/Cursor;
    .param p2, "theContactUri"    # Landroid/net/Uri;

    .line 314
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 316
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->guardCursorGetString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "emailId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ContactPicker;->getEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 318
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 319
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 320
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3e

    :cond_34
    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    aput-object v3, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3e
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddressList:Ljava/util/List;

    .line 322
    .end local v2    # "emailId":Ljava/lang/String;
    :cond_40
    return-void
.end method

.method protected puntContactSelection(I)V
    .registers 5
    .param p1, "errorNumber"    # I

    .line 424
    const-string v0, ""

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    .line 425
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    .line 426
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 428
    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 254
    iget v0, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->requestCode:I

    if-ne p1, v0, :cond_fe

    const/4 v0, -0x1

    if-ne p2, v0, :cond_fe

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received intent is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContactPicker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 259
    .local v0, "receivedContactUri":Landroid/net/Uri;
    const-string v2, ""

    .line 260
    .local v2, "desiredContactUri":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v3

    const/16 v4, 0xc

    if-lt v3, v4, :cond_31

    .line 261
    const-string v2, "//com.android.contacts/contact"

    move-object v8, v2

    goto :goto_34

    .line 263
    :cond_31
    const-string v2, "//contacts/people"

    move-object v8, v2

    .line 266
    .end local v2    # "desiredContactUri":Ljava/lang/String;
    .local v8, "desiredContactUri":Ljava/lang/String;
    :goto_34
    invoke-virtual {p0, v0, v8}, Lcom/google/appinventor/components/runtime/ContactPicker;->checkContactUri(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 267
    const/4 v9, 0x0

    .line 268
    .local v9, "contactCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 270
    .local v10, "dataCursor":Landroid/database/Cursor;
    :try_start_3c
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/SdkLevel;->getLevel()I

    move-result v2

    if-lt v2, v4, :cond_74

    .line 271
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getContactProjection()[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/appinventor/components/runtime/ContactPicker;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/appinventor/components/runtime/ContactPicker;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v9, v2

    .line 275
    invoke-virtual {p0, v9}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactNameAndPicture(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "id":Ljava/lang/String;
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataProjection()[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/appinventor/components/runtime/ContactPicker;->DATA_PROJECTION:[Ljava/lang/String;

    .line 278
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-static {v2, v4, v3}, Lcom/google/appinventor/components/runtime/util/HoneycombMR1Util;->getDataCursor(Ljava/lang/String;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v10, v3

    .line 279
    invoke-virtual {p0, v10}, Lcom/google/appinventor/components/runtime/ContactPicker;->postHoneycombGetContactEmailAndPhone(Landroid/database/Cursor;)V

    .line 282
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    .line 283
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_88

    .line 284
    :cond_74
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->activityContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/google/appinventor/components/runtime/ContactPicker;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v9, v2

    .line 286
    invoke-virtual {p0, v9, v0}, Lcom/google/appinventor/components/runtime/ContactPicker;->preHoneycombGetContactInfo(Landroid/database/Cursor;Landroid/net/Uri;)V

    .line 288
    :goto_88
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->emailAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->phoneNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ContactPicker;->contactPictureUri:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Contact name = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", email address = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",contact Uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phone number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contactPhotoUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_d0} :catch_da
    .catchall {:try_start_3c .. :try_end_d0} :catchall_d8

    .line 298
    if-eqz v9, :cond_d5

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_d5
    if-eqz v10, :cond_fb

    .line 302
    goto :goto_ec

    .line 298
    :catchall_d8
    move-exception v1

    goto :goto_f0

    .line 291
    :catch_da
    move-exception v2

    .line 295
    .local v2, "e":Ljava/lang/Exception;
    :try_start_db
    const-string v3, "checkContactUri failed: D"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/16 v1, 0x453

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/ContactPicker;->puntContactSelection(I)V
    :try_end_e5
    .catchall {:try_start_db .. :try_end_e5} :catchall_d8

    .line 298
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v9, :cond_ea

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_ea
    if-eqz v10, :cond_fb

    .line 302
    :goto_ec
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_fb

    .line 298
    :goto_f0
    if-eqz v9, :cond_f5

    .line 299
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_f5
    if-eqz v10, :cond_fa

    .line 302
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_fa
    throw v1

    .line 306
    .end local v9    # "contactCursor":Landroid/database/Cursor;
    .end local v10    # "dataCursor":Landroid/database/Cursor;
    :cond_fb
    :goto_fb
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ContactPicker;->AfterPicking()V

    .line 308
    .end local v0    # "receivedContactUri":Landroid/net/Uri;
    .end local v8    # "desiredContactUri":Ljava/lang/String;
    :cond_fe
    return-void
.end method

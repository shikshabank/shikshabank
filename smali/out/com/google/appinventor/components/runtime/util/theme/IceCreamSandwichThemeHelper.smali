.class public Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;
.super Ljava/lang/Object;
.source "IceCreamSandwichThemeHelper.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/theme/ThemeHelper;


# instance fields
.field private final activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;)V
    .registers 2
    .param p1, "activity"    # Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    .line 23
    return-void
.end method


# virtual methods
.method public hasActionBar()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public requestActionBar()V
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 28
    return-void
.end method

.method public setActionBarAnimation(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 61
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 62
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_b

    .line 63
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setShowHideAnimationEnabled(Z)V

    .line 65
    :cond_b
    return-void
.end method

.method public setActionBarVisible(Z)Z
    .registers 9
    .param p1, "visible"    # Z

    .line 32
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-nez v0, :cond_1e

    .line 34
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    instance-of v2, v1, Lcom/google/appinventor/components/runtime/Form;

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    .line 35
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/Form;

    check-cast v1, Lcom/google/appinventor/components/runtime/Form;

    const/16 v4, 0x38b

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ActionBar"

    invoke-virtual {v2, v1, v6, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 37
    :cond_1d
    return v3

    .line 38
    :cond_1e
    if-eqz p1, :cond_24

    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    goto :goto_27

    .line 41
    :cond_24
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 43
    :goto_27
    const/4 v1, 0x1

    return v1
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 54
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_b

    .line 55
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "black"    # Z

    .line 69
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 70
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_3b

    .line 71
    if-eqz p2, :cond_32

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\"black\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    goto :goto_3b

    .line 75
    :cond_32
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/theme/IceCreamSandwichThemeHelper;->activity:Lcom/google/appinventor/components/runtime/AppInventorCompatActivity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/ImageViewUtil;->setMenuButtonColor(Landroid/app/Activity;I)V

    .line 79
    :cond_3b
    :goto_3b
    return-void
.end method

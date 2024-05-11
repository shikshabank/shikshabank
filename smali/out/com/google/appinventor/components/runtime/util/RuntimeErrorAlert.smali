.class public final Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;
.super Ljava/lang/Object;
.source "RuntimeErrorAlert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alert(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/String;

    .line 24
    const-class v0, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert;

    const-string v1, "RuntimeErrorAlert"

    const-string v2, "in alert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 26
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 28
    new-instance v2, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/RuntimeErrorAlert$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 32
    if-nez p1, :cond_2f

    .line 34
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "No error message available"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 36
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_36
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 39
    return-void
.end method

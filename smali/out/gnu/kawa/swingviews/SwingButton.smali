.class public Lgnu/kawa/swingviews/SwingButton;
.super Ljavax/swing/JButton;
.source "SwingButton.java"

# interfaces
.implements Lgnu/kawa/models/ModelListener;


# instance fields
.field model:Lgnu/kawa/models/Button;


# direct methods
.method public constructor <init>(Lgnu/kawa/models/Button;)V
    .registers 5
    .param p1, "model"    # Lgnu/kawa/models/Button;

    .line 14
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lgnu/kawa/swingviews/SwModel;

    invoke-direct {v0, p1}, Lgnu/kawa/swingviews/SwModel;-><init>(Lgnu/kawa/models/Button;)V

    invoke-virtual {p0, v0}, Lgnu/kawa/swingviews/SwingButton;->setModel(Ljavax/swing/ButtonModel;)V

    .line 16
    iput-object p1, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    .line 17
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getAction()Ljava/lang/Object;

    move-result-object v0

    .line 18
    .local v0, "action":Ljava/lang/Object;
    if-eqz v0, :cond_1e

    .line 19
    invoke-static {v0}, Lgnu/kawa/swingviews/SwingDisplay;->makeActionListener(Ljava/lang/Object;)Ljava/awt/event/ActionListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgnu/kawa/swingviews/SwingButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 20
    :cond_1e
    invoke-virtual {p1, p0}, Lgnu/kawa/models/Button;->addListener(Lgnu/kawa/models/ModelListener;)V

    .line 21
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getForeground()Ljava/awt/Color;

    move-result-object v1

    .line 22
    .local v1, "fg":Ljava/awt/Color;
    if-eqz v1, :cond_2a

    .line 23
    invoke-super {p0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 24
    :cond_2a
    invoke-virtual {p1}, Lgnu/kawa/models/Button;->getBackground()Ljava/awt/Color;

    move-result-object v2

    .line 25
    .local v2, "bg":Ljava/awt/Color;
    if-eqz v2, :cond_33

    .line 26
    invoke-super {p0, v2}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 27
    :cond_33
    return-void
.end method


# virtual methods
.method public modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .registers 4
    .param p1, "model"    # Lgnu/kawa/models/Model;
    .param p2, "key"    # Ljava/lang/Object;

    .line 55
    const-string v0, "text"

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne p1, v0, :cond_10

    .line 56
    invoke-virtual {v0}, Lgnu/kawa/models/Button;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    goto :goto_2f

    .line 57
    :cond_10
    const-string v0, "foreground"

    if-ne p2, v0, :cond_20

    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne p1, v0, :cond_20

    .line 58
    invoke-virtual {v0}, Lgnu/kawa/models/Button;->getForeground()Ljava/awt/Color;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    goto :goto_2f

    .line 59
    :cond_20
    const-string v0, "background"

    if-ne p2, v0, :cond_2f

    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-ne p1, v0, :cond_2f

    .line 60
    invoke-virtual {v0}, Lgnu/kawa/models/Button;->getBackground()Ljava/awt/Color;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 61
    :cond_2f
    :goto_2f
    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .registers 3
    .param p1, "bg"    # Ljava/awt/Color;

    .line 47
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v0, :cond_8

    .line 48
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    goto :goto_b

    .line 50
    :cond_8
    invoke-virtual {v0, p1}, Lgnu/kawa/models/Button;->setBackground(Ljava/awt/Color;)V

    .line 51
    :goto_b
    return-void
.end method

.method public setForeground(Ljava/awt/Color;)V
    .registers 3
    .param p1, "fg"    # Ljava/awt/Color;

    .line 39
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v0, :cond_8

    .line 40
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    goto :goto_b

    .line 42
    :cond_8
    invoke-virtual {v0, p1}, Lgnu/kawa/models/Button;->setForeground(Ljava/awt/Color;)V

    .line 43
    :goto_b
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lgnu/kawa/swingviews/SwingButton;->model:Lgnu/kawa/models/Button;

    if-nez v0, :cond_8

    .line 32
    invoke-super {p0, p1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    goto :goto_b

    .line 34
    :cond_8
    invoke-virtual {v0, p1}, Lgnu/kawa/models/Button;->setText(Ljava/lang/String;)V

    .line 35
    :goto_b
    return-void
.end method

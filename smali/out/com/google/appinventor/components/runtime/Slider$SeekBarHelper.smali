.class Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;
.super Ljava/lang/Object;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Slider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Slider;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/Slider;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;->this$0:Lcom/google/appinventor/components/runtime/Slider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/Slider;Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;-><init>(Lcom/google/appinventor/components/runtime/Slider;)V

    return-void
.end method


# virtual methods
.method public getThumb(I)V
    .registers 3
    .param p1, "alpha"    # I

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Slider$SeekBarHelper;->this$0:Lcom/google/appinventor/components/runtime/Slider;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Slider;->-$$Nest$fgetseekbar(Lcom/google/appinventor/components/runtime/Slider;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 95
    return-void
.end method

.class public Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;
.super Lcom/google/android/material/textfield/TextInputEditText;
.source "OneKeyClearEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;,
        Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;,
        Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private c:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->d()V

    return-void
.end method

.method static synthetic a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->b:Z

    return p1
.end method

.method static synthetic c(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;)Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->c:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    .line 2
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$b;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$a;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;

    invoke-direct {v0, p0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$d;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$a;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->setClearDrawableVisible(Z)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->f(I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public f(I)Landroid/view/animation/Animation;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    int-to-float p1, p1

    invoke-direct {v1, p1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x3e8

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getTotalPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_2
    :goto_1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public setClearDrawableVisible(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 5
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOneKeyClearOnFocusChangeListener(Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText;->c:Lcom/qennnsad/aknkaksd/presentation/ui/widget/OneKeyClearEditText$c;

    return-void
.end method

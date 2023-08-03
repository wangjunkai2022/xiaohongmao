.class public Leltos/simpledialogfragment/list/ClearableEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "ClearableEditText.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leltos/simpledialogfragment/list/ClearableEditText$b;,
        Leltos/simpledialogfragment/list/ClearableEditText$Location;
    }
.end annotation


# instance fields
.field private a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Leltos/simpledialogfragment/list/ClearableEditText$b;

.field private d:Landroid/view/View$OnTouchListener;

.field private e:Landroid/view/View$OnFocusChangeListener;

.field private final f:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object v0, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    iput-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    .line 3
    new-instance v0, Leltos/simpledialogfragment/list/ClearableEditText$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/list/ClearableEditText$a;-><init>(Leltos/simpledialogfragment/list/ClearableEditText;)V

    iput-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->f:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Leltos/simpledialogfragment/list/ClearableEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    sget-object v0, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    iput-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    .line 7
    new-instance v0, Leltos/simpledialogfragment/list/ClearableEditText$a;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/list/ClearableEditText$a;-><init>(Leltos/simpledialogfragment/list/ClearableEditText;)V

    iput-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->f:Landroid/text/TextWatcher;

    .line 8
    invoke-direct {p0, p1, p2}, Leltos/simpledialogfragment/list/ClearableEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    sget-object p3, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    iput-object p3, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    .line 11
    new-instance p3, Leltos/simpledialogfragment/list/ClearableEditText$a;

    invoke-direct {p3, p0}, Leltos/simpledialogfragment/list/ClearableEditText$a;-><init>(Leltos/simpledialogfragment/list/ClearableEditText;)V

    iput-object p3, p0, Leltos/simpledialogfragment/list/ClearableEditText;->f:Landroid/text/TextWatcher;

    .line 12
    invoke-direct {p0, p1, p2}, Leltos/simpledialogfragment/list/ClearableEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Leltos/simpledialogfragment/c$p;->Z5:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    :try_start_0
    sget p2, Leltos/simpledialogfragment/c$p;->b6:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object p2, Leltos/simpledialogfragment/list/ClearableEditText$Location;->LEFT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    iput-object p2, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 6
    sget-object p2, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    iput-object p2, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    .line 7
    :cond_1
    :goto_0
    sget p2, Leltos/simpledialogfragment/c$p;->a6:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    iget-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Leltos/simpledialogfragment/c$h;->P0:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    .line 11
    :cond_2
    iget-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    iget-object p2, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 14
    invoke-virtual {p0}, Landroid/widget/EditText;->getSuggestedMinimumHeight()I

    move-result p2

    if-ge p2, p1, :cond_3

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    .line 16
    :cond_3
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 18
    iget-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->f:Landroid/text/TextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 19
    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/list/ClearableEditText;->setClearIconVisible(Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 21
    throw p2
.end method


# virtual methods
.method protected b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    sget-object v1, Leltos/simpledialogfragment/list/ClearableEditText$Location;->LEFT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 3
    :cond_1
    sget-object v1, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    if-ne v0, v1, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_3
    return v3
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/ClearableEditText;->setClearIconVisible(Z)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/list/ClearableEditText;->setClearIconVisible(Z)V

    .line 3
    :goto_0
    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->e:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/ClearableEditText;->b()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 4
    iget-object v4, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    sget-object v5, Leltos/simpledialogfragment/list/ClearableEditText$Location;->LEFT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v4, v6

    .line 5
    :goto_0
    iget-object v6, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    if-ne v6, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getWidth()I

    move-result v5

    :goto_1
    if-lt v0, v4, :cond_2

    if-gt v0, v5, :cond_2

    if-ltz v3, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/widget/EditText;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getTop()I

    move-result v4

    sub-int/2addr v0, v4

    if-gt v3, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_3

    const-string p1, ""

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->c:Leltos/simpledialogfragment/list/ClearableEditText$b;

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {p1}, Leltos/simpledialogfragment/list/ClearableEditText$b;->a()V

    :cond_3
    return v2

    .line 11
    :cond_4
    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->d:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method public setClearDrawable(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected setClearIconVisible(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/list/ClearableEditText;->b()Z

    move-result v0

    if-eq p1, v0, :cond_4

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    sget-object v1, Leltos/simpledialogfragment/list/ClearableEditText$Location;->LEFT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v1, p1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    move-object v1, v4

    .line 3
    :goto_1
    sget-object v5, Leltos/simpledialogfragment/list/ClearableEditText$Location;->RIGHT:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    if-ne v0, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    iget-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    move-object p1, v4

    .line 4
    :goto_3
    invoke-super {p0, v1, v4, p1, v4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public setClearPosition(Leltos/simpledialogfragment/list/ClearableEditText$Location;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->a:Leltos/simpledialogfragment/list/ClearableEditText$Location;

    return-void
.end method

.method public setListener(Leltos/simpledialogfragment/list/ClearableEditText$b;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->c:Leltos/simpledialogfragment/list/ClearableEditText$b;

    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->e:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/list/ClearableEditText;->d:Landroid/view/View$OnTouchListener;

    return-void
.end method

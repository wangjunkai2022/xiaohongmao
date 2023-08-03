.class public Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;,
        Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;

.field private b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

.field private c:Z

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/shizhefei/view/indicator/c$a;

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/view/View;

.field private l:Z

.field private m:I

.field private n:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->d:Landroid/graphics/Paint;

    .line 4
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->g:I

    .line 5
    new-instance v1, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V

    iput-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i:Lcom/shizhefei/view/indicator/c$a;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m:I

    .line 7
    new-instance v2, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-direct {v2, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {p1, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, p1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setSplitAuto(Z)V

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->d:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    iget-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->d:Landroid/graphics/Paint;

    const v1, 0x33aaaaaa

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40400000    # 3.0f

    .line 14
    invoke-direct {p0, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m(F)I

    move-result p2

    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->f:I

    .line 15
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->d:Landroid/graphics/Paint;

    int-to-float p2, p2

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    invoke-virtual {v1, p2, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 16
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 17
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    new-instance p2, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;

    invoke-direct {p2, p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;)V

    iput-object p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;

    invoke-virtual {p1, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnItemSelectListener(Lcom/shizhefei/view/indicator/c$d;)V

    return-void
.end method

.method static synthetic d(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->g:I

    return p0
.end method

.method static synthetic e(Lcom/shizhefei/view/indicator/ScrollIndicatorView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->l(I)V

    return-void
.end method

.method static synthetic f(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic h(Lcom/shizhefei/view/indicator/ScrollIndicatorView;F)F
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->n:F

    return p1
.end method

.method static synthetic i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    return-object p0
.end method

.method static synthetic j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->c:Z

    return p0
.end method

.method static synthetic k(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    return-object p1
.end method

.method private l(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5
    :cond_1
    new-instance v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$b;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$b;-><init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private m(F)I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private n(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getScrollBar()Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 4
    sget-object v2, Lcom/shizhefei/view/indicator/ScrollIndicatorView$c;->a:[I

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    if-eq v2, v4, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v4

    .line 7
    :goto_0
    iget-object v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->b(I)I

    move-result v3

    .line 8
    iget-object v6, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-interface {v0, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v6

    .line 9
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5, v5, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 11
    iget-object v7, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v3

    div-int/2addr v7, v4

    int-to-float v4, v7

    int-to-float v2, v2

    .line 12
    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    invoke-virtual {p1, v5, v5, v3, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 14
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 15
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m:I

    .line 3
    iget v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->g:I

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->l(I)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 7
    invoke-virtual {p0, v2, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 8
    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m:I

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1, p2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->b(IZ)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->c()Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->c:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->h:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget-object v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getScrollBar()Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v3

    sget-object v4, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-ne v3, v4, :cond_1

    .line 12
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->n(Landroid/graphics/Canvas;)V

    .line 13
    :cond_1
    iget-object v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v3, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v3, :cond_2

    .line 15
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->n(Landroid/graphics/Canvas;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/4 v3, 0x0

    .line 17
    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    .line 19
    iget-object v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 20
    iget v4, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->f:I

    invoke-virtual {v3, v2, v2, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 21
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 22
    :cond_3
    iget v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->f:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m(F)I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p1, v2, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-direct {p0, v4}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m(F)I

    move-result v2

    int-to-float v8, v2

    int-to-float v9, v0

    iget-object v10, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->d:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 24
    :goto_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->c:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 7
    iput-boolean v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->l:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 9
    iget-boolean p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->l:Z

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->invalidate(Landroid/graphics/Rect;)V

    .line 12
    iput-boolean v3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->l:Z

    :cond_1
    :goto_0
    return v1

    .line 13
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;

    move-result-object v0

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/shizhefei/view/indicator/c$c;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getOnIndicatorItemClickListener()Lcom/shizhefei/view/indicator/c$c;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/c$d;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->b()Lcom/shizhefei/view/indicator/c$d;

    move-result-object v0

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/c$e;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getOnTransitionListener()Lcom/shizhefei/view/indicator/c$e;

    move-result-object v0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->E()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    if-ltz p3, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p3, p1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 6
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->m:I

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->g:I

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 1
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->n:F

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    mul-float v1, v1, p2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 7
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->onPageScrolled(IFI)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->l(I)V

    :cond_0
    return-void
.end method

.method public p(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->q(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public q(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    iput p2, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->f:I

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/c$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i:Lcom/shizhefei/view/indicator/c$a;

    invoke-virtual {v0, v1}, Lcom/shizhefei/view/indicator/c$b;->g(Lcom/shizhefei/view/indicator/c$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setAdapter(Lcom/shizhefei/view/indicator/c$b;)V

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i:Lcom/shizhefei/view/indicator/c$a;

    invoke-virtual {p1, v0}, Lcom/shizhefei/view/indicator/c$b;->e(Lcom/shizhefei/view/indicator/c$a;)V

    .line 5
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i:Lcom/shizhefei/view/indicator/c$a;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/c$a;->a()V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setItemClickable(Z)V

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/shizhefei/view/indicator/c$c;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnIndicatorItemClickListener(Lcom/shizhefei/view/indicator/c$c;)V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/c$d;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$d;->c(Lcom/shizhefei/view/indicator/c$d;)V

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/c$e;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setOnTransitionListener(Lcom/shizhefei/view/indicator/c$e;)V

    return-void
.end method

.method public setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->h:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setPinnedTabBgColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabBgId(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->setPinnedTabBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPinnedTabView(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->c:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k:Landroid/view/View;

    .line 4
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public setSplitAuto(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b:Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->G(Z)V

    return-void
.end method

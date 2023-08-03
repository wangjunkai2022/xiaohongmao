.class public Lcom/shizhefei/view/indicator/RecyclerIndicatorView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "RecyclerIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/shizhefei/view/indicator/c$b;

.field private b:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

.field private c:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private d:F

.field private e:I

.field private f:I

.field private g:Lcom/shizhefei/view/indicator/c$c;

.field private h:Lcom/shizhefei/view/indicator/c$d;

.field private i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

.field private j:Lcom/shizhefei/view/indicator/c$e;

.field private k:[I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k:[I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l:Z

    .line 5
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 8
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k:[I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l:Z

    .line 10
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 13
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k:[I

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l:Z

    .line 15
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic d(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic e(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)I
    .locals 0

    iget p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    return p0
.end method

.method static synthetic f(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$e;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    return-object p0
.end method

.method static synthetic g(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l:Z

    return p0
.end method

.method static synthetic h(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$c;
    .locals 0

    iget-object p0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->g:Lcom/shizhefei/view/indicator/c$c;

    return-object p0
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->b:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$b;->a:[I

    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result v4

    sub-int/2addr v0, v4

    div-int/2addr v0, v2

    .line 6
    :goto_0
    iget v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->m:I

    if-nez v4, :cond_5

    .line 7
    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 8
    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v3}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k(IFZ)I

    move-result v3

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    goto :goto_1

    :cond_4
    return-void

    .line 10
    :cond_5
    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->n:I

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    .line 11
    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->n:I

    iget v6, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->d:F

    invoke-direct {p0, v5, v6, v3}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k(IFZ)I

    move-result v3

    if-eqz v4, :cond_6

    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->d:F

    mul-float v4, v4, v6

    add-float/2addr v4, v5

    .line 13
    :goto_1
    iget-object v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v5}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    .line 14
    div-int/2addr v3, v2

    int-to-float v2, v3

    add-float/2addr v4, v2

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    int-to-float v0, v0

    .line 16
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v1, v1, v5, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 18
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private k(IFZ)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_3

    .line 4
    :cond_1
    iget-object p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    .line 5
    iget-object v2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p2

    mul-float p3, p3, v2

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    :goto_0
    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 7
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p2, p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->b(I)I

    move-result p2

    .line 8
    iget-object p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {p3, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->a(I)I

    move-result p3

    .line 9
    invoke-virtual {v0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/view/View;->layout(IIII)V

    return p1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getSlideView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method private m(II)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$a;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$a;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Landroid/content/Context;I)V

    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private n(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method

.method private o(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    iget v2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, v0, p1, v2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b(IZ)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    iput p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    .line 2
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    .line 3
    iget p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->m:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l(IF)V

    .line 5
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->n(I)V

    .line 6
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->h:Lcom/shizhefei/view/indicator/c$d;

    if-nez p2, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->n(I)V

    .line 9
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->h:Lcom/shizhefei/view/indicator/c$d;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    iget v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    invoke-interface {p2, p1, v0, v1}, Lcom/shizhefei/view/indicator/c$d;->a(Landroid/view/View;II)V

    :cond_2
    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->getGravity()Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    move-result-object v0

    sget-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    return v0
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    return-object v0
.end method

.method public getOnIndicatorItemClickListener()Lcom/shizhefei/view/indicator/c$c;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->g:Lcom/shizhefei/view/indicator/c$c;

    return-object v0
.end method

.method public getOnItemSelectListener()Lcom/shizhefei/view/indicator/c$d;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->h:Lcom/shizhefei/view/indicator/c$d;

    return-object v0
.end method

.method public getOnTransitionListener()Lcom/shizhefei/view/indicator/c$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreSelectItem()I
    .locals 1

    iget v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    return v0
.end method

.method protected l(IF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float v6, v4, v6

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v4

    add-float/2addr v0, v6

    mul-float v0, v0, p2

    sub-float/2addr v6, v0

    :cond_0
    float-to-int v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    if-eqz v1, :cond_6

    .line 8
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k:[I

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    if-ge v5, v4, :cond_3

    aget v7, v1, v5

    .line 9
    invoke-virtual {p0, v7}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v8

    if-eq v7, p1, :cond_2

    if-eq v7, v2, :cond_2

    if-eqz v8, :cond_2

    .line 10
    iget-object v9, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    invoke-interface {v9, v8, v7, v6}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    invoke-virtual {p0, v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v4, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    iget v5, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->p:I

    invoke-interface {v4, v1, v5, v6}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 13
    :cond_4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    invoke-interface {v1, v0, p1, v4}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 16
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k:[I

    aput p1, v0, v3

    .line 17
    :cond_5
    invoke-virtual {p0, v2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 18
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    invoke-interface {v0, p1, v2, p2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 19
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->k:[I

    const/4 p2, 0x1

    aput v2, p1, p2

    :cond_6
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 3
    iget-object p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 4
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l(IF)V

    .line 5
    iput p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f:I

    :cond_0
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->m:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iput p3, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->e:I

    .line 2
    iput p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->n:I

    .line 3
    iput p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->d:F

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar;->onPageScrolled(IFI)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l(IF)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l(IF)V

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/shizhefei/view/indicator/c$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a:Lcom/shizhefei/view/indicator/c$b;

    .line 2
    new-instance v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Lcom/shizhefei/view/indicator/c$b;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->b:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    .line 3
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->b(IZ)V

    return-void
.end method

.method public setItemClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->l:Z

    return-void
.end method

.method public setOnIndicatorItemClickListener(Lcom/shizhefei/view/indicator/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->g:Lcom/shizhefei/view/indicator/c$c;

    return-void
.end method

.method public setOnItemSelectListener(Lcom/shizhefei/view/indicator/c$d;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->h:Lcom/shizhefei/view/indicator/c$d;

    return-void
.end method

.method public setOnTransitionListener(Lcom/shizhefei/view/indicator/c$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->j:Lcom/shizhefei/view/indicator/c$e;

    .line 2
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->n(I)V

    .line 3
    iget p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o:I

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->o(I)V

    return-void
.end method

.method public setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->i:Lcom/shizhefei/view/indicator/slidebar/ScrollBar;

    return-void
.end method

.class public Lcom/shizhefei/view/indicator/d;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shizhefei/view/indicator/d$c;,
        Lcom/shizhefei/view/indicator/d$e;,
        Lcom/shizhefei/view/indicator/d$f;,
        Lcom/shizhefei/view/indicator/d$d;,
        Lcom/shizhefei/view/indicator/d$g;
    }
.end annotation


# instance fields
.field protected a:Lcom/shizhefei/view/indicator/c;

.field protected b:Landroidx/viewpager/widget/ViewPager;

.field private c:Lcom/shizhefei/view/indicator/d$d;

.field protected d:Lcom/shizhefei/view/indicator/d$g;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/c;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shizhefei/view/indicator/d;-><init>(Lcom/shizhefei/view/indicator/c;Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/shizhefei/view/indicator/c;Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shizhefei/view/indicator/d;->e:Z

    .line 4
    iput-object p1, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    .line 5
    iput-object p2, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    .line 6
    invoke-interface {p1, p3}, Lcom/shizhefei/view/indicator/c;->setItemClickable(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/d;->i()V

    .line 8
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/d;->j()V

    return-void
.end method

.method static synthetic a(Lcom/shizhefei/view/indicator/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/d;->e:Z

    return p0
.end method


# virtual methods
.method public b()Lcom/shizhefei/view/indicator/d$d;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->c:Lcom/shizhefei/view/indicator/d$d;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/c;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public d()Lcom/shizhefei/view/indicator/c;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    return-object v0
.end method

.method public e()Lcom/shizhefei/view/indicator/c$c;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/c;->getOnIndicatorItemClickListener()Lcom/shizhefei/view/indicator/c$c;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/shizhefei/view/indicator/d$g;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->d:Lcom/shizhefei/view/indicator/d$g;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/c;->getPreSelectItem()I

    move-result v0

    return v0
.end method

.method public h()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    return-object v0
.end method

.method protected i()V
    .locals 2

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    new-instance v1, Lcom/shizhefei/view/indicator/d$a;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/d$a;-><init>(Lcom/shizhefei/view/indicator/d;)V

    invoke-interface {v0, v1}, Lcom/shizhefei/view/indicator/c;->setOnItemSelectListener(Lcom/shizhefei/view/indicator/c$d;)V

    return-void
.end method

.method protected j()V
    .locals 2

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/shizhefei/view/indicator/d$b;

    invoke-direct {v1, p0}, Lcom/shizhefei/view/indicator/d$b;-><init>(Lcom/shizhefei/view/indicator/d;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->c:Lcom/shizhefei/view/indicator/d$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/shizhefei/view/indicator/d$d;->b()V

    :cond_0
    return-void
.end method

.method public l(Lcom/shizhefei/view/indicator/d$d;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/d;->c:Lcom/shizhefei/view/indicator/d$d;

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/d$d;->a()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/d$d;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/c;->setAdapter(Lcom/shizhefei/view/indicator/c$b;)V

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/d;->e:Z

    return-void
.end method

.method public n(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0, p1, p2}, Lcom/shizhefei/view/indicator/c;->b(IZ)V

    return-void
.end method

.method public o(Lcom/shizhefei/view/indicator/c$e;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/c;->setOnTransitionListener(Lcom/shizhefei/view/indicator/c$e;)V

    return-void
.end method

.method public p(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/c;->setScrollBar(Lcom/shizhefei/view/indicator/slidebar/ScrollBar;)V

    return-void
.end method

.method public q(Lcom/shizhefei/view/indicator/c$c;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/c;->setOnIndicatorItemClickListener(Lcom/shizhefei/view/indicator/c$c;)V

    return-void
.end method

.method public r(Lcom/shizhefei/view/indicator/d$g;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/d;->d:Lcom/shizhefei/view/indicator/d$g;

    return-void
.end method

.method public s(I)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(I)V

    return-void
.end method

.method public u(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public v(I)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

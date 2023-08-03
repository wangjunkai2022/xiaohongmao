.class public Lme/relex/circleindicator/CircleIndicator3;
.super Lme/relex/circleindicator/BaseCircleIndicator;
.source "CircleIndicator3.java"


# instance fields
.field private o:Landroidx/viewpager2/widget/ViewPager2;

.field private final p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private final q:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$a;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 3
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$b;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->q:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$a;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 6
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$b;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->q:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$a;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 9
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$b;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->q:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lme/relex/circleindicator/BaseCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$a;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$a;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 12
    new-instance p1, Lme/relex/circleindicator/CircleIndicator3$b;

    invoke-direct {p1, p0}, Lme/relex/circleindicator/CircleIndicator3$b;-><init>(Lme/relex/circleindicator/CircleIndicator3;)V

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->q:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-void
.end method

.method static synthetic o(Lme/relex/circleindicator/CircleIndicator3;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic p(Lme/relex/circleindicator/CircleIndicator3;)V
    .locals 0

    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator3;->q()V

    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 3
    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lme/relex/circleindicator/CircleIndicator3;->i(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(I)V
    .locals 0

    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->b(I)V

    return-void
.end method

.method public bridge synthetic e(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->e(I)V

    return-void
.end method

.method public bridge synthetic f(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->f(II)V

    return-void
.end method

.method public getAdapterDataObserver()Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
    .locals 1

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3;->q:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    return-object v0
.end method

.method public bridge synthetic i(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->i(II)V

    return-void
.end method

.method public bridge synthetic l(Lme/relex/circleindicator/b;)V
    .locals 0

    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->l(Lme/relex/circleindicator/b;)V

    return-void
.end method

.method public bridge synthetic m(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->m(I)V

    return-void
.end method

.method public bridge synthetic n(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lme/relex/circleindicator/BaseCircleIndicator;->n(II)V

    return-void
.end method

.method public bridge synthetic setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V
    .locals 0
    .param p1    # Lme/relex/circleindicator/BaseCircleIndicator$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lme/relex/circleindicator/BaseCircleIndicator;->setIndicatorCreatedListener(Lme/relex/circleindicator/BaseCircleIndicator$a;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    .line 4
    invoke-direct {p0}, Lme/relex/circleindicator/CircleIndicator3;->q()V

    .line 5
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 6
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 7
    iget-object p1, p0, Lme/relex/circleindicator/CircleIndicator3;->p:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3;->o:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    :cond_0
    return-void
.end method

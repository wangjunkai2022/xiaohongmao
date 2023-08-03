.class public Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "HorizontalInfiniteCycleViewPager.java"

# interfaces
.implements Lcom/gigamole/infinitecycleviewpager/g;


# instance fields
.field private a:Lcom/gigamole/infinitecycleviewpager/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    new-instance v0, Lcom/gigamole/infinitecycleviewpager/b;

    invoke-direct {v0, p1, p0, p2}, Lcom/gigamole/infinitecycleviewpager/b;-><init>(Landroid/content/Context;Lcom/gigamole/infinitecycleviewpager/g;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    const/4 p2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->g0()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->h0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->k0()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->o0()V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->D0(Z)V

    :cond_0
    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->W()Lcom/gigamole/infinitecycleviewpager/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->W()Lcom/gigamole/infinitecycleviewpager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/c;->a()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCenterPageScaleOffset()F
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->V()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->Y()Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMaxPageScale()F
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->Z()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinPageScale()F
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->a0()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getMinPageScaleOffset()F
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->b0()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getOnInfiniteCyclePageTransformListener()Lcom/gigamole/infinitecycleviewpager/e;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->c0()Lcom/gigamole/infinitecycleviewpager/e;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRealItem()I
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->d0()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getScrollDuration()I
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->e0()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getState()I
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->f0()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->E0()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gigamole/infinitecycleviewpager/b;->E0()V

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/gigamole/infinitecycleviewpager/b;->l0(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/gigamole/infinitecycleviewpager/b;->m0(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->n0(Z)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->t0(Landroidx/viewpager/widget/PagerAdapter;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 3
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-virtual {p1}, Lcom/gigamole/infinitecycleviewpager/b;->q0()V

    :goto_0
    return-void
.end method

.method public setCenterPageScaleOffset(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->u0(F)V

    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/gigamole/infinitecycleviewpager/b;->v0(I)I

    move-result p1

    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->w0(Landroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public setMaxPageScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->x0(F)V

    :cond_0
    return-void
.end method

.method public setMediumScaled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->y0(Z)V

    :cond_0
    return-void
.end method

.method public setMinPageScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->z0(F)V

    :cond_0
    return-void
.end method

.method public setMinPageScaleOffset(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->A0(F)V

    :cond_0
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 0

    const/4 p1, 0x2

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public setOnInfiniteCyclePageTransformListener(Lcom/gigamole/infinitecycleviewpager/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->B0(Lcom/gigamole/infinitecycleviewpager/e;)V

    :cond_0
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    const/4 p1, 0x2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method

.method public setPageMargin(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    return-void
.end method

.method public setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    .locals 0

    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/gigamole/infinitecycleviewpager/b;->X()Lcom/gigamole/infinitecycleviewpager/b$e;

    move-result-object p2

    :goto_0
    const/4 p1, 0x0

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    return-void
.end method

.method public setScrollDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/HorizontalInfiniteCycleViewPager;->a:Lcom/gigamole/infinitecycleviewpager/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->C0(I)V

    :cond_0
    return-void
.end method

.method public setWillNotCacheDrawing(Z)V
    .locals 0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setWillNotCacheDrawing(Z)V

    return-void
.end method

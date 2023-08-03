.class public Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->a:Z

    .line 5
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;

    invoke-direct {p1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/utils/d;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public scrollTo(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->a:Z

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->a:Z

    return-void
.end method

.method public setScanScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/CustomViewPager;->a:Z

    return-void
.end method

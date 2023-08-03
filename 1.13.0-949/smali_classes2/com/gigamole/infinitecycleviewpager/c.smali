.class Lcom/gigamole/infinitecycleviewpager/c;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "InfiniteCyclePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gigamole/infinitecycleviewpager/c$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x989680


# instance fields
.field private final a:Landroidx/viewpager/widget/PagerAdapter;

.field private b:Lcom/gigamole/infinitecycleviewpager/c$a;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    return-void
.end method


# virtual methods
.method public a()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method protected b(I)I
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method public c(Lcom/gigamole/infinitecycleviewpager/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/c;->b:Lcom/gigamole/infinitecycleviewpager/c$a;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p2}, Lcom/gigamole/infinitecycleviewpager/c;->b(I)I

    move-result p2

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0x989680

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/c;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Lcom/gigamole/infinitecycleviewpager/c;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p2}, Lcom/gigamole/infinitecycleviewpager/c;->b(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->b:Lcom/gigamole/infinitecycleviewpager/c$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/gigamole/infinitecycleviewpager/c$a;->a()V

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/viewpager/widget/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/c;->a:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

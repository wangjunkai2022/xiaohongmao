.class Lme/relex/circleindicator/CircleIndicator3$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "CircleIndicator3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator3;


# direct methods
.method constructor <init>(Lme/relex/circleindicator/CircleIndicator3;)V
    .locals 0

    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator3$a;->a:Lme/relex/circleindicator/CircleIndicator3;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3$a;->a:Lme/relex/circleindicator/CircleIndicator3;

    iget v1, v0, Lme/relex/circleindicator/BaseCircleIndicator;->l:I

    if-eq p1, v1, :cond_1

    .line 2
    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator3;->o(Lme/relex/circleindicator/CircleIndicator3;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3$a;->a:Lme/relex/circleindicator/CircleIndicator3;

    .line 3
    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator3;->o(Lme/relex/circleindicator/CircleIndicator3;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator3$a;->a:Lme/relex/circleindicator/CircleIndicator3;

    invoke-virtual {v0, p1}, Lme/relex/circleindicator/CircleIndicator3;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/shizhefei/view/indicator/a$b;
.super Ljava/lang/Object;
.source "BannerComponent.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shizhefei/view/indicator/a;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/a;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/a$b;->a:Lcom/shizhefei/view/indicator/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/a$b;->a:Lcom/shizhefei/view/indicator/a;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/c;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/shizhefei/view/indicator/a$b;->a:Lcom/shizhefei/view/indicator/a;

    iget-object v1, v0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/a;->w(Lcom/shizhefei/view/indicator/a;)Lcom/shizhefei/view/indicator/d$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$f;->d(I)I

    move-result p1

    invoke-interface {v1, p1, p2, p3}, Lcom/shizhefei/view/indicator/c;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/a$b;->a:Lcom/shizhefei/view/indicator/a;

    iget-object v1, v0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/a;->w(Lcom/shizhefei/view/indicator/a;)Lcom/shizhefei/view/indicator/d$f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$f;->d(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/shizhefei/view/indicator/c;->b(IZ)V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/a$b;->a:Lcom/shizhefei/view/indicator/a;

    iget-object v1, v0, Lcom/shizhefei/view/indicator/d;->d:Lcom/shizhefei/view/indicator/d$g;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shizhefei/view/indicator/d;->a:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0}, Lcom/shizhefei/view/indicator/c;->getPreSelectItem()I

    move-result v0

    iget-object v2, p0, Lcom/shizhefei/view/indicator/a$b;->a:Lcom/shizhefei/view/indicator/a;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/a;->w(Lcom/shizhefei/view/indicator/a;)Lcom/shizhefei/view/indicator/d$f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/shizhefei/view/indicator/d$f;->d(I)I

    move-result p1

    invoke-interface {v1, v0, p1}, Lcom/shizhefei/view/indicator/d$g;->a(II)V

    :cond_0
    return-void
.end method

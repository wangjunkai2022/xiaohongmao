.class Lcom/gigamole/infinitecycleviewpager/b$c;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "InfiniteCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gigamole/infinitecycleviewpager/b;


# direct methods
.method constructor <init>(Lcom/gigamole/infinitecycleviewpager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {v0, p1}, Lcom/gigamole/infinitecycleviewpager/b;->E(Lcom/gigamole/infinitecycleviewpager/b;I)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/gigamole/infinitecycleviewpager/b;->e(Lcom/gigamole/infinitecycleviewpager/b;I)I

    .line 2
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->D(Lcom/gigamole/infinitecycleviewpager/b;)I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->F(Lcom/gigamole/infinitecycleviewpager/b;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 3
    :cond_0
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->p(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;

    move-result-object p3

    sget-object v2, Lcom/gigamole/infinitecycleviewpager/b$f;->a:Lcom/gigamole/infinitecycleviewpager/b$f;

    if-ne p3, v2, :cond_2

    cmpl-float p3, p2, v1

    if-lez p3, :cond_2

    .line 4
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->r(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/gigamole/infinitecycleviewpager/g;->getCurrentItem()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p3, v2}, Lcom/gigamole/infinitecycleviewpager/b;->I(Lcom/gigamole/infinitecycleviewpager/b;F)F

    .line 5
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    int-to-float v2, p1

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->H(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    sget-object v2, Lcom/gigamole/infinitecycleviewpager/b$f;->b:Lcom/gigamole/infinitecycleviewpager/b$f;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/gigamole/infinitecycleviewpager/b$f;->c:Lcom/gigamole/infinitecycleviewpager/b$f;

    :goto_0
    invoke-static {p3, v2}, Lcom/gigamole/infinitecycleviewpager/b;->q(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    :cond_2
    int-to-float p1, p1

    .line 6
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->H(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result p3

    cmpl-float p1, p1, p3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 7
    :goto_1
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->p(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;

    move-result-object p3

    sget-object v2, Lcom/gigamole/infinitecycleviewpager/b$f;->b:Lcom/gigamole/infinitecycleviewpager/b$f;

    if-ne p3, v2, :cond_4

    if-nez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    sget-object p3, Lcom/gigamole/infinitecycleviewpager/b$f;->c:Lcom/gigamole/infinitecycleviewpager/b$f;

    invoke-static {p1, p3}, Lcom/gigamole/infinitecycleviewpager/b;->q(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    goto :goto_2

    .line 9
    :cond_4
    iget-object p3, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p3}, Lcom/gigamole/infinitecycleviewpager/b;->p(Lcom/gigamole/infinitecycleviewpager/b;)Lcom/gigamole/infinitecycleviewpager/b$f;

    move-result-object p3

    sget-object v3, Lcom/gigamole/infinitecycleviewpager/b$f;->c:Lcom/gigamole/infinitecycleviewpager/b$f;

    if-ne p3, v3, :cond_5

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, v2}, Lcom/gigamole/infinitecycleviewpager/b;->q(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    .line 11
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1}, Lcom/gigamole/infinitecycleviewpager/b;->w(Lcom/gigamole/infinitecycleviewpager/b;)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    sget-object p3, Lcom/gigamole/infinitecycleviewpager/b$f;->b:Lcom/gigamole/infinitecycleviewpager/b$f;

    invoke-static {p1, p3}, Lcom/gigamole/infinitecycleviewpager/b;->t(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    goto :goto_3

    .line 13
    :cond_6
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    sget-object p3, Lcom/gigamole/infinitecycleviewpager/b$f;->c:Lcom/gigamole/infinitecycleviewpager/b$f;

    invoke-static {p1, p3}, Lcom/gigamole/infinitecycleviewpager/b;->t(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    .line 14
    :goto_3
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, p2}, Lcom/gigamole/infinitecycleviewpager/b;->x(Lcom/gigamole/infinitecycleviewpager/b;F)F

    .line 15
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, p2}, Lcom/gigamole/infinitecycleviewpager/b;->J(Lcom/gigamole/infinitecycleviewpager/b;F)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    :cond_7
    cmpl-float p1, p2, v1

    if-nez p1, :cond_8

    .line 16
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1}, Lcom/gigamole/infinitecycleviewpager/b;->L(Lcom/gigamole/infinitecycleviewpager/b;)V

    .line 17
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    sget-object p2, Lcom/gigamole/infinitecycleviewpager/b$f;->a:Lcom/gigamole/infinitecycleviewpager/b$f;

    invoke-static {p1, p2}, Lcom/gigamole/infinitecycleviewpager/b;->t(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    .line 18
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, p2}, Lcom/gigamole/infinitecycleviewpager/b;->q(Lcom/gigamole/infinitecycleviewpager/b;Lcom/gigamole/infinitecycleviewpager/b$f;)Lcom/gigamole/infinitecycleviewpager/b$f;

    .line 19
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, v0}, Lcom/gigamole/infinitecycleviewpager/b;->B(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 20
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, v0}, Lcom/gigamole/infinitecycleviewpager/b;->z(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 21
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, v0}, Lcom/gigamole/infinitecycleviewpager/b;->o(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 22
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, v0}, Lcom/gigamole/infinitecycleviewpager/b;->v(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    .line 23
    iget-object p1, p0, Lcom/gigamole/infinitecycleviewpager/b$c;->a:Lcom/gigamole/infinitecycleviewpager/b;

    invoke-static {p1, v0}, Lcom/gigamole/infinitecycleviewpager/b;->G(Lcom/gigamole/infinitecycleviewpager/b;Z)Z

    :cond_8
    return-void
.end method

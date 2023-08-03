.class Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;
.super Lme/imid/swipebacklayout/lib/d$c;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/imid/swipebacklayout/lib/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;


# direct methods
.method private constructor <init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-direct {p0}, Lme/imid/swipebacklayout/lib/d$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;Lme/imid/swipebacklayout/lib/SwipeBackLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;-><init>(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p3

    and-int/lit8 p3, p3, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1

    .line 1
    iget-object p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p3

    and-int/lit8 p3, p3, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method public e(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public j(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lme/imid/swipebacklayout/lib/d$c;->j(I)V

    .line 2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;

    .line 4
    iget-object v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result v2

    invoke-interface {v1, p1, v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;->a(IF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;IIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Lme/imid/swipebacklayout/lib/d$c;->k(Landroid/view/View;IIII)V

    .line 2
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p1

    const/4 p4, 0x1

    and-int/2addr p1, p4

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    int-to-float p5, p2

    .line 4
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 5
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p1, p5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)F

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    int-to-float p5, p2

    .line 8
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->m(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 9
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p1, p5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)F

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    int-to-float p5, p3

    .line 12
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->k(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 13
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p1, p5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->j(Lme/imid/swipebacklayout/lib/SwipeBackLayout;F)F

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1, p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->b(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I

    .line 15
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1, p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->c(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I

    .line 16
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 17
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_3

    iget-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->a:Z

    if-nez p1, :cond_3

    .line 18
    iput-boolean p4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->a:Z

    .line 19
    :cond_3
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 20
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;

    .line 21
    iget-object p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object p3

    invoke-virtual {p3}, Lme/imid/swipebacklayout/lib/d;->E()I

    move-result p3

    iget-object p5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p5

    invoke-interface {p2, p3, p5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;->a(IF)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 23
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object p1

    invoke-virtual {p1}, Lme/imid/swipebacklayout/lib/d;->E()I

    move-result p1

    if-ne p1, p4, :cond_5

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 24
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    iget-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->a:Z

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->a:Z

    .line 26
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;

    .line 27
    invoke-interface {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;->c()V

    goto :goto_2

    .line 28
    :cond_5
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_7

    .line 29
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 30
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;

    .line 31
    instance-of p3, p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$c;

    if-eqz p3, :cond_6

    .line 32
    check-cast p2, Lme/imid/swipebacklayout/lib/SwipeBackLayout$c;

    invoke-interface {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$c;->b()V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public l(Landroid/view/View;FF)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 3
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpl-float p1, p2, v2

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 5
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    :goto_1
    move v3, v0

    goto :goto_4

    .line 6
    :cond_2
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    cmpg-float p1, p2, v2

    if-ltz p1, :cond_4

    cmpl-float p1, p2, v2

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p1

    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 8
    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->l(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    neg-int p1, v0

    :goto_3
    move v3, p1

    goto :goto_4

    .line 9
    :cond_5
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_7

    cmpg-float p2, p3, v2

    if-ltz p2, :cond_6

    cmpl-float p2, p3, v2

    if-nez p2, :cond_7

    .line 10
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->i(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p2

    iget-object p3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->d(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    .line 11
    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->n(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0xa

    neg-int p1, p1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x0

    .line 12
    :goto_5
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Lme/imid/swipebacklayout/lib/d;->V(II)Z

    .line 13
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public m(Landroid/view/View;I)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object p1

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lme/imid/swipebacklayout/lib/d;->H(II)Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 2
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lme/imid/swipebacklayout/lib/d;->H(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3, v2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->g(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lme/imid/swipebacklayout/lib/d;->H(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3, v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->g(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lme/imid/swipebacklayout/lib/d;->H(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3, v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->g(Lme/imid/swipebacklayout/lib/SwipeBackLayout;I)I

    .line 8
    :cond_2
    :goto_0
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iget-object v3, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v3}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->h(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;

    .line 10
    iget-object v5, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->f(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v5

    invoke-interface {v4, v5}, Lme/imid/swipebacklayout/lib/SwipeBackLayout$b;->d(I)V

    goto :goto_1

    .line 11
    :cond_3
    iput-boolean v2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->a:Z

    :cond_4
    const/4 v3, 0x0

    .line 12
    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v4

    if-eq v4, v2, :cond_8

    iget-object v4, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v4}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v4

    if-ne v4, v1, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 14
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2, p2}, Lme/imid/swipebacklayout/lib/d;->g(II)Z

    move-result p2

    goto :goto_3

    .line 16
    :cond_6
    iget-object p2, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {p2}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->a(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)I

    move-result p2

    const/16 v0, 0xb

    if-ne p2, v0, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 17
    :cond_8
    :goto_2
    iget-object v0, p0, Lme/imid/swipebacklayout/lib/SwipeBackLayout$d;->b:Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    invoke-static {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->e(Lme/imid/swipebacklayout/lib/SwipeBackLayout;)Lme/imid/swipebacklayout/lib/d;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lme/imid/swipebacklayout/lib/d;->g(II)Z

    move-result p2

    :goto_3
    xor-int/2addr v2, p2

    :goto_4
    and-int/2addr p1, v2

    return p1
.end method

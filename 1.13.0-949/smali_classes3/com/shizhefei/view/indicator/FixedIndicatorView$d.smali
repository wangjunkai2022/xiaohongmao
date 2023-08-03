.class Lcom/shizhefei/view/indicator/FixedIndicatorView$d;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/widget/Scroller;

.field private final c:Landroid/view/animation/Interpolator;

.field final synthetic d:Lcom/shizhefei/view/indicator/FixedIndicatorView;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 3
    iput v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->a:I

    .line 4
    new-instance v0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d$a;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d$a;-><init>(Lcom/shizhefei/view/indicator/FixedIndicatorView$d;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->c:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    return v0
.end method

.method public d(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    sub-int v3, p2, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->d:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    iget v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.class Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->f(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->f(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->h(Lcom/shizhefei/view/indicator/ScrollIndicatorView;F)F

    .line 4
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->b(IZ)V

    .line 5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->j(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$a;->a:Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->i(Lcom/shizhefei/view/indicator/ScrollIndicatorView;)Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shizhefei/view/indicator/ScrollIndicatorView;->k(Lcom/shizhefei/view/indicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method

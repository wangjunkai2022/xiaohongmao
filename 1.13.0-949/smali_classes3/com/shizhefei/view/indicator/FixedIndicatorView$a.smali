.class Lcom/shizhefei/view/indicator/FixedIndicatorView$a;
.super Ljava/lang/Object;
.source "FixedIndicatorView.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/FixedIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shizhefei/view/indicator/FixedIndicatorView;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->d(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/FixedIndicatorView$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView$d;->e()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->e(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    if-ge v3, v1, :cond_1

    .line 6
    iget-object v4, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v4}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v5, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->n(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-ge v3, v1, :cond_5

    .line 9
    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-ge v3, v0, :cond_2

    .line 10
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->m(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$b;

    move-result-object v7

    invoke-virtual {v7, v3, v6, v5}, Lcom/shizhefei/view/indicator/c$b;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_2

    .line 13
    :cond_2
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->l(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$b;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v5}, Lcom/shizhefei/view/indicator/c$b;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 14
    :goto_2
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$e;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 15
    iget-object v7, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v7}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->o(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Lcom/shizhefei/view/indicator/c$e;

    move-result-object v7

    iget-object v8, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v8}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v8

    if-ne v3, v8, :cond_3

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7, v6, v3, v8}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    .line 16
    :cond_4
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 17
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v6}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->q(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 19
    iget-object v6, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 20
    :cond_5
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->r(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->r(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->s(Lcom/shizhefei/view/indicator/FixedIndicatorView;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->C(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0, v4}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->g(Lcom/shizhefei/view/indicator/FixedIndicatorView;I)I

    .line 23
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->p(Lcom/shizhefei/view/indicator/FixedIndicatorView;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->b(IZ)V

    .line 24
    iget-object v0, p0, Lcom/shizhefei/view/indicator/FixedIndicatorView$a;->a:Lcom/shizhefei/view/indicator/FixedIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->h(Lcom/shizhefei/view/indicator/FixedIndicatorView;)V

    return-void
.end method

.class Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/RecyclerIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/shizhefei/view/indicator/c$b;

.field private b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;


# direct methods
.method public constructor <init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;Lcom/shizhefei/view/indicator/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;

    invoke-direct {p1, p0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;)V

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->b:Landroid/view/View$OnClickListener;

    .line 3
    iput-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->a:Lcom/shizhefei/view/indicator/c$b;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->a:Lcom/shizhefei/view/indicator/c$b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->a:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v1, p2, v0, p1}, Lcom/shizhefei/view/indicator/c$b;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance p1, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$a;

    invoke-direct {p1, p0, p2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$a;-><init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v2}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->e(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 6
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$e;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->e(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$e;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v1, p1, v0, v2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->f(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/shizhefei/view/indicator/c$e;->a(Landroid/view/View;IF)V

    :cond_2
    :goto_0
    return-void
.end method

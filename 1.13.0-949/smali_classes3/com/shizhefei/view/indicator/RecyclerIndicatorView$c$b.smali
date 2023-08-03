.class Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;
.super Ljava/lang/Object;
.source "RecyclerIndicatorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;->a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;->a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->g(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;->a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->h(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;->a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->h(Lcom/shizhefei/view/indicator/RecyclerIndicatorView;)Lcom/shizhefei/view/indicator/c$c;

    move-result-object v0

    iget-object v1, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;->a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    iget-object v1, v1, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    invoke-virtual {v1, p1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/shizhefei/view/indicator/c$c;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c$b;->a:Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;

    iget-object v0, v0, Lcom/shizhefei/view/indicator/RecyclerIndicatorView$c;->c:Lcom/shizhefei/view/indicator/RecyclerIndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/shizhefei/view/indicator/RecyclerIndicatorView;->b(IZ)V

    :cond_1
    return-void
.end method

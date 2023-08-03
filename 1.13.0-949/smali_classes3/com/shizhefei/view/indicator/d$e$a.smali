.class Lcom/shizhefei/view/indicator/d$e$a;
.super Lcom/shizhefei/view/viewpager/c;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/d$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/shizhefei/view/indicator/d$e;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/d$e;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-direct {p0}, Lcom/shizhefei/view/viewpager/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$e;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$e;->i(I)I

    move-result p1

    return p1
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$e;->d(I)I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/d$e;->k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/d$e;->j()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/d$e;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-static {v0}, Lcom/shizhefei/view/indicator/d$e;->f(Lcom/shizhefei/view/indicator/d$e;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7fffff9b

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/d$e;->c()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$e;->g(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getPageWidth(I)F
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e$a;->c:Lcom/shizhefei/view/indicator/d$e;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$e;->d(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/d$e;->h(I)F

    move-result p1

    return p1
.end method

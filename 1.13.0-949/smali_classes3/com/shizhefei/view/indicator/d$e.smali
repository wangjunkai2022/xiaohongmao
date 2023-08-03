.class public abstract Lcom/shizhefei/view/indicator/d$e;
.super Lcom/shizhefei/view/indicator/d$f;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/shizhefei/view/viewpager/c;

.field private c:Lcom/shizhefei/view/indicator/c$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/d$f;-><init>()V

    .line 2
    new-instance v0, Lcom/shizhefei/view/indicator/d$e$a;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/d$e$a;-><init>(Lcom/shizhefei/view/indicator/d$e;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->b:Lcom/shizhefei/view/viewpager/c;

    .line 3
    new-instance v0, Lcom/shizhefei/view/indicator/d$e$b;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/d$e$b;-><init>(Lcom/shizhefei/view/indicator/d$e;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->c:Lcom/shizhefei/view/indicator/c$b;

    return-void
.end method

.method static synthetic f(Lcom/shizhefei/view/indicator/d$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/d$e;->a:Z

    return p0
.end method


# virtual methods
.method public a()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->b:Lcom/shizhefei/view/viewpager/c;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->c:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->d()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->b:Lcom/shizhefei/view/viewpager/c;

    invoke-virtual {v0}, Lcom/shizhefei/view/viewpager/c;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract c()I
.end method

.method d(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/d$e;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/d$e;->c()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method e(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/d$e;->a:Z

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->c:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/c$b;->f(Z)V

    return-void
.end method

.method public g(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$e;->c:Lcom/shizhefei/view/indicator/c$b;

    return-object v0
.end method

.method public h(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public i(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract k(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

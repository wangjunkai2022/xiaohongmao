.class public abstract Lcom/shizhefei/view/indicator/d$c;
.super Lcom/shizhefei/view/indicator/d$f;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/shizhefei/view/indicator/b;

.field private b:Z

.field private c:Lcom/shizhefei/view/indicator/c$b;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shizhefei/view/indicator/d$f;-><init>()V

    .line 2
    new-instance v0, Lcom/shizhefei/view/indicator/d$c$b;

    invoke-direct {v0, p0}, Lcom/shizhefei/view/indicator/d$c$b;-><init>(Lcom/shizhefei/view/indicator/d$c;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->c:Lcom/shizhefei/view/indicator/c$b;

    .line 3
    new-instance v0, Lcom/shizhefei/view/indicator/d$c$a;

    invoke-direct {v0, p0, p1}, Lcom/shizhefei/view/indicator/d$c$a;-><init>(Lcom/shizhefei/view/indicator/d$c;Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->a:Lcom/shizhefei/view/indicator/b;

    return-void
.end method

.method static synthetic f(Lcom/shizhefei/view/indicator/d$c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shizhefei/view/indicator/d$c;->b:Z

    return p0
.end method


# virtual methods
.method public a()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->a:Lcom/shizhefei/view/indicator/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->c:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/c$b;->d()V

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->a:Lcom/shizhefei/view/indicator/b;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract c()I
.end method

.method d(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/shizhefei/view/indicator/d$c;->c()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method e(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/d$c;->b:Z

    .line 2
    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->c:Lcom/shizhefei/view/indicator/c$b;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/c$b;->f(Z)V

    return-void
.end method

.method public g()Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->a:Lcom/shizhefei/view/indicator/b;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/b;->a()Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->c:Lcom/shizhefei/view/indicator/c$b;

    return-object v0
.end method

.method public h(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c;->a:Lcom/shizhefei/view/indicator/b;

    invoke-virtual {v0, p1}, Lcom/shizhefei/view/indicator/b;->b(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public abstract i(I)Landroidx/fragment/app/Fragment;
.end method

.method public j(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public k(I)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public abstract l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

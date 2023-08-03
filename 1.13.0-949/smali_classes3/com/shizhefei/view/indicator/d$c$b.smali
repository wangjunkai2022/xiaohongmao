.class Lcom/shizhefei/view/indicator/d$c$b;
.super Lcom/shizhefei/view/indicator/c$b;
.source "IndicatorViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/shizhefei/view/indicator/d$c;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/d$c$b;->c:Lcom/shizhefei/view/indicator/d$c;

    invoke-direct {p0}, Lcom/shizhefei/view/indicator/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c$b;->c:Lcom/shizhefei/view/indicator/d$c;

    invoke-virtual {v0}, Lcom/shizhefei/view/indicator/d$c;->c()I

    move-result v0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/d$c$b;->c:Lcom/shizhefei/view/indicator/d$c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/shizhefei/view/indicator/d$c;->l(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

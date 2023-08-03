.class Lcom/shizhefei/view/indicator/d$a;
.super Ljava/lang/Object;
.source "IndicatorViewPager.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shizhefei/view/indicator/d;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/d;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/d$a;->a:Lcom/shizhefei/view/indicator/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shizhefei/view/indicator/d$a;->a:Lcom/shizhefei/view/indicator/d;

    iget-object p3, p1, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    instance-of v0, p3, Lcom/shizhefei/view/viewpager/SViewPager;

    if-eqz v0, :cond_0

    .line 2
    move-object p1, p3

    check-cast p1, Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p1}, Lcom/shizhefei/view/viewpager/SViewPager;->a()Z

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/shizhefei/view/indicator/d;->a(Lcom/shizhefei/view/indicator/d;)Z

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :goto_0
    return-void
.end method

.class Lcom/shizhefei/view/indicator/a$a;
.super Ljava/lang/Object;
.source "BannerComponent.java"

# interfaces
.implements Lcom/shizhefei/view/indicator/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shizhefei/view/indicator/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shizhefei/view/indicator/a;


# direct methods
.method constructor <init>(Lcom/shizhefei/view/indicator/a;)V
    .locals 0

    iput-object p1, p0, Lcom/shizhefei/view/indicator/a$a;->a:Lcom/shizhefei/view/indicator/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shizhefei/view/indicator/a$a;->a:Lcom/shizhefei/view/indicator/a;

    iget-object p3, p1, Lcom/shizhefei/view/indicator/d;->b:Landroidx/viewpager/widget/ViewPager;

    instance-of v0, p3, Lcom/shizhefei/view/viewpager/SViewPager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p3, Lcom/shizhefei/view/viewpager/SViewPager;

    invoke-virtual {p3}, Lcom/shizhefei/view/viewpager/SViewPager;->a()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/shizhefei/view/indicator/a;->n(IZ)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/shizhefei/view/indicator/a;->n(IZ)V

    :goto_0
    return-void
.end method

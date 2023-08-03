.class public Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;
.super Landroid/widget/RelativeLayout;
.source "ShipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    .line 2
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    .line 5
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->e(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->d(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->c(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f080650

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->c(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->e(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->g(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->f(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f08064f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->f(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->c(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x32

    const/16 p3, 0x12c

    const/16 p4, 0x168

    const/16 p5, 0x19a

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView$c;->a:Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;->f(Lcom/qennnsad/aknkaksd/util/roomanim/ShipView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x82

    const/16 p4, 0x1a4

    const/16 p5, 0x157

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    const/16 p1, 0x1c2

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

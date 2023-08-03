.class public Lcom/shizhefei/view/indicator/slidebar/e;
.super Lcom/shizhefei/view/indicator/slidebar/a;
.source "TextWidthColorBar.java"


# instance fields
.field private f:Lcom/shizhefei/view/indicator/c;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shizhefei/view/indicator/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Lcom/shizhefei/view/indicator/slidebar/a;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->g:I

    .line 3
    iput-object p2, p0, Lcom/shizhefei/view/indicator/slidebar/e;->f:Lcom/shizhefei/view/indicator/c;

    return-void
.end method

.method private i(Landroid/widget/TextView;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    iget p1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public b(I)I
    .locals 0

    .line 1
    iget p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->g:I

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->f:Lcom/shizhefei/view/indicator/c;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/c;->getIndicatorAdapter()Lcom/shizhefei/view/indicator/c$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->f:Lcom/shizhefei/view/indicator/c;

    invoke-interface {p1}, Lcom/shizhefei/view/indicator/c;->getCurrentItem()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/e;->h(I)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/e;->i(Landroid/widget/TextView;)I

    move-result p1

    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->g:I

    .line 5
    :cond_0
    iget p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->g:I

    return p1
.end method

.method protected h(I)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/shizhefei/view/indicator/slidebar/e;->f:Lcom/shizhefei/view/indicator/c;

    invoke-interface {v0, p1}, Lcom/shizhefei/view/indicator/c;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    return-object p1
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/e;->h(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/shizhefei/view/indicator/slidebar/e;->i(Landroid/widget/TextView;)I

    move-result p3

    add-int/lit8 p1, p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/e;->h(I)Landroid/widget/TextView;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/slidebar/e;->i(Landroid/widget/TextView;)I

    move-result p1

    int-to-float p3, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float p3, p3, v0

    int-to-float p1, p1

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    .line 3
    iput p1, p0, Lcom/shizhefei/view/indicator/slidebar/e;->g:I

    return-void
.end method

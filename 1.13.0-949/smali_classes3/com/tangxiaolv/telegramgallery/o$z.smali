.class Lcom/tangxiaolv/telegramgallery/o$z;
.super Lcom/tangxiaolv/telegramgallery/Components/i;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "z"
.end annotation


# instance fields
.field final synthetic e:Lcom/tangxiaolv/telegramgallery/o;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/o$z;->e:Lcom/tangxiaolv/telegramgallery/o;

    .line 2
    invoke-direct {p0, p2}, Lcom/tangxiaolv/telegramgallery/Components/i;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/o$z;->e:Lcom/tangxiaolv/telegramgallery/o;

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/o;->j0(Lcom/tangxiaolv/telegramgallery/o;)Lcom/tangxiaolv/telegramgallery/Components/AspectRatioFrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/o;->E0()Lcom/tangxiaolv/telegramgallery/o;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tangxiaolv/telegramgallery/o;->i0(Lcom/tangxiaolv/telegramgallery/o;Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_7

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    goto :goto_5

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 7
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/16 v5, 0x33

    :cond_1
    and-int/lit8 v6, v5, 0x7

    and-int/lit8 v5, v5, 0x70

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 8
    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    sub-int v6, p4, v3

    .line 9
    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    sub-int v6, p4, p2

    sub-int/2addr v6, v3

    .line 10
    div-int/lit8 v6, v6, 0x2

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_1
    sub-int/2addr v6, v7

    :goto_2
    const/16 v7, 0x10

    if-eq v5, v7, :cond_6

    const/16 v7, 0x30

    if-eq v5, v7, :cond_5

    const/16 v7, 0x50

    if-eq v5, v7, :cond_4

    .line 11
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_4
    add-int/lit8 v5, p5, 0x0

    sub-int/2addr v5, p3

    sub-int/2addr v5, v4

    .line 12
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 13
    :cond_5
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_6
    add-int/lit8 v5, p5, 0x0

    sub-int/2addr v5, p3

    sub-int/2addr v5, v4

    .line 14
    div-int/lit8 v5, v5, 0x2

    iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_3
    sub-int v2, v5, v2

    :goto_4
    add-int/2addr v3, v6

    add-int/2addr v4, v2

    .line 15
    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_7
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Components/i;->c()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    sget-object v2, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sget v3, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sget v2, Lcom/tangxiaolv/telegramgallery/Utils/a;->b:I

    sub-int/2addr v1, v2

    .line 5
    :cond_0
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    .line 9
    invoke-virtual/range {v2 .. v7}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.class Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;
.super Lcom/shizhefei/view/indicator/FixedIndicatorView;
.source "ScrollIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private A:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private F(Landroid/view/View;II)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-static {p2, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p3, v1, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 4
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p1, p2

    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->A:Z

    return v0
.end method

.method public G(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->A:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->A:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->A:Z

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/shizhefei/view/indicator/ScrollIndicatorView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 5
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, p1, p2}, Lcom/shizhefei/view/indicator/ScrollIndicatorView$e;->F(Landroid/view/View;II)I

    move-result v7

    if-ge v6, v7, :cond_0

    move v6, v7

    :cond_0
    add-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-le v5, v1, :cond_2

    .line 6
    invoke-virtual {v0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    :cond_2
    mul-int v6, v6, v2

    const/4 v2, 0x1

    if-le v6, v1, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 9
    invoke-virtual {p0, v2}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 11
    invoke-virtual {p0, v3}, Lcom/shizhefei/view/indicator/FixedIndicatorView;->setSplitMethod(I)V

    .line 12
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

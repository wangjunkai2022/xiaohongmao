.class public Lcom/tangxiaolv/telegramgallery/Actionbar/h;
.super Landroid/view/View;
.source "SimpleTextView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/text/Layout;

.field private b:Landroid/text/TextPaint;

.field private c:I

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private final n:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x33

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->c:I

    const/high16 p1, 0x40800000    # 4.0f

    .line 3
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    .line 4
    new-instance p1, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/a;->q()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->n:Landroid/graphics/Point;

    return-void
.end method

.method private a(I)Z
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->d:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int v1, p1, v1

    .line 4
    iget v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    sub-int/2addr v1, v3

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 5
    :goto_0
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v1, v3

    .line 7
    iget v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    sub-int/2addr v1, v3

    .line 8
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 9
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->d:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    int-to-float v5, v1

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 10
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 11
    :cond_2
    new-instance v3, Landroid/text/StaticLayout;

    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v11, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    const/high16 v4, 0x41000000    # 8.0f

    .line 12
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v5

    add-int v12, v1, v5

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    .line 13
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_6

    .line 14
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    iput v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->k:I

    .line 15
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    iput v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->l:I

    .line 16
    iget v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->c:I

    and-int/lit8 v3, v3, 0x7

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 17
    iget-object v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v1

    float-to-int v1, v1

    neg-int v1, v1

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->j:I

    goto :goto_1

    .line 18
    :cond_3
    iget-object v3, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    .line 19
    iget v2, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->k:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->j:I

    goto :goto_1

    .line 20
    :cond_4
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 21
    iput-object v1, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    .line 22
    iput v2, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->k:I

    .line 23
    iput v2, v0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->l:I

    .line 24
    :catch_0
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    return v1
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->m:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a(I)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getSideDrawablesSize()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->d:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->l:I

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->k:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->m:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->l:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->h:I

    add-int/2addr v2, v0

    .line 3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->c:I

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 8
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 10
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->k:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    add-int/2addr v0, v2

    .line 11
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 12
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 13
    :cond_1
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->l:I

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->i:I

    add-int/2addr v2, v3

    .line 14
    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v2

    .line 16
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 18
    :cond_2
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->c:I

    const/16 v2, 0x11

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 19
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->n:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->k:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    if-eqz v0, :cond_5

    .line 21
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->j:I

    add-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 23
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->j:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 24
    :cond_4
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 25
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->j:I

    add-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->m:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->a(I)Z

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->l:I

    .line 6
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->g:I

    .line 3
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->c:I

    return-void
.end method

.method public setLeftDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setLeftDrawableTopPadding(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->h:I

    return-void
.end method

.method public setRightDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    :cond_1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->f:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setRightDrawableTopPadding(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->i:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->d:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->d:Ljava/lang/CharSequence;

    .line 3
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b()Z

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-static {p1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result p1

    int-to-float p1, p1

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 4
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/h;->b:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

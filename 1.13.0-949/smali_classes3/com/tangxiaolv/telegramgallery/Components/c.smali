.class public Lcom/tangxiaolv/telegramgallery/Components/c;
.super Landroid/view/View;
.source "ClippingImageView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Bitmap;

.field private i:Landroid/graphics/Matrix;

.field private j:Z

.field private k:I

.field private l:Landroid/graphics/BitmapShader;

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/RectF;

.field private o:Landroid/graphics/RectF;

.field private p:Landroid/graphics/Matrix;

.field private q:F

.field private r:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->g:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->m:Landroid/graphics/Paint;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->n:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->p:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public getAnimationProgress()F
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    return v0
.end method

.method public getClipBottom()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->a:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->c:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->b:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->c:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->d:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->k:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->j:Z

    const/16 v2, 0x10e

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 6
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->e:I

    rem-int/lit16 v5, v1, 0x168

    if-eq v5, v3, :cond_2

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 10
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 12
    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 13
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int v3, v1, v3

    int-to-float v3, v3

    goto :goto_2

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int v5, v2, v5

    int-to-float v5, v5

    .line 15
    :cond_4
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float/2addr v3, v5

    .line 16
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3727c5ac    # 1.0E-5f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v6

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v6

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 19
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->p:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->n:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_3

    .line 21
    :cond_5
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 22
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->p:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->n:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 23
    :goto_3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->l:Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->p:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 24
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->d:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->c:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->a:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 25
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->n:Landroid/graphics/RectF;

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->k:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 26
    :cond_6
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->e:I

    if-eq v1, v3, :cond_9

    if-ne v1, v2, :cond_7

    goto :goto_4

    :cond_7
    const/16 v2, 0xb4

    if-ne v1, v2, :cond_8

    .line 27
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 28
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 29
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 30
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_5

    .line 31
    :cond_8
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 32
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_5

    .line 33
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 34
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->f:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 35
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 36
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 37
    :goto_5
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->b:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->d:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->c:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->a:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    aget v2, v2, v1

    const/4 v3, 0x1

    aget-object v4, v0, v3

    aget v4, v4, v1

    aget-object v0, v0, v1

    aget v0, v0, v1

    sub-float/2addr v4, v0

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    aget v0, v0, v3

    aget-object v2, p1, v3

    aget v2, v2, v3

    aget-object p1, p1, v1

    aget p1, p1, v3

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 4
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x2

    aget v0, v0, v2

    aget-object v4, p1, v3

    aget v4, v4, v2

    aget-object p1, p1, v1

    aget p1, p1, v2

    sub-float/2addr v4, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v4, v4, p1

    add-float/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x3

    aget v0, v0, v2

    aget-object v4, p1, v3

    aget v4, v4, v2

    aget-object p1, p1, v1

    aget p1, p1, v2

    sub-float/2addr v4, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v4, v4, p1

    add-float/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x4

    aget v0, v0, v2

    aget-object v4, p1, v3

    aget v4, v4, v2

    aget-object p1, p1, v1

    aget p1, p1, v2

    sub-float/2addr v4, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v4, v4, p1

    add-float/2addr v0, v4

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/c;->setClipHorizontal(I)V

    .line 7
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x5

    aget v0, v0, v2

    aget-object v4, p1, v3

    aget v4, v4, v2

    aget-object p1, p1, v1

    aget p1, p1, v2

    sub-float/2addr v4, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v4, v4, p1

    add-float/2addr v0, v4

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/c;->setClipTop(I)V

    .line 8
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x6

    aget v0, v0, v2

    aget-object v4, p1, v3

    aget v4, v4, v2

    aget-object p1, p1, v1

    aget p1, p1, v2

    sub-float/2addr v4, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v4, v4, p1

    add-float/2addr v0, v4

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/c;->setClipBottom(I)V

    .line 9
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    aget-object v0, p1, v1

    const/4 v2, 0x7

    aget v0, v0, v2

    aget-object v3, p1, v3

    aget v3, v3, v2

    aget-object p1, p1, v1

    aget p1, p1, v2

    sub-float/2addr v3, p1

    iget p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->q:F

    mul-float v3, v3, p1

    add-float/2addr v0, v3

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/tangxiaolv/telegramgallery/Components/c;->setRadius(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAnimationValues([[F)V
    .locals 0

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->r:[[F

    return-void
.end method

.method public setClipBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->c:I

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->b:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->b:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->c:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->d:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setClipVertical(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->a:I

    .line 2
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->d:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->h:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->o:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3
    iget-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->j:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->l:Landroid/graphics/BitmapShader;

    .line 5
    iget-object p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setNeedRadius(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->j:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->e:I

    return-void
.end method

.method public setRadius(I)V
    .locals 0

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Components/c;->k:I

    return-void
.end method

.class public Lcom/tangxiaolv/telegramgallery/Actionbar/e;
.super Landroid/graphics/drawable/Drawable;
.source "BackDrawable.java"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Z

.field private c:J

.field private d:Z

.field private e:F

.field private f:F

.field private g:I

.field private h:Z

.field private i:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->b:Z

    .line 4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->i:Landroid/view/animation/DecelerateInterpolator;

    .line 5
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iput-boolean p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->h:Z

    return-void
.end method


# virtual methods
.method public a(FZ)V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->c:J

    .line 2
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 3
    iput-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->b:Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    .line 4
    iput-boolean v4, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->b:Z

    .line 5
    :cond_1
    :goto_0
    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->c:J

    if-eqz p2, :cond_3

    const/high16 p2, 0x43960000    # 300.0f

    cmpg-float v0, v2, p1

    if-gez v0, :cond_2

    mul-float v2, v2, p2

    float-to-int p2, v2

    .line 6
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->g:I

    goto :goto_1

    :cond_2
    sub-float/2addr v3, v2

    mul-float v3, v3, p2

    float-to-int p2, v3

    .line 7
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->g:I

    .line 8
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->c:J

    .line 9
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->e:F

    goto :goto_2

    .line 10
    :cond_3
    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    iput p1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->e:F

    .line 11
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 2
    iget-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->c:J

    sub-long/2addr v0, v2

    .line 4
    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->g:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->g:I

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 5
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->e:F

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    iget v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->e:F

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->i:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->e:F

    mul-float v0, v0, v1

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->i:Landroid/view/animation/DecelerateInterpolator;

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v6, v0

    iput v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    .line 9
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->c:J

    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    const/high16 v0, -0x3cf60000    # -138.0f

    .line 11
    iget v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    add-int/lit16 v0, v0, 0xff

    .line 12
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 15
    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 16
    iget v0, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->f:F

    .line 17
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->h:Z

    if-nez v1, :cond_5

    .line 18
    iget-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->b:Z

    if-eqz v1, :cond_4

    const/16 v1, -0xe1

    goto :goto_1

    :cond_4
    const/16 v1, 0x87

    :goto_1
    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    move v7, v0

    goto :goto_3

    :cond_5
    const/high16 v1, 0x43070000    # 135.0f

    .line 19
    iget-boolean v2, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->b:Z

    if-eqz v2, :cond_6

    const/16 v2, -0xb4

    goto :goto_2

    :cond_6
    const/16 v2, 0xb4

    :goto_2
    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_3
    const/high16 v8, 0x40e00000    # 7.0f

    .line 20
    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v7

    sub-float v1, v0, v1

    const/4 v2, 0x0

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 21
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v9, v1

    .line 22
    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v7

    add-float v6, v1, v2

    .line 23
    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v8}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v7

    add-float v8, v1, v2

    .line 24
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v7

    sub-float v7, v1, v0

    neg-float v2, v9

    neg-float v4, v6

    .line 25
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 26
    iget-object v5, p0, Lcom/tangxiaolv/telegramgallery/Actionbar/e;->a:Landroid/graphics/Paint;

    move v2, v9

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->g(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

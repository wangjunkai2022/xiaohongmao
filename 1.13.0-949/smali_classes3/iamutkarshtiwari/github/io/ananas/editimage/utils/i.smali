.class public Liamutkarshtiwari/github/io/ananas/editimage/utils/i;
.super Ljava/lang/Object;
.source "RectUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 3
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 4
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p2, p1

    add-int/2addr v3, p2

    .line 8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b(Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->left:F

    .line 2
    iget v1, p0, Landroid/graphics/RectF;->top:F

    .line 3
    iget v2, p0, Landroid/graphics/RectF;->right:F

    .line 4
    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    .line 5
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v2, v0

    :cond_1
    int-to-float p2, p2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    add-float/2addr p2, p1

    add-float/2addr v3, p2

    .line 8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static c(Landroid/graphics/RectF;FFF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    float-to-double v2, p3

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float p3, v4

    .line 4
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float v3, v0, p1

    mul-float v4, v3, v2

    add-float/2addr p1, v4

    sub-float v4, v1, p2

    mul-float v5, v4, p3

    sub-float/2addr p1, v5

    mul-float v4, v4, v2

    add-float/2addr p2, v4

    mul-float v3, v3, p3

    add-float/2addr p2, v3

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public static d(Landroid/graphics/RectF;F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v2, p1, v0

    mul-float p1, p1, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 3
    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 4
    iget v0, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 5
    iget v0, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 6
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.class public Lcom/ksyun/media/streamer/util/e;
.super Ljava/lang/Object;
.source "TextGraphicUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(F)F
    .locals 1

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 8
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/graphics/Paint;)F
    .locals 1

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 10
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;F)F
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, p2, v0}, Lcom/ksyun/media/streamer/util/e;->a(Ljava/lang/String;IFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;IFLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 12
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 17
    invoke-static {v0, p0}, Lcom/ksyun/media/streamer/util/e;->a(Landroid/graphics/Paint;Ljava/lang/String;)F

    move-result p1

    .line 18
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/e;->a(Landroid/graphics/Paint;)F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    rem-float v3, p1, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    float-to-int p1, p1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, v2

    :goto_0
    rem-float v1, p2, v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    float-to-int v1, p2

    goto :goto_1

    :cond_1
    float-to-int v1, p2

    add-int/2addr v1, v2

    :goto_1
    if-eqz p3, :cond_2

    .line 19
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr p1, v2

    .line 20
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 21
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 22
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p3, :cond_3

    .line 23
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, p3, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 24
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    int-to-float v1, v1

    sub-float/2addr v1, p2

    div-float/2addr v1, v3

    invoke-static {v0}, Lcom/ksyun/media/streamer/util/e;->b(Landroid/graphics/Paint;)F

    move-result p2

    add-float/2addr v1, p2

    invoke-virtual {v2, p0, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    int-to-float p3, v1

    sub-float/2addr p3, p2

    div-float/2addr p3, v3

    .line 25
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/e;->b(Landroid/graphics/Paint;)F

    move-result p2

    add-float/2addr p3, p2

    invoke-virtual {v2, p0, v4, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    return-object p1
.end method

.method public static b(Landroid/graphics/Paint;)F
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 7
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;F)I
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;F)I
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

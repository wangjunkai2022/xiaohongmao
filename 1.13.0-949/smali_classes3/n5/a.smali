.class public Ln5/a;
.super Lmaster/flame/danmaku/danmaku/model/android/j;
.source "LevelCacheStuffer.java"


# instance fields
.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/danmaku/model/android/j;-><init>()V

    const-string v0, "\u6765\u4e86"

    .line 2
    iput-object v0, p0, Ln5/a;->d:Ljava/lang/String;

    const/16 v0, 0x8

    .line 3
    iput v0, p0, Ln5/a;->e:I

    const/16 v0, 0xf0

    .line 4
    iput v0, p0, Ln5/a;->f:I

    const/16 v0, 0x28

    .line 5
    iput v0, p0, Ln5/a;->g:I

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Ln5/a;->h:I

    .line 7
    iput-object p1, p0, Ln5/a;->c:Landroid/content/Context;

    .line 8
    invoke-direct {p0, p1}, Ln5/a;->m(Landroid/content/Context;)V

    return-void
.end method

.method private m(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget v0, p0, Ln5/a;->e:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ln5/a;->e:I

    .line 2
    iget v0, p0, Ln5/a;->f:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Ln5/a;->f:I

    .line 3
    iget v0, p0, Ln5/a;->g:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/util/s;->b(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Ln5/a;->g:I

    return-void
.end method

.method private n()V
    .locals 0

    return-void
.end method


# virtual methods
.method public e(Lmaster/flame/danmaku/danmaku/model/d;Landroid/text/TextPaint;Z)V
    .locals 0

    .line 1
    iget p2, p0, Ln5/a;->g:I

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    .line 2
    iget p2, p0, Ln5/a;->f:I

    int-to-float p2, p2

    iput p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    return-void
.end method

.method public i(Lmaster/flame/danmaku/danmaku/model/d;Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 1
    iput-object p2, p0, Ln5/a;->i:Landroid/graphics/Canvas;

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "drawBackground:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->C:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "---userId:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "enterRoom"

    invoke-static {p4, p3}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    const/4 p3, 0x2

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Ln5/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080643

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Ln5/a;->f:I

    div-int/lit8 v3, v2, 0x6

    iget v4, p0, Ln5/a;->g:I

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, p1, p4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 5
    iget-object p1, p0, Ln5/a;->i:Landroid/graphics/Canvas;

    iget-object p2, p0, Ln5/a;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080642

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Ln5/a;->f:I

    div-int/lit8 v2, v2, 0x6

    mul-int/lit8 v2, v2, 0x2

    iget p3, p0, Ln5/a;->g:I

    invoke-direct {v1, v0, v0, v2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, p2, p4, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    invoke-direct {p0}, Ln5/a;->n()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Ln5/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080644

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Ln5/a;->f:I

    iget v3, p0, Ln5/a;->g:I

    div-int/2addr v3, p3

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, p1, p4, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    if-ne p1, p3, :cond_2

    .line 8
    iget-object p1, p0, Ln5/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f080646

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Ln5/a;->f:I

    div-int/lit8 v3, v2, 0x6

    iget v4, p0, Ln5/a;->g:I

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p2, p1, p4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 9
    iget-object p1, p0, Ln5/a;->i:Landroid/graphics/Canvas;

    iget-object p2, p0, Ln5/a;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f080645

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Ln5/a;->f:I

    div-int/lit8 v2, v2, 0x6

    mul-int/lit8 v2, v2, 0x2

    iget p3, p0, Ln5/a;->g:I

    invoke-direct {v1, v0, v0, v2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, p2, p4, v1, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 10
    invoke-direct {p0}, Ln5/a;->n()V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public k(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/TextPaint;Z)V
    .locals 6

    .line 1
    iget-object p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    .line 2
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p4, -0x1

    .line 3
    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->B:I

    const/4 p5, 0x5

    const-string p7, "..."

    const/4 v0, 0x0

    const/16 v1, 0x14

    const/16 v2, 0xa

    const-string v3, "\u6765\u4e86"

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-lt p4, p5, :cond_1

    if-gt p4, v2, :cond_1

    .line 6
    iget-object p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    const/high16 p5, 0x40800000    # 4.0f

    if-le p4, v1, :cond_0

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 8
    invoke-static {p4, p6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p7

    .line 9
    iget v0, p0, Ln5/a;->f:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Ln5/a;->g:I

    int-to-float v1, v1

    div-float/2addr v1, p5

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {p3, p4, v0, v1, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 10
    iget p4, p0, Ln5/a;->f:I

    int-to-float p4, p4

    div-float/2addr p4, v4

    float-to-int p6, p7

    int-to-float p6, p6

    add-float/2addr p4, p6

    iget p6, p0, Ln5/a;->g:I

    int-to-float p6, p6

    div-float/2addr p6, p5

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr p1, v5

    add-float/2addr p6, p1

    invoke-virtual {p3, v3, p4, p6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p4

    .line 12
    iget-object p7, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p7

    iget v0, p0, Ln5/a;->f:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    iget v1, p0, Ln5/a;->g:I

    int-to-float v1, v1

    div-float/2addr v1, p5

    iget v2, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {p3, p7, v0, v1, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 13
    iget p6, p0, Ln5/a;->f:I

    int-to-float p6, p6

    div-float/2addr p6, v4

    float-to-int p4, p4

    int-to-float p4, p4

    add-float/2addr p6, p4

    iget p4, p0, Ln5/a;->g:I

    int-to-float p4, p4

    div-float/2addr p4, p5

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr p1, v5

    add-float/2addr p4, p1

    invoke-virtual {p3, v3, p6, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    iget-object p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-le p4, v1, :cond_2

    .line 15
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 16
    invoke-static {p4, p6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p5

    .line 17
    iget p7, p0, Ln5/a;->f:I

    int-to-float p7, p7

    div-float/2addr p7, v4

    mul-float p7, p7, v5

    iget v0, p0, Ln5/a;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    invoke-virtual {p3, p4, p7, v0, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    iget p4, p0, Ln5/a;->f:I

    int-to-float p4, p4

    div-float/2addr p4, v4

    mul-float p4, p4, v5

    add-float/2addr p4, p5

    iget p5, p0, Ln5/a;->g:I

    int-to-float p5, p5

    div-float/2addr p5, v5

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr p1, v5

    add-float/2addr p5, p1

    invoke-virtual {p3, v3, p4, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p4, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-static {p4, p6}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p4

    .line 20
    iget-object p5, p1, Lmaster/flame/danmaku/danmaku/model/d;->c:Ljava/lang/CharSequence;

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    iget p7, p0, Ln5/a;->f:I

    int-to-float p7, p7

    div-float/2addr p7, v4

    mul-float p7, p7, v5

    iget v0, p0, Ln5/a;->g:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    invoke-virtual {p3, p5, p7, v0, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 21
    iget p5, p0, Ln5/a;->f:I

    int-to-float p5, p5

    div-float/2addr p5, v4

    mul-float p5, p5, v5

    add-float/2addr p5, p4

    iget p4, p0, Ln5/a;->g:I

    int-to-float p4, p4

    div-float/2addr p4, v5

    iget p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->l:F

    div-float/2addr p1, v5

    add-float/2addr p4, p1

    invoke-virtual {p3, v3, p5, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    :goto_0
    return-void
.end method

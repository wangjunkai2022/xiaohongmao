.class public Liamutkarshtiwari/github/io/ananas/editimage/view/b;
.super Ljava/lang/Object;
.source "StickerItem.java"


# static fields
.field private static final o:F = 0.15f

.field private static final p:I = 0x19

.field private static final q:I = 0x8

.field private static final r:I = 0x1e

.field private static s:Landroid/graphics/Bitmap;

.field private static t:Landroid/graphics/Bitmap;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/Matrix;

.field private h:F

.field i:Z

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:F

.field m:Landroid/graphics/RectF;

.field n:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->h:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->j:Landroid/graphics/Paint;

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->k:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->k:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v1, 0x78

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v2, -0xff0100

    .line 14
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 16
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->s:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lf7/b$h;->v1:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->s:Landroid/graphics/Bitmap;

    .line 18
    :cond_0
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lf7/b$h;->G1:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->t:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x41c80000    # 25.0f

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2
    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 3
    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 4
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2
    iget-boolean v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->h:F

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->k:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 6
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->s:Landroid/graphics/Bitmap;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7
    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->t:Landroid/graphics/Bitmap;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->c:Landroid/graphics/Rect;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->e:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 7

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->a:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x1

    shr-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v1, v3

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    shr-int/2addr v3, v2

    shr-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    shr-int/2addr p2, v2

    shr-int/lit8 v4, v1, 0x1

    sub-int/2addr p2, v4

    .line 6
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, p2

    add-int/2addr v3, v0

    int-to-float v3, v3

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-direct {v4, v5, v6, v3, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    .line 7
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    .line 8
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    int-to-float v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    .line 11
    invoke-virtual {p2, v0, v1, v3, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->l:F

    .line 13
    iput-boolean v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->i:Z

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    .line 15
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->c()V

    .line 16
    new-instance p1, Landroid/graphics/Rect;

    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->s:Landroid/graphics/Bitmap;

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->c:Landroid/graphics/Rect;

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x41f00000    # 30.0f

    sub-float v2, v0, v1

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, p2, v1

    add-float/2addr v0, v1

    add-float/2addr p2, v1

    invoke-direct {p1, v2, v3, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->d:Landroid/graphics/RectF;

    .line 19
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v2, v0, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v3, p2, v1

    add-float/2addr v0, v1

    add-float/2addr p2, v1

    invoke-direct {p1, v2, v3, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->e:Landroid/graphics/RectF;

    .line 20
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->e:Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->d:Landroid/graphics/RectF;

    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->n:Landroid/graphics/RectF;

    return-void
.end method

.method d(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 4
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->d:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 7
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->n:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method e(FFFF)V
    .locals 6

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    .line 2
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    .line 3
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 4
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float/2addr p3, v0

    add-float/2addr p4, v1

    sub-float/2addr v0, p1

    sub-float/2addr v1, p2

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    mul-float p1, v0, v0

    mul-float p2, v1, v1

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float p2, p3, p3

    mul-float v2, p4, p4

    add-float/2addr p2, v2

    float-to-double v2, p2

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float p2, v2

    div-float v2, p2, p1

    .line 7
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v3, v3, v2

    .line 8
    iget v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->l:F

    div-float/2addr v3, v4

    const v4, 0x3e19999a    # 0.15f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    iget-object v4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 11
    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 12
    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-static {v3, v2}, Liamutkarshtiwari/github/io/ananas/editimage/utils/i;->d(Landroid/graphics/RectF;F)V

    .line 13
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 14
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->c()V

    .line 15
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->e:Landroid/graphics/RectF;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    const/high16 v5, 0x41f00000    # 30.0f

    sub-float/2addr v4, v5

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 16
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->d:Landroid/graphics/RectF;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 17
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 18
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->n:Landroid/graphics/RectF;

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    mul-float v2, v0, p3

    mul-float v3, v1, p4

    add-float/2addr v2, v3

    mul-float p1, p1, p2

    div-float/2addr v2, p1

    float-to-double p1, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-gtz v4, :cond_3

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->acos(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float v0, v0, p4

    mul-float p3, p3, v1

    sub-float/2addr v0, p3

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, -0x1

    :goto_0
    int-to-float p2, p2

    mul-float p2, p2, p1

    .line 20
    iget p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->h:F

    add-float/2addr p1, p2

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->h:F

    .line 21
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->g:Landroid/graphics/Matrix;

    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    iget-object p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    .line 22
    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result p4

    .line 23
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 24
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->m:Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    .line 25
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    iget p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->h:F

    .line 26
    invoke-static {p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/utils/i;->c(Landroid/graphics/RectF;FFF)V

    .line 27
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->n:Landroid/graphics/RectF;

    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    iget-object p3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->b:Landroid/graphics/RectF;

    .line 28
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result p3

    iget p4, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/b;->h:F

    .line 29
    invoke-static {p1, p2, p3, p4}, Liamutkarshtiwari/github/io/ananas/editimage/utils/i;->c(Landroid/graphics/RectF;FFF)V

    :cond_3
    :goto_1
    return-void
.end method

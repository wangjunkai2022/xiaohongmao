.class public Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;
.super Landroid/view/View;
.source "RotateImageView.java"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Matrix;

.field private f:F

.field private g:I

.field private h:Landroid/graphics/RectF;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    .line 4
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e:Landroid/graphics/Matrix;

    .line 7
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    .line 8
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e:Landroid/graphics/Matrix;

    .line 11
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    .line 12
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->c(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    .line 5
    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e:Landroid/graphics/Matrix;

    iget v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->g:I

    int-to-float v3, v3

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->e:Landroid/graphics/Matrix;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->a:Landroid/graphics/Rect;

    .line 2
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->b:Landroid/graphics/RectF;

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->c:Landroid/graphics/Rect;

    .line 4
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/utils/g;->g()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->i:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->j:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->d:Landroid/graphics/Bitmap;

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->b:Landroid/graphics/RectF;

    .line 4
    iget-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->g:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->f:F

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-direct {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->b()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->f:F

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->f:F

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->f:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    .line 11
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 12
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 13
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->g:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 16
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->d:Landroid/graphics/Bitmap;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->a:Landroid/graphics/Rect;

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->b:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 17
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->g:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getImageNewRect()Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->g:I

    int-to-float v1, v1

    iget-object v2, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->j:Landroid/graphics/RectF;

    .line 3
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 5
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->j:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 6
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public declared-synchronized getRotateAngle()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScale()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/view/RotateImageView;->f:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

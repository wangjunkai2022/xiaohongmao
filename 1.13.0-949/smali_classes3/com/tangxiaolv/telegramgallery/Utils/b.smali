.class public Lcom/tangxiaolv/telegramgallery/Utils/b;
.super Ljava/lang/Object;
.source "Bitmaps.java"


# static fields
.field private static volatile a:Landroid/graphics/Matrix;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/b$a;

    invoke-direct {v0}, Lcom/tangxiaolv/telegramgallery/Utils/b$a;-><init>()V

    sput-object v0, Lcom/tangxiaolv/telegramgallery/Utils/b;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)V
    .locals 0

    if-lez p0, :cond_1

    if-lez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(II)V
    .locals 0

    if-ltz p0, :cond_1

    if-ltz p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "y must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 2
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p2, p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/tangxiaolv/telegramgallery/Utils/b;->e(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-static {p1, p2}, Lcom/tangxiaolv/telegramgallery/Utils/b;->b(II)V

    .line 2
    invoke-static {p3, p4}, Lcom/tangxiaolv/telegramgallery/Utils/b;->a(II)V

    add-int v0, p1, p3

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_a

    add-int v1, p2, p4

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_9

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne p3, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne p4, v2, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object p0

    .line 6
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 7
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    int-to-float p2, p3

    int-to-float v0, p4

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 9
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 11
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Utils/b$b;->a:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    aget p2, p2, v0

    if-eq p2, v1, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    .line 12
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 13
    :cond_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 14
    :cond_3
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_4
    :goto_0
    const/4 v0, 0x0

    if-eqz p5, :cond_7

    .line 15
    invoke-virtual {p5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p5}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result p3

    xor-int/2addr p3, v1

    .line 17
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    .line 18
    invoke-virtual {p5, p4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 19
    invoke-virtual {p4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 20
    invoke-virtual {p4}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-eqz p3, :cond_6

    .line 21
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_6
    invoke-static {v4, v5, p2}, Lcom/tangxiaolv/telegramgallery/Utils/b;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 22
    iget v4, p4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget p4, p4, Landroid/graphics/RectF;->top:F

    neg-float p4, p4

    invoke-virtual {v2, v4, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 23
    invoke-virtual {v2, p5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 24
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4}, Landroid/graphics/Paint;-><init>()V

    .line 25
    invoke-virtual {p4, p6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    if-eqz p3, :cond_8

    .line 26
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_2

    .line 27
    :cond_7
    :goto_1
    invoke-static {p3, p4, p2}, Lcom/tangxiaolv/telegramgallery/Utils/b;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object p4, v0

    .line 28
    :cond_8
    :goto_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 29
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 30
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 31
    invoke-virtual {v2, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    invoke-virtual {v2, p0, v3, p1, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 33
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2

    .line 34
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "y + height must be <= bitmap.height()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x + width must be <= bitmap.width()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/tangxiaolv/telegramgallery/Utils/b;->a:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    .line 3
    sput-object v2, Lcom/tangxiaolv/telegramgallery/Utils/b;->a:Landroid/graphics/Matrix;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float p1, p1

    int-to-float v0, v5

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v6

    div-float/2addr p2, v0

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v7, v1

    move v8, p3

    .line 9
    invoke-static/range {v2 .. v8}, Lcom/tangxiaolv/telegramgallery/Utils/b;->e(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    const-class p1, Landroid/graphics/Bitmap;

    monitor-enter p1

    .line 11
    :try_start_1
    sget-object p2, Lcom/tangxiaolv/telegramgallery/Utils/b;->a:Landroid/graphics/Matrix;

    if-nez p2, :cond_1

    .line 12
    sput-object v1, Lcom/tangxiaolv/telegramgallery/Utils/b;->a:Landroid/graphics/Matrix;

    .line 13
    :cond_1
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

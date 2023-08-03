.class public Lj0/a;
.super Ljava/lang/Object;
.source "WebpAnimationBackend.java"

# interfaces
.implements Lcom/facebook/fresco/animation/backend/a;


# instance fields
.field private final c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Rect;

.field private final e:Lcom/facebook/animated/webp/WebPImage;

.field private f:Landroid/graphics/Rect;

.field private g:Landroid/graphics/Bitmap;
    .annotation runtime Lr7/h;
    .end annotation

    .annotation build Ls7/a;
        value = "this"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/animated/webp/WebPImage;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "webPImage"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lj0/a;->c:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lj0/a;->d:Landroid/graphics/Rect;

    .line 4
    iput-object p1, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    return-void
.end method

.method private declared-synchronized i()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lj0/a;->g:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static l(Ljava/io/Closeable;)V
    .locals 0
    .param p0    # Ljava/io/Closeable;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeable"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static m(Ljava/lang/String;)Lj0/a;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filePath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0}, Lio/sentry/instrumentation/file/h$b;->d(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const p0, 0x7fffffff

    .line 2
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->mark(I)V

    .line 3
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 4
    invoke-virtual {v1, p0}, Ljava/io/InputStream;->read([B)I

    .line 5
    invoke-static {p0, v0}, Lcom/facebook/animated/webp/WebPImage;->k([BLcom/facebook/imagepipeline/common/b;)Lcom/facebook/animated/webp/WebPImage;

    move-result-object p0

    .line 6
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 7
    new-instance v0, Lj0/a;

    invoke-direct {v0, p0}, Lj0/a;-><init>(Lcom/facebook/animated/webp/WebPImage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {v1}, Lj0/a;->l(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lj0/a;->l(Ljava/io/Closeable;)V

    .line 9
    throw p0
.end method

.method private declared-synchronized n(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lj0/a;->i()V

    .line 4
    :cond_1
    iget-object v0, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    .line 6
    :cond_2
    iget-object p1, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->a()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->c()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->dispose()V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->getHeight()I

    move-result v0

    return v0
.end method

.method public declared-synchronized e(Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lj0/a;->f:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->getWidth()I

    move-result v0

    return v0
.end method

.method public g(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    return-void
.end method

.method public h(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "canvas",
            "frameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0, p3}, Lcom/facebook/animated/webp/WebPImage;->n(I)Lcom/facebook/animated/webp/WebPFrame;

    move-result-object p3

    .line 2
    iget-object v0, p0, Lj0/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 3
    iget-object v2, p0, Lj0/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v2, v4

    .line 4
    invoke-virtual {p3}, Lcom/facebook/animated/webp/WebPFrame;->getWidth()I

    move-result p1

    int-to-double v4, p1

    mul-double v4, v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    .line 5
    invoke-virtual {p3}, Lcom/facebook/animated/webp/WebPFrame;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 6
    invoke-virtual {p3}, Lcom/facebook/animated/webp/WebPFrame;->c()I

    move-result v4

    int-to-double v6, v4

    mul-double v6, v6, v0

    double-to-int v0, v6

    .line 7
    invoke-virtual {p3}, Lcom/facebook/animated/webp/WebPFrame;->d()I

    move-result v1

    int-to-double v6, v1

    mul-double v6, v6, v2

    double-to-int v1, v6

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v2, p0, Lj0/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 10
    iget-object v3, p0, Lj0/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 11
    invoke-direct {p0, v2, v3}, Lj0/a;->n(II)V

    .line 12
    iget-object v4, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 13
    monitor-exit p0

    return v6

    .line 14
    :cond_0
    invoke-virtual {p3, p1, v5, v4}, Lcom/facebook/animated/webp/WebPFrame;->a(IILandroid/graphics/Bitmap;)V

    .line 15
    iget-object p1, p0, Lj0/a;->d:Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 16
    iget-object p1, p0, Lj0/a;->c:Landroid/graphics/Rect;

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 17
    iget-object p1, p0, Lj0/a;->g:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lj0/a;->d:Landroid/graphics/Rect;

    iget-object v0, p0, Lj0/a;->c:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 18
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public j(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameNumber"
        }
    .end annotation

    iget-object v0, p0, Lj0/a;->e:Lcom/facebook/animated/webp/WebPImage;

    invoke-virtual {v0}, Lcom/facebook/animated/webp/WebPImage;->j()[I

    move-result-object v0

    aget p1, v0, p1

    return p1
.end method

.method public k(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    return-void
.end method

.class Lcom/qennnsad/aknkaksd/util/roomanim/b$a;
.super Ljava/lang/Thread;
.source "GenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/util/roomanim/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/SurfaceHolder;

.field b:Landroid/graphics/Paint;

.field final synthetic c:Lcom/qennnsad/aknkaksd/util/roomanim/b;


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a:Landroid/view/SurfaceHolder;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->b:Landroid/graphics/Paint;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->l(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F

    move-result v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->l(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->i(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->m(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->j(Lcom/qennnsad/aknkaksd/util/roomanim/b;F)F

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->a(Lcom/qennnsad/aknkaksd/util/roomanim/b;Z)Z

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->c(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->f(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->e(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->g(Lcom/qennnsad/aknkaksd/util/roomanim/b;)[I

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 5
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v4}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->h(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a:Landroid/view/SurfaceHolder;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v5}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->d(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v7}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->g(Lcom/qennnsad/aknkaksd/util/roomanim/b;)[I

    move-result-object v7

    aget v7, v7, v3

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->c(Lcom/qennnsad/aknkaksd/util/roomanim/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8
    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v0, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 10
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v6}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->b(Lcom/qennnsad/aknkaksd/util/roomanim/b;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v7}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->i(Lcom/qennnsad/aknkaksd/util/roomanim/b;)F

    move-result v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 11
    iget-object v6, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v6}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->g(Lcom/qennnsad/aknkaksd/util/roomanim/b;)[I

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v1

    if-ne v3, v6, :cond_1

    const-wide/16 v6, 0x7d0

    .line 12
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x3c

    .line 13
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 14
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    iget-object v4, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v5

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 16
    :goto_2
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 17
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    .line 18
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_4

    :goto_3
    if-nez v2, :cond_2

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 19
    throw v1

    .line 20
    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    invoke-static {v1, v0}, Lcom/qennnsad/aknkaksd/util/roomanim/b;->a(Lcom/qennnsad/aknkaksd/util/roomanim/b;Z)Z

    .line 21
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/roomanim/b$a;->c:Lcom/qennnsad/aknkaksd/util/roomanim/b;

    new-instance v1, Lcom/qennnsad/aknkaksd/util/roomanim/b$a$a;

    invoke-direct {v1, p0}, Lcom/qennnsad/aknkaksd/util/roomanim/b$a$a;-><init>(Lcom/qennnsad/aknkaksd/util/roomanim/b$a;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

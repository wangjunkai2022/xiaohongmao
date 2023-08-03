.class Lscreenstreamer/capture/ScreenCapture$b;
.super Ljava/lang/Object;
.source "ScreenCapture.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$GLRenderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscreenstreamer/capture/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lscreenstreamer/capture/ScreenCapture;


# direct methods
.method constructor <init>(Lscreenstreamer/capture/ScreenCapture;)V
    .locals 0

    iput-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawFrame()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    div-long v8, v0, v2

    .line 2
    :try_start_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->A(Lscreenstreamer/capture/ScreenCapture;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0, v1}, Lscreenstreamer/capture/ScreenCapture;->B(Lscreenstreamer/capture/ScreenCapture;Z)Z

    .line 5
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->h(Lscreenstreamer/capture/ScreenCapture;)V

    :cond_0
    const/16 v0, 0x10

    new-array v7, v0, [F

    .line 6
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 7
    new-instance v0, Lcom/ksyun/media/streamer/framework/ImgTexFrame;

    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v2}, Lscreenstreamer/capture/ScreenCapture;->i(Lscreenstreamer/capture/ScreenCapture;)Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    move-result-object v5

    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v2}, Lscreenstreamer/capture/ScreenCapture;->E(Lscreenstreamer/capture/ScreenCapture;)I

    move-result v6

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ksyun/media/streamer/framework/ImgTexFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgTexFormat;I[FJ)V

    .line 8
    :try_start_1
    iget-object v2, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    iget-object v2, v2, Lscreenstreamer/capture/ScreenCapture;->v:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v2, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-static {}, Lscreenstreamer/capture/ScreenCapture;->v()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Draw frame failed, ignore"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->l(Lscreenstreamer/capture/ScreenCapture;)J

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 13
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->m(Lscreenstreamer/capture/ScreenCapture;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    .line 14
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->j(Lscreenstreamer/capture/ScreenCapture;)J

    move-result-wide v6

    long-to-float v0, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float v0, v0, v6

    long-to-float v4, v4

    div-float/2addr v0, v4

    .line 15
    invoke-static {}, Lscreenstreamer/capture/ScreenCapture;->v()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen fps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v7

    const-string v0, "%.2f"

    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lscreenstreamer/capture/ScreenCapture;->k(Lscreenstreamer/capture/ScreenCapture;J)J

    .line 17
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0, v2, v3}, Lscreenstreamer/capture/ScreenCapture;->n(Lscreenstreamer/capture/ScreenCapture;J)J

    :cond_1
    return-void

    .line 18
    :catch_1
    invoke-static {}, Lscreenstreamer/capture/ScreenCapture;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateTexImage failed, ignore"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReady()V
    .locals 2

    invoke-static {}, Lscreenstreamer/capture/ScreenCapture;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReleased()V
    .locals 0

    return-void
.end method

.method public onSizeChanged(II)V
    .locals 3

    .line 1
    invoke-static {}, Lscreenstreamer/capture/ScreenCapture;->v()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0, p1}, Lscreenstreamer/capture/ScreenCapture;->x(Lscreenstreamer/capture/ScreenCapture;I)I

    .line 3
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1, p2}, Lscreenstreamer/capture/ScreenCapture;->z(Lscreenstreamer/capture/ScreenCapture;I)I

    .line 4
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lscreenstreamer/capture/ScreenCapture;->B(Lscreenstreamer/capture/ScreenCapture;Z)Z

    .line 5
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->C(Lscreenstreamer/capture/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->C(Lscreenstreamer/capture/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 7
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lscreenstreamer/capture/ScreenCapture;->D(Lscreenstreamer/capture/ScreenCapture;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 8
    :cond_0
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createOESTextureObject()I

    move-result p2

    invoke-static {p1, p2}, Lscreenstreamer/capture/ScreenCapture;->F(Lscreenstreamer/capture/ScreenCapture;I)I

    .line 9
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 11
    :cond_1
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->e(Lscreenstreamer/capture/ScreenCapture;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->e(Lscreenstreamer/capture/ScreenCapture;)Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 13
    :cond_2
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    new-instance p2, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->E(Lscreenstreamer/capture/ScreenCapture;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {p1, p2}, Lscreenstreamer/capture/ScreenCapture;->d(Lscreenstreamer/capture/ScreenCapture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 14
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p2}, Lscreenstreamer/capture/ScreenCapture;->w(Lscreenstreamer/capture/ScreenCapture;)I

    move-result p2

    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->y(Lscreenstreamer/capture/ScreenCapture;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 15
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    new-instance p2, Landroid/view/Surface;

    iget-object v0, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {v0}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p1, p2}, Lscreenstreamer/capture/ScreenCapture;->f(Lscreenstreamer/capture/ScreenCapture;Landroid/view/Surface;)Landroid/view/Surface;

    .line 16
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->c(Lscreenstreamer/capture/ScreenCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p2, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 17
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->a(Lscreenstreamer/capture/ScreenCapture;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_3

    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->C(Lscreenstreamer/capture/ScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->g(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object p1, p0, Lscreenstreamer/capture/ScreenCapture$b;->a:Lscreenstreamer/capture/ScreenCapture;

    invoke-static {p1}, Lscreenstreamer/capture/ScreenCapture;->g(Lscreenstreamer/capture/ScreenCapture;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

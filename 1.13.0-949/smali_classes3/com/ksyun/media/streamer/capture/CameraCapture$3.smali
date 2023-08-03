.class Lcom/ksyun/media/streamer/capture/CameraCapture$3;
.super Ljava/lang/Object;
.source "CameraCapture.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/capture/CameraCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/CameraCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/CameraCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 4

    const-string v0, "CameraCapture"

    const-string v1, "onGLContext ready"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createOESTextureObject()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b(Lcom/ksyun/media/streamer/capture/CameraCapture;I)I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/CameraCapture;->k(Lcom/ksyun/media/streamer/capture/CameraCapture;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v3}, Lcom/ksyun/media/streamer/capture/CameraCapture;->m(Lcom/ksyun/media/streamer/capture/CameraCapture;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 7
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 8
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object v1

    iget-object v2, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v2}, Lcom/ksyun/media/streamer/capture/CameraCapture;->l(Lcom/ksyun/media/streamer/capture/CameraCapture;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/capture/camera/b$b;->b(Landroid/graphics/SurfaceTexture;)V

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->i(Lcom/ksyun/media/streamer/capture/CameraCapture;)Lcom/ksyun/media/streamer/capture/camera/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ksyun/media/streamer/capture/camera/b$b;->e()V

    .line 11
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->a(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/CameraCapture$3;->a:Lcom/ksyun/media/streamer/capture/CameraCapture;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/capture/CameraCapture;->b(Lcom/ksyun/media/streamer/capture/CameraCapture;Z)Z

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

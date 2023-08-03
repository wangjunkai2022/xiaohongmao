.class Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->createOESTextureObject()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;I)I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->c(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->c(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v2}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->d(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->e(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v3}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;Landroid/view/Surface;)Landroid/view/Surface;

    .line 10
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$2;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->e(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

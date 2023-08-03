.class Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;
.super Ljava/lang/Object;
.source "MediaCodecVideoDecoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReleasedListener;


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

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReleased()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->b(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->c(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->c(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder$3;->a:Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/decoder/MediaCodecVideoDecoder;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_1
    return-void
.end method

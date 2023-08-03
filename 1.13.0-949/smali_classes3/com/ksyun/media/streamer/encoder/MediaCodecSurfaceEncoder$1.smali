.class Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder$1;
.super Ljava/lang/Object;
.source "MediaCodecSurfaceEncoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/util/gles/GLRender$OnReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a(Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;Z)Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder$1;->a:Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;->a(Lcom/ksyun/media/streamer/encoder/MediaCodecSurfaceEncoder;I)I

    return-void
.end method

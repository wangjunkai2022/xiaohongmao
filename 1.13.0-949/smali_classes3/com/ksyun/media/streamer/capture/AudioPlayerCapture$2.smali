.class Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "AudioPlayerCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->b(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->c(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;->a:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object v0

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/d;->a(Ljava/nio/ByteBuffer;)I

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$2;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method

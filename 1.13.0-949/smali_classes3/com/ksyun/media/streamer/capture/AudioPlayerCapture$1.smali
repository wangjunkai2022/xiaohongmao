.class Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;
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
.field a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field final synthetic b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-void
.end method


# virtual methods
.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->b(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->c(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {v0}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object v0

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/d;->a(Ljava/nio/ByteBuffer;)I

    .line 4
    :cond_0
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iput-object p1, v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    iget-object p1, p1, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    :cond_1
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {v0, p1}, Lcom/ksyun/media/streamer/framework/AudioBufFormat;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    invoke-static {p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->a(Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;)Lcom/ksyun/media/streamer/filter/audio/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/ksyun/media/streamer/filter/audio/d;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->nativeModule:J

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->b:Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;

    iget-object p1, p1, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->a:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/capture/AudioPlayerCapture$1;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method

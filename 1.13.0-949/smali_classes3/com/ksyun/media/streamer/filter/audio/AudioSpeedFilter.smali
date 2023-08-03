.class public Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;
.super Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.source "AudioSpeedFilter.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    .line 3
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;->getSrcPin()Lcom/ksyun/media/streamer/framework/SrcPin;

    move-result-object v1

    iput-object v1, v0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    return-void
.end method


# virtual methods
.method public config(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    return-void
.end method

.method protected doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    iget-wide v2, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a(Ljava/nio/ByteBuffer;J)V

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method protected doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->config(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    return-object p1
.end method

.method protected doRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->c()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a(F)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSpeedFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->b()V

    return-void
.end method

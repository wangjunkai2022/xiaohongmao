.class public Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;
.super Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.source "AudioResampleFilter.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

.field private b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    return-void
.end method


# virtual methods
.method protected attachTo(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(IJZ)V

    return-void
.end method

.method protected doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    invoke-virtual {v1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-wide v3, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    return-object v1

    :cond_0
    return-object p1
.end method

.method protected doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(III)I

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "you must call setOutFormat first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected doRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    :cond_0
    return-void
.end method

.method protected getNativeInstance()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutFormat()Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    return-object v0
.end method

.method protected readNative(Ljava/nio/ByteBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public setOutFormat(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 2
    .param p1    # Lcom/ksyun/media/streamer/framework/AudioBufFormat;
        .annotation build La/f0;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->b:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResampleFilter;->a:Lcom/ksyun/media/streamer/filter/audio/AudioResample;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-virtual {v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(II)V

    return-void
.end method

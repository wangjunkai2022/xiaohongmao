.class public Lcom/ksyun/media/streamer/filter/audio/APMFilter;
.super Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.source "APMFilter.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    return-void
.end method


# virtual methods
.method protected attachTo(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a(IJZ)V

    return-void
.end method

.method protected doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-virtual {v2}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->b()Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    move-result-object v2

    iget-wide v3, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    return-object v1
.end method

.method protected doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a(II)I

    return-object p1
.end method

.method protected doRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->c()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    :cond_0
    return-void
.end method

.method public enableNs(Z)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a(Z)I

    move-result p1

    return p1
.end method

.method protected getNativeInstance()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected readNative(Ljava/nio/ByteBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public setNsLevel(I)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/APMFilter;->a:Lcom/ksyun/media/streamer/filter/audio/APMWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/APMWrapper;->a(I)I

    move-result p1

    return p1
.end method

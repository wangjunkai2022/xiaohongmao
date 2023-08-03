.class public Lcom/ksyun/media/streamer/filter/audio/AudioPreview;
.super Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.source "AudioPreview.java"


# static fields
.field private static final a:Ljava/lang/String; = "AudioPreview"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->b:Landroid/content/Context;

    .line 3
    new-instance p1, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    return-void
.end method


# virtual methods
.method protected attachTo(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->a(IJZ)V

    return-void
.end method

.method protected doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
    .locals 3

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-boolean v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->d:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->a(Ljava/nio/ByteBuffer;Z)I

    return-object p1
.end method

.method protected doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->b:Landroid/content/Context;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/util/audio/a;->a(Landroid/content/Context;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    iget v2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v3, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->a(IIII)I

    return-object p1
.end method

.method protected doRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->c()I

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->f()V

    return-void
.end method

.method protected getNativeInstance()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->d()I

    return-void
.end method

.method protected readNative(Ljava/nio/ByteBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->a(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->e()I

    return-void
.end method

.method public setBlockingMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->d:Z

    return-void
.end method

.method public setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b(Z)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b()I

    .line 2
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v0

    const-string v1, "audio_preview"

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateFunctionPoint(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioPreview;->c:Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->c()I

    return-void
.end method

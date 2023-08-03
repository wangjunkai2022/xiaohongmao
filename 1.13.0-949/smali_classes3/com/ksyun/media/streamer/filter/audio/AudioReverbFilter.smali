.class public Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;
.super Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;
.source "AudioReverbFilter.java"


# static fields
.field public static AUDIO_REVERB_LEVEL_1:I = 0x1

.field public static AUDIO_REVERB_LEVEL_2:I = 0x2

.field public static AUDIO_REVERB_LEVEL_3:I = 0x3

.field public static AUDIO_REVERB_LEVEL_4:I = 0x4

.field public static AUDIO_REVERB_LEVEL_5:I = 0x5


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioFilterBase;-><init>()V

    .line 2
    sget v0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->AUDIO_REVERB_LEVEL_3:I

    iput v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->a:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->b:Z

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    return-void
.end method


# virtual methods
.method protected attachTo(IJZ)V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a(IJZ)V

    return-void
.end method

.method protected doFilter(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Lcom/ksyun/media/streamer/framework/AudioBufFrame;
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a(Ljava/nio/ByteBuffer;)I

    return-object p1
.end method

.method protected doFormatChanged(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)Lcom/ksyun/media/streamer/framework/AudioBufFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-virtual {v0, v1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a(II)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    iget v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->a:I

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a(I)V

    return-object p1
.end method

.method protected doRelease()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->b:Z

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->b()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    :cond_0
    return-void
.end method

.method protected getNativeInstance()J
    .locals 2

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReverbType()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->a:I

    return v0
.end method

.method protected readNative(Ljava/nio/ByteBuffer;I)I
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    invoke-virtual {v0, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a(Ljava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public setReverbLevel(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->a:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->a:I

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->c:Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a(I)V

    .line 4
    iget-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->b:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7
    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->updateAudioFilterType([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTakeEffect(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbFilter;->b:Z

    return-void
.end method

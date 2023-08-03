.class public Lcom/ksyun/media/streamer/filter/audio/AudioResample;
.super Ljava/lang/Object;
.source "AudioResample.java"


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    .line 5
    iget v0, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget p2, p2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-virtual {p0, v0, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(II)V

    .line 6
    iget p2, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a(III)I

    return-void
.end method

.method private native _attachTo(JIJZ)V
.end method

.method private native _config(JIII)I
.end method

.method private native _init()J
.end method

.method private native _read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native _release(J)V
.end method

.method private native _resample(JLjava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
.end method

.method private native _setOutputFormat(JII)V
.end method


# virtual methods
.method public a(III)I
    .locals 6

    .line 3
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_config(JIII)I

    move-result p1

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_read(JLjava/nio/ByteBuffer;I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return p2
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    return-wide v0
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_resample(JLjava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(II)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_setOutputFormat(JII)V

    return-void
.end method

.method public a(IJZ)V
    .locals 7

    .line 4
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_attachTo(JIJZ)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->a:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioResample;->_release(J)V

    return-void
.end method

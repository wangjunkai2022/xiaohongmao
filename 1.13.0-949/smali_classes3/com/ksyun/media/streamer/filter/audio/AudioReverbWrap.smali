.class public Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;
.super Ljava/lang/Object;
.source "AudioReverbWrap.java"


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
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    return-void
.end method

.method private native attachTo(JIJZ)V
.end method

.method private native config(JII)V
.end method

.method private native create()J
.end method

.method private native delete(J)Z
.end method

.method private native process(JLjava/nio/ByteBuffer;I)I
.end method

.method private native read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native setLevel(JI)Z
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)I
    .locals 3

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->process(JLjava/nio/ByteBuffer;I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->read(JLjava/nio/ByteBuffer;I)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->setLevel(JI)Z

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->config(JII)V

    return-void
.end method

.method public a(IJZ)V
    .locals 7

    .line 3
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->attachTo(JIJZ)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->a:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioReverbWrap;->delete(J)Z

    return-void
.end method

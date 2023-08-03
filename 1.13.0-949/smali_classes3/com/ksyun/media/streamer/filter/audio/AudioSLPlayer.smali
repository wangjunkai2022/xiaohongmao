.class public Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;
.super Ljava/lang/Object;
.source "AudioSLPlayer.java"

# interfaces
.implements Lcom/ksyun/media/streamer/filter/audio/d;


# static fields
.field private static final a:Ljava/lang/String; = "AudioSLPlayer"


# instance fields
.field private b:J


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
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_init()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    return-void
.end method

.method private native _attachTo(JIJZ)V
.end method

.method private native _config(JIIII)I
.end method

.method private native _init()J
.end method

.method private native _pause(J)I
.end method

.method private native _read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native _release(J)V
.end method

.method private native _resume(J)I
.end method

.method private native _setMute(JZ)V
.end method

.method private native _setTuneLatency(JZ)V
.end method

.method private native _start(J)I
.end method

.method private native _stop(J)I
.end method

.method private native _write(JLjava/nio/ByteBuffer;IZ)I
.end method


# virtual methods
.method public a(IIII)I
    .locals 7

    .line 2
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_config(JIIII)I

    move-result p1

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;)I
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->a(Ljava/nio/ByteBuffer;Z)I

    move-result p1

    return p1
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_read(JLjava/nio/ByteBuffer;I)I

    move-result p2

    if-ltz p2, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_0
    return p2
.end method

.method public a(Ljava/nio/ByteBuffer;Z)I
    .locals 6

    .line 9
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_write(JLjava/nio/ByteBuffer;IZ)I

    move-result p1

    return p1
.end method

.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    return-wide v0
.end method

.method public a(IJZ)V
    .locals 7

    .line 3
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_attachTo(JIJZ)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_setTuneLatency(JZ)V

    return-void
.end method

.method public b()I
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_start(J)I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_setMute(JZ)V

    return-void
.end method

.method public c()I
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_stop(J)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_pause(J)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_resume(J)I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->b:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AudioSLPlayer;->_release(J)V

    return-void
.end method

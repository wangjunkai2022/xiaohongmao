.class public Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;
.super Ljava/lang/Object;
.source "KSYAudioSLRecord.java"

# interfaces
.implements Lcom/ksyun/media/streamer/capture/audio/a;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_init(III)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Create OpenGLES record failed!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native _init(III)J
.end method

.method private native _read(JLjava/nio/ByteBuffer;I)I
.end method

.method private native _release(J)V
.end method

.method private native _setEnableLatencyTest(JZ)V
.end method

.method private native _setVolume(JF)V
.end method

.method private native _start(J)I
.end method

.method private native _stop(J)I
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_start(J)I

    move-result v0

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_read(JLjava/nio/ByteBuffer;I)I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :cond_0
    return p2
.end method

.method public a(F)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_setVolume(JF)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_setEnableLatencyTest(JZ)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_stop(J)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->_release(J)V

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/capture/audio/KSYAudioSLRecord;->a:J

    return-wide v0
.end method

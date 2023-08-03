.class public Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;
.super Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;
.source "MediaCodecAudioEncoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase<",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        "Lcom/ksyun/media/streamer/framework/AudioPacket;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "HWAudioEncoder"

.field private static final o:I = 0x10

.field private static final p:I = 0x2000


# instance fields
.field private q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

.field private r:Lcom/ksyun/media/streamer/util/FrameBufferCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    const/16 v1, 0x10

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->r:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 9

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 2
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    const/16 v3, 0xc

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid channel count. Must be 1 or 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 v3, 0x10

    .line 4
    :goto_0
    iget v4, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_5

    const-string v4, "audio/mp4a-latm"

    .line 5
    iget v5, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    const-string v6, "HWAudioEncoder"

    const/4 v7, 0x4

    const/16 v8, 0x1c

    if-ne v5, v8, :cond_2

    if-ne v0, v2, :cond_2

    const-string v0, "set aac_he_v2 for mono audio, fallback to aac_he"

    .line 6
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    :cond_2
    if-eq v5, v7, :cond_4

    if-eq v5, v8, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x1d

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    .line 7
    :goto_1
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    invoke-static {v4, v0, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v3, "aac-profile"

    .line 8
    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 9
    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    const-string v3, "channel-count"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 10
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->bitrate:I

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 p1, 0x4000

    const-string v1, "max-input-size"

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 12
    :try_start_0
    invoke-static {v4}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    invoke-direct {p1, v0}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 16
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Ljava/lang/Object;)V

    const-wide/16 v0, 0x4e20

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(JZ)V

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Failed to start MediaCodec audio encoder"

    .line 18
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, -0x3ea

    return p1

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only aac supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AudioPacket;
    .locals 6

    .line 43
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget-wide v2, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;J)V

    .line 44
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_0

    .line 45
    iget p2, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    :cond_0
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_1

    .line 46
    iget p2, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    :cond_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 47
    iget p1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    :cond_2
    return-object v0
.end method

.method protected a()V
    .locals 5

    const-string v0, "HWAudioEncoder"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(Ljava/nio/ByteBuffer;J)V

    const/4 v4, 0x1

    .line 22
    invoke-virtual {p0, v4}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :catch_0
    :try_start_1
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v4, "stop encoder failed, ignore"

    .line 24
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 26
    iput-object v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    const-string v4, "MediaCodec released"

    .line 27
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioPacket;

    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;J)V

    .line 29
    iget v1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 30
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    return-void
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 36
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->r:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio frame dropped, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HWAudioEncoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 39
    :cond_1
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 41
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 42
    iput-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    :cond_2
    :goto_0
    return v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 31
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 32
    check-cast p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 33
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    .line 34
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    .line 35
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    iput p1, p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->b(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 6
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(Z)V

    .line 9
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-wide v2, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "HWAudioEncoder"

    const-string v2, "Encode frame failed!"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x3e9

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, -0x3e9

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->r:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    :cond_2
    return v0
.end method

.method protected synthetic b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AVPacketBase;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->a(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AudioPacket;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecAudioEncoder;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Z

    move-result p1

    return p1
.end method

.class public Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;
.super Lcom/ksyun/media/streamer/decoder/Decoder;
.source "MediaCodecAudioDecoder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/decoder/Decoder<",
        "Lcom/ksyun/media/streamer/framework/AudioPacket;",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "MediaCodecAudioDecoder"

.field private static final h:I = 0x12001

.field private static final i:I = 0x15001

.field private static final j:I = 0x15002

.field private static final k:I = 0x15003

.field private static final l:I = 0x1500c

.field private static final m:I = 0x1503c

.field private static final w:J = 0x2710L

.field private static final x:I = 0xa


# instance fields
.field private n:Landroid/media/MediaCodec;

.field private o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private p:[Ljava/nio/ByteBuffer;

.field private q:[Ljava/nio/ByteBuffer;

.field private r:Landroid/media/MediaCodec$BufferInfo;

.field private s:I

.field private t:I

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->p:[Ljava/nio/ByteBuffer;

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->q:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->s:I

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->t:I

    .line 6
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->u:I

    .line 7
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->v:I

    return-void
.end method

.method private a(Z)V
    .locals 10

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->r:Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->r:Landroid/media/MediaCodec$BufferInfo;

    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->v:I

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->r:Landroid/media/MediaCodec$BufferInfo;

    iget v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->s:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->r:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-ltz v1, :cond_3

    if-eqz v3, :cond_2

    .line 12
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {p1, v0, v7, v5, v6}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 13
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 15
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->flush()V

    .line 16
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->stop()V

    goto/16 :goto_2

    .line 17
    :cond_2
    iget v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->u:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->u:I

    .line 18
    iget-object v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->q:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    .line 19
    new-instance v4, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v5, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 20
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v2, v4}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 21
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_0

    :cond_3
    const/4 v2, -0x3

    const-string v3, "MediaCodecAudioDecoder"

    if-ne v1, v2, :cond_4

    .line 22
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->q:[Ljava/nio/ByteBuffer;

    const-string v1, "decoder output buffers have changed."

    .line 23
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 24
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode output format changed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    const-string v3, "channel-count"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    .line 27
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    const-string v3, "sample-rate"

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    .line 28
    iget-object v1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    if-nez p1, :cond_6

    .line 29
    iget p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->t:I

    iget v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->u:I

    sub-int v1, p1, v0

    mul-int/lit8 v1, v1, 0x64

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x5

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v1, p1

    iput v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->s:I

    goto :goto_2

    .line 30
    :cond_6
    iget v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->v:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->v:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_7

    const-string p1, "Force shutting down decoder for MAX_EOS_SPINS reached"

    .line 31
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {p1, v0, v7, v5, v6}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 33
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 34
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 35
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->flush()V

    .line 36
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->stop()V

    goto :goto_2

    :cond_7
    const-string v1, "waiting decoder flushing..."

    .line 37
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    .line 38
    iput v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->s:I

    goto/16 :goto_0

    .line 39
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private b(Lcom/ksyun/media/streamer/framework/AudioPacket;)V
    .locals 5

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    .line 5
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AudioPacket;->format:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 6
    iget v2, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    sparse-switch v2, :sswitch_data_0

    const-string v2, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_0
    const-string v2, "audio/opus"

    goto :goto_0

    :sswitch_1
    const-string v2, "audio/flac"

    goto :goto_0

    :sswitch_2
    const-string v2, "audio/ac3"

    goto :goto_0

    :sswitch_3
    const-string v2, "audio/mpeg"

    goto :goto_0

    :sswitch_4
    const-string v2, "audio/amr-wb"

    .line 7
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    iput-object v3, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget v3, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    iget v4, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 9
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    const-string v1, "csd-0"

    .line 10
    invoke-virtual {v2, v1, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 11
    :cond_0
    iget p1, v1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->codecId:I

    const v1, 0x15002

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    const-string v1, "is-adts"

    .line 12
    invoke-virtual {v2, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 13
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v0, v0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->p:[Ljava/nio/ByteBuffer;

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->q:[Ljava/nio/ByteBuffer;

    return-void

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x12001 -> :sswitch_4
        0x15001 -> :sswitch_3
        0x15003 -> :sswitch_2
        0x1500c -> :sswitch_1
        0x1503c -> :sswitch_0
    .end sparse-switch
.end method

.method private c(Lcom/ksyun/media/streamer/framework/AudioPacket;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->t:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->t:I

    const-wide/16 v3, 0x2710

    .line 3
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v6

    if-ltz v6, :cond_4

    .line 4
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v11, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 5
    :goto_0
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->p:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-lez v8, :cond_3

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->p:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v6

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 9
    :cond_3
    iget-object v5, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const-wide/16 v3, 0x3e8

    mul-long v9, v0, v3

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 10
    invoke-direct {p0, v2}, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->a(Z)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->a(Lcom/ksyun/media/streamer/framework/AudioPacket;)I

    move-result p1

    return p1
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/AudioPacket;)I
    .locals 1

    .line 4
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->b(Lcom/ksyun/media/streamer/framework/AudioPacket;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->c(Lcom/ksyun/media/streamer/framework/AudioPacket;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->o:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/MediaCodecAudioDecoder;->n:Landroid/media/MediaCodec;

    return-void
.end method

.method public release()V
    .locals 0

    invoke-super {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->release()V

    return-void
.end method

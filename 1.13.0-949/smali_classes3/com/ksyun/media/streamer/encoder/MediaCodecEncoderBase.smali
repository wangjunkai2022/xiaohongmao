.class public abstract Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;
.super Lcom/ksyun/media/streamer/encoder/Encoder;
.source "MediaCodecEncoderBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        "O:",
        "Lcom/ksyun/media/streamer/framework/AVPacketBase;",
        ">",
        "Lcom/ksyun/media/streamer/encoder/Encoder<",
        "TI;TO;>;"
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String; = "MediaCodecEncoderBase"

.field private static final o:Z = false

.field private static final p:J = 0x2710L

.field private static final q:I = 0xa


# instance fields
.field protected k:Landroid/media/MediaCodec;

.field protected l:Landroid/media/MediaCodec$BufferInfo;

.field protected m:Z

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->m:Z

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->r:I

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(JZ)V
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v2, p1, p2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-wide/16 p1, 0x2710

    .line 18
    iget v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->r:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 p2, 0x0

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AVPacketBase;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    goto/16 :goto_1

    :cond_3
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 22
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, -0x2

    if-ne v1, v2, :cond_5

    .line 23
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_0

    :cond_5
    const-string v2, "MediaCodecEncoderBase"

    if-gez v1, :cond_6

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_6
    aget-object v3, v0, v1

    if-eqz v3, :cond_9

    .line 26
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v5, :cond_8

    .line 27
    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    iget-boolean v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->m:Z

    if-eqz v4, :cond_7

    .line 30
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const-string v4, "Forcing EOS"

    .line 31
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_7
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0, v3, v4}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AVPacketBase;

    move-result-object v3

    .line 33
    invoke-virtual {p0, v3}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 34
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 35
    :cond_8
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->l:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    if-nez p3, :cond_a

    const-string p1, "reached end of stream unexpectedly"

    .line 36
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 37
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "encoderOutputBuffer "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " was null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    :cond_a
    :goto_1
    return-void
.end method

.method protected a(Ljava/nio/ByteBuffer;J)V
    .locals 11

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    if-ltz v5, :cond_1

    .line 7
    aget-object v0, v0, v5

    .line 8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 11
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    const/4 v10, 0x0

    move-wide v8, p2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    :cond_0
    const/4 v10, 0x4

    .line 12
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->k:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v8, p2

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13
    invoke-virtual {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->a(JZ)V

    return-void
.end method

.method protected abstract b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Lcom/ksyun/media/streamer/framework/AVPacketBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Landroid/media/MediaCodec$BufferInfo;",
            ")TO;"
        }
    .end annotation
.end method

.method public signalEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/MediaCodecEncoderBase;->m:Z

    return-void
.end method

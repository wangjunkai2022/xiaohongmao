.class public Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;
.super Lcom/ksyun/media/streamer/encoder/Encoder;
.source "AVCodecAudioEncoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/encoder/Encoder<",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        "Lcom/ksyun/media/streamer/framework/AudioPacket;",
        ">;",
        "Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "AVCodecAudioEncoder"

.field private static final l:Z = false

.field private static final m:I = 0x10

.field private static final n:I = 0x2000


# instance fields
.field private o:Lcom/ksyun/media/streamer/util/FrameBufferCache;

.field private p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

.field private q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    const/16 v1, 0x10

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->o:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 10

    .line 2
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    if-nez v0, :cond_0

    const/16 p1, -0x3ea

    return p1

    .line 3
    :cond_0
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    .line 5
    invoke-virtual {v0, p0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;)V

    .line 6
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->profile:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    .line 7
    iget v1, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    const-string v1, "AVCodecAudioEncoder"

    const-string v2, "set aac_he_v2 for mono audio, fallback to aac_he"

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    move v9, v0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    const/16 v4, 0x100

    iget v5, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->bitrate:I

    iget v6, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    iget v7, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    iget v8, p1, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    invoke-virtual/range {v3 .. v9}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(IIIIII)I

    move-result p1

    return p1
.end method

.method protected a()V
    .locals 10

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a()I

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->b()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move-object v1, p0

    .line 13
    invoke-virtual/range {v1 .. v9}, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->onEncoded(JLjava/nio/ByteBuffer;JJI)V

    return-void
.end method

.method protected a(I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(I)I

    return-void
.end method

.method protected synthetic a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->c(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 20
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->o:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    .line 22
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

    const-string v0, "AVCodecAudioEncoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 23
    :cond_1
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 25
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    iput-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    :cond_2
    :goto_0
    return v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 14
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 15
    check-cast p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 16
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleFormat:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleFmt:I

    .line 17
    iget v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->sampleRate:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->sampleRate:I

    .line 18
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AudioBufFormat;->channels:I

    iput p1, p2, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->channels:I

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->b(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->e:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-wide v2, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget v4, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Ljava/nio/ByteBuffer;JI)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->o:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    :cond_3
    :goto_1
    return v0
.end method

.method protected b()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Ljava/nio/ByteBuffer;JI)I

    return-void
.end method

.method protected c(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->o:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method protected synthetic c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)Z

    move-result p1

    return p1
.end method

.method public onEncoded(JLjava/nio/ByteBuffer;JJI)V
    .locals 7

    and-int/lit8 p4, p8, 0x2

    if-eqz p4, :cond_0

    .line 1
    new-instance p4, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    iget-object p5, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast p5, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    invoke-direct {p4, p5}, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;)V

    iput-object p4, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    .line 2
    iget-object p5, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->p:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {p5}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->c()J

    move-result-wide v0

    iput-wide v0, p4, Lcom/ksyun/media/streamer/framework/AudioCodecFormat;->avCodecParPtr:J

    .line 3
    iget-object p4, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    invoke-virtual {p0, p4}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance p4, Lcom/ksyun/media/streamer/framework/AudioPacket;

    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecAudioEncoder;->q:Lcom/ksyun/media/streamer/framework/AudioCodecFormat;

    move-object v0, p4

    move-object v2, p3

    move-wide v3, p6

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/framework/AudioPacket;-><init>(Lcom/ksyun/media/streamer/framework/AudioCodecFormat;Ljava/nio/ByteBuffer;JJ)V

    .line 5
    iput p8, p4, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 6
    invoke-virtual {p0, p4}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 7
    invoke-virtual {p4}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    return-void
.end method

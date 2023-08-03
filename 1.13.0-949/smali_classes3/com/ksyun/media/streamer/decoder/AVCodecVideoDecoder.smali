.class public Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;
.super Lcom/ksyun/media/streamer/decoder/Decoder;
.source "AVCodecVideoDecoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/decoder/Decoder<",
        "Lcom/ksyun/media/streamer/framework/ImgPacket;",
        "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
        ">;",
        "Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "AVCodecVideoDecoder"


# instance fields
.field private h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

.field private i:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private j:Lcom/ksyun/media/streamer/framework/ImgBufFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 5

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->i:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    invoke-virtual {v2, v0, v1}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->b(J)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected bridge synthetic a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->a(Lcom/ksyun/media/streamer/framework/ImgPacket;)I

    move-result p1

    return p1
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/ImgPacket;)I
    .locals 12

    .line 9
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->getAvPacketOpaque()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 10
    iget-object v5, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    iget-object v6, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    iget-wide v7, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget v9, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 11
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->getAvPacketOpaque()J

    move-result-wide v10

    .line 12
    invoke-virtual/range {v5 .. v11}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->a(Ljava/nio/ByteBuffer;JIJ)I

    move-result p1

    return p1

    .line 13
    :cond_0
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->flush()V

    .line 15
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/decoder/Decoder;->stop()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 4

    .line 2
    check-cast p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->i:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 3
    new-instance p1, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    invoke-direct {p1}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    .line 4
    invoke-virtual {p1, p0}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->a(Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper$a;)V

    .line 5
    new-instance p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->i:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v2, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v0, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->orientation:I

    const/4 v3, 0x3

    invoke-direct {p1, v3, v1, v2, v0}, Lcom/ksyun/media/streamer/framework/ImgBufFormat;-><init>(IIII)V

    iput-object p1, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->j:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    return-void
.end method

.method protected b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->a()V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->b()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    move-object v1, p0

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->onDecoded(Ljava/nio/ByteBuffer;JJI)V

    return-void
.end method

.method protected c()V
    .locals 7

    iget-object v0, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->h:Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/ksyun/media/streamer/decoder/AVDecoderWrapper;->a(Ljava/nio/ByteBuffer;JIJ)I

    return-void
.end method

.method public onDecoded(Ljava/nio/ByteBuffer;JJI)V
    .locals 4

    .line 1
    iget p2, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->e:F

    float-to-double v0, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, v0, v2

    if-eqz p3, :cond_1

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->f:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    .line 3
    iput-wide p4, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->f:J

    goto :goto_0

    :cond_0
    sub-long/2addr p4, v0

    long-to-float p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    div-float/2addr p4, p2

    mul-float p3, p3, p4

    long-to-float p2, v0

    add-float/2addr p3, p2

    float-to-long p4, p3

    .line 4
    :cond_1
    :goto_0
    new-instance p2, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    iget-object p3, p0, Lcom/ksyun/media/streamer/decoder/AVCodecVideoDecoder;->j:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    invoke-direct {p2, p3, p1, p4, p5}, Lcom/ksyun/media/streamer/framework/ImgBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 5
    iput p6, p2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/decoder/Decoder;->mSrcPin:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    return-void
.end method

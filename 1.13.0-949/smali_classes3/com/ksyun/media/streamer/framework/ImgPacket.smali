.class public Lcom/ksyun/media/streamer/framework/ImgPacket;
.super Lcom/ksyun/media/streamer/framework/AVPacketBase;
.source "ImgPacket.java"


# instance fields
.field public format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgPacket;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/framework/AVPacketBase;-><init>(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 12
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 13
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    .line 14
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 15
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    .line 16
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVPacketBase;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 8
    iput-object p2, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    .line 9
    iput-wide p3, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 10
    iput-wide p5, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p7, p8}, Lcom/ksyun/media/streamer/framework/AVPacketBase;-><init>(J)V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/ImgPacket;->format:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 3
    iput-object p2, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->buf:Ljava/nio/ByteBuffer;

    .line 4
    iput-wide p3, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 5
    iput-wide p5, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->dts:J

    return-void
.end method

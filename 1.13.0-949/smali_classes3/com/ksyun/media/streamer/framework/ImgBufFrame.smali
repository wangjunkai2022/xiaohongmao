.class public Lcom/ksyun/media/streamer/framework/ImgBufFrame;
.super Lcom/ksyun/media/streamer/framework/AVBufFrame;
.source "ImgBufFrame.java"


# instance fields
.field public format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 18
    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Lcom/ksyun/media/streamer/util/FrameBufferCache;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>(Lcom/ksyun/media/streamer/util/FrameBufferCache;)V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 3
    iput-object p3, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 4
    iput-wide p4, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgBufFormat;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 8
    iput-object p2, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 9
    iput-wide p3, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AVBufFrame;)V

    .line 12
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/ImgBufFrame;->format:Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 13
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 14
    iget-wide v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 15
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.class public Lcom/ksyun/media/streamer/framework/AudioBufFrame;
.super Lcom/ksyun/media/streamer/framework/AVBufFrame;
.source "AudioBufFrame.java"


# instance fields
.field public format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Lcom/ksyun/media/streamer/util/FrameBufferCache;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>(Lcom/ksyun/media/streamer/util/FrameBufferCache;)V

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 3
    iput-object p3, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 4
    iput-wide p4, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 8
    iput-object p2, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 9
    iput-wide p3, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AVBufFrame;)V

    .line 12
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;->format:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

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

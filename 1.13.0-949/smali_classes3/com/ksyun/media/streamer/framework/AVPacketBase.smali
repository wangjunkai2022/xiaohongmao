.class public Lcom/ksyun/media/streamer/framework/AVPacketBase;
.super Lcom/ksyun/media/streamer/framework/AVFrameBase;
.source "AVPacketBase.java"


# instance fields
.field private a:J

.field private b:I

.field public buf:Ljava/nio/ByteBuffer;

.field public dts:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 4
    iput-wide p1, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V
    .locals 4

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    .line 9
    iget-wide v2, p1, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    .line 10
    invoke-static {v2, v3}, Lcom/ksyun/media/streamer/util/AVPacketUtil;->clone(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getAvPacketOpaque()J
    .locals 2

    iget-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    return-wide v0
.end method

.method public isRefCounted()Z
    .locals 5

    iget-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ref()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    :cond_0
    return-void
.end method

.method public unref()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 2
    iput v4, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->b:I

    if-nez v4, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/util/AVPacketUtil;->free(J)V

    .line 4
    iput-wide v2, p0, Lcom/ksyun/media/streamer/framework/AVPacketBase;->a:J

    :cond_0
    return-void
.end method

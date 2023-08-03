.class public Lcom/ksyun/media/streamer/framework/AVBufFrame;
.super Lcom/ksyun/media/streamer/framework/AVFrameBase;
.source "AVBufFrame.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

.field public buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/framework/AVBufFrame;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    .line 6
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 8
    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->ref(Ljava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/FrameBufferCache;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-void
.end method


# virtual methods
.method public isRefCounted()Z
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized ref()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object v1, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->ref(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unref()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->a:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object v1, p0, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->unref(Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

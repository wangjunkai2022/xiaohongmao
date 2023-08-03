.class public Lcom/ksyun/media/streamer/filter/audio/b;
.super Lcom/ksyun/media/streamer/framework/SrcPin;
.source "AudioBufSrcPin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SrcPin<",
        "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SrcPin;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 2
    iget p1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v0, 0x10000

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V
    .locals 5
    .param p1    # Lcom/ksyun/media/streamer/framework/SinkPin;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->d:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    check-cast v0, Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 3
    iget v0, v1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    const/high16 v2, 0x10000

    or-int/2addr v0, v2

    iput v0, v1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/SrcPin;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/framework/SinkPin;

    .line 6
    invoke-virtual {v2, v1}, Lcom/ksyun/media/streamer/framework/SinkPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/ksyun/media/streamer/framework/SrcPin;->disconnect(Lcom/ksyun/media/streamer/framework/SinkPin;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/audio/b;->a(Lcom/ksyun/media/streamer/framework/AudioBufFrame;)V

    return-void
.end method

.class public abstract Lcom/ksyun/media/streamer/framework/SinkPin;
.super Ljava/lang/Object;
.source "SinkPin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ksyun/media/streamer/framework/AVFrameBase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mIsConnected:Z

.field protected mSrcPins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mIsConnected:Z

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mSrcPins:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mIsConnected:Z

    return v0
.end method

.method public declared-synchronized onConnected()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnected(Lcom/ksyun/media/streamer/framework/SrcPin;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mSrcPins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mSrcPins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;->onConnected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDisconnect(Lcom/ksyun/media/streamer/framework/SrcPin;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "TT;>;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mSrcPins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mSrcPins:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p2}, Lcom/ksyun/media/streamer/framework/SinkPin;->onDisconnect(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDisconnect(Z)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/framework/SinkPin;->mIsConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract onFormatChanged(Ljava/lang/Object;)V
.end method

.method public abstract onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

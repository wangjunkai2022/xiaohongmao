.class Lcom/ksyun/media/streamer/publisher/Publisher$4;
.super Landroid/os/Handler;
.source "Publisher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/publisher/Publisher;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/publisher/Publisher;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/publisher/Publisher;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object v0, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgPacket;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doAddVideoTrack(Lcom/ksyun/media/streamer/framework/ImgPacket;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(I)V

    goto/16 :goto_1

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object v0, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ksyun/media/streamer/framework/AudioPacket;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doAddAudioTrack(Lcom/ksyun/media/streamer/framework/AudioPacket;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(I)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->doRelease()V

    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_1

    .line 10
    :pswitch_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {p1, v3}, Lcom/ksyun/media/streamer/publisher/Publisher;->doWriteFrame(Z)I

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(I)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "Publisher"

    const-string v0, "Please start publisher before encoder, or enable auto work mode!"

    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doWriteFrame(Z)I

    goto/16 :goto_1

    .line 15
    :pswitch_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v2, :cond_7

    .line 16
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->b(Lcom/ksyun/media/streamer/publisher/Publisher;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/publisher/Publisher;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->b(Lcom/ksyun/media/streamer/publisher/Publisher;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 20
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->c(Lcom/ksyun/media/streamer/publisher/Publisher;)Lcom/ksyun/media/streamer/util/FrameBufferCache;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->c(Lcom/ksyun/media/streamer/publisher/Publisher;)Lcom/ksyun/media/streamer/util/FrameBufferCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->clear()V

    .line 22
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/util/FrameBufferCache;)Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->d(Lcom/ksyun/media/streamer/publisher/Publisher;)Lcom/ksyun/media/streamer/util/FrameBufferCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->d(Lcom/ksyun/media/streamer/publisher/Publisher;)Lcom/ksyun/media/streamer/util/FrameBufferCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->clear()V

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->b(Lcom/ksyun/media/streamer/publisher/Publisher;Lcom/ksyun/media/streamer/util/FrameBufferCache;)Lcom/ksyun/media/streamer/util/FrameBufferCache;

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->e(Lcom/ksyun/media/streamer/publisher/Publisher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->e(Lcom/ksyun/media/streamer/publisher/Publisher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 28
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doStop()V

    .line 30
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 32
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 33
    :pswitch_5
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object v0, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_7

    .line 34
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object v0, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 35
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iput-boolean v3, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioHeaderGot:Z

    .line 36
    iput-boolean v3, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoHeaderGot:Z

    .line 37
    iput-boolean v3, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioTrackAdded:Z

    .line 38
    iput-boolean v3, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoTrackAdded:Z

    .line 39
    iput-boolean v3, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mAudioFrameGot:Z

    .line 40
    iput-boolean v3, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mVideoKeyFrameGot:Z

    .line 41
    invoke-static {v0, v3}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/publisher/Publisher;Z)Z

    .line 42
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0, v3}, Lcom/ksyun/media/streamer/publisher/Publisher;->b(Lcom/ksyun/media/streamer/publisher/Publisher;Z)Z

    .line 43
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->doStart(Ljava/lang/String;)I

    move-result p1

    .line 44
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    iget-object v0, v0, Lcom/ksyun/media/streamer/publisher/Publisher;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 45
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->getAutoWork()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-static {v0}, Lcom/ksyun/media/streamer/publisher/Publisher;->a(Lcom/ksyun/media/streamer/publisher/Publisher;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    :cond_5
    if-nez p1, :cond_6

    .line 47
    iget-object p1, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {p1, v1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postInfo(I)V

    goto :goto_1

    .line 48
    :cond_6
    iget-object v0, p0, Lcom/ksyun/media/streamer/publisher/Publisher$4;->a:Lcom/ksyun/media/streamer/publisher/Publisher;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/publisher/Publisher;->postError(I)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/ksyun/media/streamer/encoder/Encoder$4;
.super Landroid/os/Handler;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/Encoder;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/Encoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/Encoder;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget v4, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v4}, Lcom/ksyun/media/streamer/encoder/Encoder;->getAutoWork()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string p1, "Encoder"

    const-string v0, "end of stream, flushing..."

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->b()V

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->stop()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVFrameBase;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVFrameBase;->ref()V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I

    move-result v0

    .line 11
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    long-to-int v2, v4

    .line 12
    iget-object v3, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget v3, v3, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    if-ne v3, v1, :cond_3

    .line 13
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setVideoEncodeDelay(I)V

    :cond_3
    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVFrameBase;->isRefCounted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVFrameBase;->unref()V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(I)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/AVFrameBase;->unref()V

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/framework/AVFrameBase;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    .line 20
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    if-ne p1, v1, :cond_8

    .line 22
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setEncodedFrames(J)V

    goto :goto_0

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 25
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 26
    invoke-static {}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->getInstance()Lcom/ksyun/media/streamer/logstats/StatsLogReport;

    move-result-object p1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/logstats/StatsLogReport;->setEncodeDroppedFrameCount(I)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    const/4 v5, 0x5

    if-eq v0, v4, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    goto/16 :goto_1

    .line 3
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;

    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getUseSyncMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 5
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_1

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v4, :cond_9

    .line 8
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 9
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->b()V

    .line 10
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(I)V

    goto/16 :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eq p1, v4, :cond_4

    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ne p1, v5, :cond_5

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a()V

    .line 18
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1, v4, v3}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(II)V

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {p1, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {p1, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/framework/AVPacketBase;)Lcom/ksyun/media/streamer/framework/AVPacketBase;

    goto :goto_1

    .line 22
    :cond_6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_8

    .line 23
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 24
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 25
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 26
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/framework/AVFrameBase;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    .line 27
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 28
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/framework/AVPacketBase;)Lcom/ksyun/media/streamer/framework/AVPacketBase;

    .line 29
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_7

    .line 30
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 31
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1, v1, v3}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(II)V

    goto :goto_0

    .line 32
    :cond_7
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 33
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->b(I)V

    .line 34
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getAutoWork()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getUseSyncMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 35
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$4;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    :cond_9
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/ksyun/media/streamer/encoder/Encoder$a;
.super Lcom/ksyun/media/streamer/framework/SinkPin;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ksyun/media/streamer/encoder/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/framework/SinkPin<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/Encoder;


# direct methods
.method private constructor <init>(Lcom/ksyun/media/streamer/encoder/Encoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-direct {p0}, Lcom/ksyun/media/streamer/framework/SinkPin;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ksyun/media/streamer/encoder/Encoder;Lcom/ksyun/media/streamer/encoder/Encoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder$a;-><init>(Lcom/ksyun/media/streamer/encoder/Encoder;)V

    return-void
.end method


# virtual methods
.method public onDisconnect(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->release()V

    :cond_0
    return-void
.end method

.method public onFormatChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getAutoWork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getUseSyncMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->start()V

    .line 6
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->getUseSyncMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->g:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 9
    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->isEncoding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    if-nez v1, :cond_2

    .line 3
    iget-object v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget v1, v1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 4
    iget-wide v3, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 5
    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->d(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/util/c;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v4}, Lcom/ksyun/media/streamer/util/c;->a(FJ)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->d(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/util/c;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/ksyun/media/streamer/util/c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget v1, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->a:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_3

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getUseSyncMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_5

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v5, :cond_7

    .line 14
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->i:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x1

    :cond_7
    :goto_2
    if-eqz v4, :cond_8

    .line 15
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$a;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object p1, p1, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_8
    return-void
.end method

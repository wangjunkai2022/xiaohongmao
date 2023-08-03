.class Lcom/ksyun/media/streamer/encoder/Encoder$1;
.super Ljava/util/TimerTask;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ksyun/media/streamer/encoder/Encoder;->startRepeatLastFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ksyun/media/streamer/encoder/Encoder;


# direct methods
.method constructor <init>(Lcom/ksyun/media/streamer/encoder/Encoder;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v0, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v2, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-static {v0}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/encoder/Encoder;)Lcom/ksyun/media/streamer/framework/AVFrameBase;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder$1;->a:Lcom/ksyun/media/streamer/encoder/Encoder;

    iget-object v1, v1, Lcom/ksyun/media/streamer/encoder/Encoder;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method
